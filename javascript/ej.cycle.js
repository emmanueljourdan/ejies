/*
	ej.cycle.js by Emmanuel Jourdan, e--j dev - 02 2004
	send any type of data to the next outlet
 
	$Revision: 1.6 $
	$Date: 2008/03/10 11:41:00 $
*/

// global code
var NbOutlets = 1;
const MAXINOUT = 64;	// nombre maximum de sorties
var WhichOutlet = 0; 	// sur quelle outlet on envoie les informations...
var SignalWarning = 1;	// pour afficher un message d'erreur quand il y a du signal qui arrive

// traitement des arguments
if (jsarguments.length>1 && typeof jsarguments[1] == "number")
	NbOutlets = Math.min(jsarguments[1],MAXINOUT);	// outlet (minimum 1, max 64)
if (jsarguments.length>2)
	ejies.error(this, "extra arguments...");

inlets = 1;
outlets = NbOutlets;

// assistance
setinletassist(0, "Data to send to successive outlets");
for ( i=0 ; i < NbOutlets ; i++) { setoutletassist(i,"outlet " + (i+1)); }

function set(v)
{
	if (typeof v == "number")
		WhichOutlet = ejies.clip(v,1, NbOutlets) - 1; // depuis l'extérieur il s'agit des entrées 1 à NbOutlets
	else
		ejies.error(this, "wrong argument for message set");
}

function signal()
{
	if (SignalWarning)
		ejies.error(this, "doesn't work with signal");

	SignalWarning = 0;
}

function anything()
{
	outlet((WhichOutlet++ % NbOutlets), arrayfromargs(messagename, arguments));
}
anything.immediate = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");