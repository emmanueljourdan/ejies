/*
	ej.cc.js (change color) by Emmanuel Jourdan, e--j dev - 01 2005
	Allows you to rename any named object.
 
	$Revision: 1.12 $
	$Date: 2009/11/04 16:52:31 $
*/

/*
	TODO there might be a way to get the default color by creating an object, and getting his bordercolor attribute values.
	Note that in 5.0.4 getattr is not able to get jbox attributes
*/

// global code
inlets = 1;
outlets = 0;
setinletassist(0, "symbol");
setoutletassist(0, "nothing here...");

var Couleur;
var NomObjet;
var GlobalState = 1;

if (jsarguments.length == 2) {
	if (jsarguments[1] == 0)
		GlobalState = 0;
	else if (jsarguments[1] == 1 ) { ; }	// GlobalState reste à 1
	else if (jsarguments[1] == "ej")
		defaults(); 						// mes paramètres
	else
		ejies.error(this, "wrong argument");
}
if (jsarguments.length > 2)
	ejies.error(this, "extra arguments...");

function defaults()
{
	var GlobalStateTmp = GlobalState;      // sauvegarde la valeur actuelle
	global(1);
	
	resetall();
	InternalExecuteOperation("send",6);
	InternalExecuteOperation("receive",6);
	InternalExecuteOperation("send~",6);
	InternalExecuteOperation("receive~",6);
	InternalExecuteOperation("value",6);
	InternalExecuteOperation("forward",6);
	InternalExecuteOperation("pvar",6);
	InternalExecuteOperation("coll",14);
	InternalExecuteOperation("patcher",10);
	InternalExecuteOperation("poly~",5);
	InternalExecuteOperation("loadbang",4);
	InternalExecuteOperation("loadmess",4);
	InternalExecuteOperation("closebang",4);
	InternalExecuteOperation("thispatcher",4);
	InternalExecuteOperation("pattr",12);
	InternalExecuteOperation("pattrstorage",12);
	InternalExecuteOperation("autopattr",12);
	
	GlobalState = GlobalStateTmp;          // restauration de la valeur
}

function anything()
{
	var SourceDestination = arrayfromargs(messagename, arguments);
	NomObjet = SourceDestination[0];
	Couleur = SourceDestination[1];

	if (typeof NomObjet == "string" && typeof Couleur == "number")
		ExecuteOperation(ChangeColor);
	else
		ejies.error(this, "wrong argument, must be [symbol] [int]");
}

function msg_int(i)
{
	// special case for the "int" object
	InternalExecuteOperation("int", i);
}

function ExecuteOperation(fn)
{
	if (GlobalState)
		this.patcher.applydeep(fn);
	else
		this.patcher.apply(fn);
}
ExecuteOperation.local = 1;

function ChangeColor(MyObj)
{
	if (MyObj.maxclass == NomObjet && MyObj.maxclass != "patcher" && !MyObj.understands("color") &&  understandsBordercolor(MyObj)) {
		if (Couleur)
			MyObj.colorindex = Couleur;
		else // Couleur == 0
			MyObj.message("sendbox", "bordercolor", 0.8, 0.84, 0.7, 1.);	// sending Max 5 default color. There's no real way to get the default.
	}
	return true;	// pour que l'iteration continue
}
ChangeColor.local = 1;

function resetall()
{
	ExecuteOperation(ResetAllColors);
}

function ResetAllColors(MyObj)
{
	if (!MyObj.understands("color") && understandsBordercolor(MyObj)) {
		if (MyObj.maxclass == "patcher")
			MyObj.colorindex = 10;	// probably not ideal, but there's no way to send the color message ta a patcher (newobj) AFAIK
		else
			MyObj.message("sendbox", "bordercolor", 0.8, 0.84, 0.7, 1.);
	}
	return true;
}
ResetAllColors.local = 1;

function global(a)
{
	if (a == 1 || a == 0)
		GlobalState = a;
	else
		ejies.error(this, "wrong argument for message global (1 or 0 expected)");
}

function InternalExecuteOperation(a, b)
{
	NomObjet = a;
	Couleur = b;
	this.patcher.applydeep(ChangeColor);
}
InternalExecuteOperation.local = 1;

function understandsBordercolor(MyObj)
{
	// identify UI objects who don't understand bordercolor to suppress tha worrying error post in the max window
	if (	MyObj.maxclass == "inlet"		|
			MyObj.maxclass == "outlet"		|
			MyObj.maxclass == "playbar"		|
			MyObj.maxclass == "matrixctrl"	|
			MyObj.maxclass == "pictctrl"	|
			MyObj.maxclass == "pictslider"	|
			MyObj.maxclass == "ezdac~"		|
			MyObj.maxclass == "ezadc~"		|
			MyObj.maxclass == "fpic"		|
			MyObj.maxclass == "gswitch"		|
			MyObj.maxclass == "gswitch2"	|
			MyObj.maxclass == "hint"		|
			MyObj.maxclass == "imovie"		|
			MyObj.maxclass == "jit.pwindow"	|
			MyObj.maxclass == "jit.scope"	|
			MyObj.maxclass == "jweb"		|
			MyObj.maxclass == "lcd"			|
			MyObj.maxclass == "led"			|
			MyObj.maxclass == "radiogroup"	|
			MyObj.maxclass == "suckah"		|
			MyObj.maxclass == "swatch"		|
			MyObj.maxclass == "ubutton")
		return 0;
	else 
		return 1;
}

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");