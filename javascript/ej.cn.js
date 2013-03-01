/*
	ej.cn.js (change name) by Emmanuel Jourdan, e--j dev - 12 2004
	Allows you to rename any named object.

	$Revision: 1.5 $
	$Date: 2006/08/01 12:39:34 $
 */

// global code
inlets = 1;
outlets = 0;
setinletassist(0, "symbol / list");
setoutletassist(0, "nothing here...");


var OldNomObjet;
var NewNomObjet;

if (jsarguments.length == 2)
	OldNomObjet = jsarguments[1];
if (jsarguments.length > 2)
	ejies.error(this, "extra arguments...");

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

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");