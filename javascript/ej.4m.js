/*
	ej.4m.js by Emmanuel Jourdan, e--j dev — 06 2004
	output the min, median, mean, maximum on a int/float stream
 
	$Revision: 1.9 $
	$Date: 2008/03/10 11:41:00 $
*/

// global code
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

// argument s'il est connu, spécifie la taille de fenêtre
if (jsarguments.length > 1 ) {
	if (typeof jsarguments[1] == "number")
		window( jsarguments[1] );
	}
if (jsarguments.length > 2) {
	if (typeof jsarguments[2] == "number" && jsarguments[2] == 1)
		VerboseOrNot = 1;
	}
if (jsarguments.length > 3)
	ejies.error(this, "extra arguments...");

function loadbang()
{
	post("ej.4m.js is quite slow... you can now use the mxj external called ej.mmmm instead.\n");
}

function msg_float(nombre)
{
	a.shift();			// supprime le premier élément
	a.push(nombre);	// ajoute l'élément à la fin de 'a'
	sortie();
}
msg_float.immediate = 1;

function bang()
{
	if (WindowReset < a.length && WindowReset > 0) {
		// s'il y a moins d'éléments que la taille de fenêtre, mais qu'il y en a au minimum 1.
		var OldWindowSize = a.length;
		// ne pas utiliser a.length puisque ça change au cours de la boucle for !!
		for (i = 0 ; i < (OldWindowSize - WindowReset) ; i++ ) {
			a.shift();
		}
		ejies.error(this, "using temp window size of ", a.length, " items.");
		sortie();
		window(OldWindowSize);
	} else if (WindowReset >= a.length) { // il y a suffisament d'élément.
		sortie();
	}
}

function anything()
{
	ejies.error(this, "doesn't understand", messagename);
}

// change la taille de la fenêtre d'analyse
function window(l)
{
	a = new Array(Math.max(3,l));	// minimum 3
	WindowReset = 0;					// le buffer est vide...
}

function reset()			// reset: vide le buffer
{
	window(a.length);
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
	b = a.slice(0);

	// la sortie ne fonctionne que quand le buffer a été rempli
	if (++WindowReset >= b.length) {
		// ordre décroissant des outlets pour permettre la sortie de gauche à droite
		if (VerboseOrNot) outlet(4, b);			// listes des valeurs analysées
		b.sort(function(a,b) { return a-b; });	// tri numérique croissant utilisant une fonction littérale
		outlet(3, b[b.length - 1]);				// max
		outlet(2, somme()/a.length);			// moyenne
		outlet(1, b[Math.floor(b.length/2)]);	// valeur médianne (Math.floor ne prend que la partie entière)
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

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");