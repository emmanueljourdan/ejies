/*
	ej.4m.js by Emmanuel Jourdan, Ircam � 06 2004
	output the min, median, mean, maximum on a int/float stream
 
	$Revision: 1.5 $
	$Date: 2006/01/03 17:02:49 $
*/

// global code
var ejies = new EjiesUtils();				// lien vers ejies-extension.js

inlets = 1;
outlets = 5;
setinletassist(0, "int/float");
setoutletassist(0, "minimum");
setoutletassist(1, "median");
setoutletassist(2, "mean");
setoutletassist(3, "maximum");
setoutletassist(4, "list of values / dumpout");

var WindowReset = 0;
var a = new Array(5);
var b = new Array(5);
var VerboseOrNot = 0;
var SommeDesValeurs = 0;
var i;

// argument s'il est connu, sp�cifie la taille de fen�tre
if (jsarguments.length > 1 ) {
	if (typeof jsarguments[1] == "number")
		window( jsarguments[1] );
	}
if (jsarguments.length > 2) {
	if (typeof jsarguments[2] == "number" && jsarguments[2] == 1)
		VerboseOrNot = 1;
	}
if (jsarguments.length > 3)
	perror("extra arguments...");

function loadbang()
{
	post("ej.4m.js is quite slow... you can now use the mxj external called ej.mmmm instead.\n");
}

function msg_float(nombre)
{
	a.shift();			// supprime le premier �l�ment
	a.push(nombre);	// ajoute l'�l�ment � la fin de 'a'
	sortie();
}
msg_float.immediate = 1;

function bang()
{
	if (WindowReset < a.length && WindowReset > 0) {
		// s'il y a moins d'�l�ments que la taille de fen�tre, mais qu'il y en a au minimum 1.
		var OldWindowSize = a.length;
		// ne pas utiliser a.length puisque �a change au cours de la boucle for !!
		for (i = 0 ; i < (OldWindowSize - WindowReset) ; i++ ) {
			a.shift();
		}
		perror("using temp window size of ", a.length, " items.");
		sortie();
		window(OldWindowSize);
	} else if (WindowReset >= a.length) { // il y a suffisament d'�l�ment.
		sortie();
	}
}

function anything()
{
	perror("doesn't understand ", messagename);
}

// change la taille de la fen�tre d'analyse
function window(l)
{
	a = new Array(Math.max(3,l));	// minimum 3
	WindowReset = 0;					// le buffer est vide...
}

function reset()			// reset: vide le buffer
{
	window(a.length);
	if (VerboseOrNot)
		perror("buffer is now empty.");
}

function clear() { reset() ;} // alias

function somme()
{
	SommeDesValeurs = 0;
	for (i = 0; i< a.length; i++) {
		SommeDesValeurs += a[i]/* .valueOf() */;
	}
	return SommeDesValeurs;
}
somme.local = 1; // on ne peut pas appeler la fonction depuis max

function verbose(a)
{
	VerboseOrNot = a;
}

function sortie(v)
{
	// copie de a dans b
	b = new Array(a.length);
	for (i=0 ; i < b.length ; i++) {
		b[i] = a[i];
	}
	// la sortie ne fonctionne que quand le buffer a �t� rempli
	if (++WindowReset >= b.length) {
		// ordre d�croissant des outlets pour permettre la sortie de gauche � droite
		if (VerboseOrNot) outlet(4, b);			// listes des valeurs analys�es
		b.sort(function(a,b) { return a-b; });	// tri num�rique croissant utilisant une fonction litt�rale
		outlet(3, b[b.length - 1]);				// max
		outlet(2, somme()/a.length);			// moyenne
		outlet(1, b[Math.floor(b.length/2)]);	// valeur m�dianne (Math.floor ne prend que la partie enti�re)
		outlet(0, b[0]);						// minimum
	}
}
sortie.local = 1; // on ne peut pas appeler la fonction depuis max

function getwindow()
{
	outlet(4, "window", a.length);
}

function getverbose()
{
	outlet(4, "verbose", VerboseOrNot);
}

function perror()
{
	ejies.scriptname = "ej.4m.js";
	ejies.perror(arguments);
}
perror.local = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");