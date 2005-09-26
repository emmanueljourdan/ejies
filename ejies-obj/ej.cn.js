/*
	ej.cn.js (change name) by Emmanuel Jourdan, Ircam - 12 2004
	Allows you to rename any named object.

	$Revision: 1.3 $
	$Date: 2005/09/26 15:15:57 $
 */

// global code

var ejies = EjiesUtils();	// lien vers ejies-extension.js

inlets = 1;
outlets = 0;
setinletassist(0, "symbol / list");
setoutletassist(0, "nothing here...");


var OldNomObjet;
var NewNomObjet;

if (jsarguments.length == 2)
	OldNomObjet = jsarguments[1];
if (jsarguments.length > 2)
	perror("extra arguments...");

function anything()
{
	var SourceDestination = arrayfromargs(messagename, arguments);
	OldNomObjet = SourceDestination[0];
	NewNomObjet = SourceDestination[1];
	this.patcher.apply(ReplaceName);
}

function ReplaceName(MyObj)
{
	if (MyObj.varname == OldNomObjet)
		MyObj.varname = NewNomObjet;
	return true;
}

function perror()
{
	ejies.scriptname = "ej.cn.js";
	ejies.perror(arguments);
}
perror.local = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");