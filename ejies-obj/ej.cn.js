/*
	ej.cn.js (change name) by Emmanuel Jourdan, Ircam - 12 2004
	Allows you to rename any named object.
 */

// global code

var ejies = EjiesUtils();	// lien vers ejies-extension.js
var CopyRight = new Global("EjiesCopyRight");	// variable globale utilisŽe pour le copyright
CopyRight["cn"] = 0; 						// init

inlets = 1;
outlets = 0;
setinletassist(0, "symbol / list");
setoutletassist(0, "nothing here...");


var OldNomObjet;
var NewNomObjet;

if (jsarguments.length == 2)
OldNomObjet = jsarguments[1];
if (jsarguments.length > 2)
post("¥ error: ej.cn.js extra arguments\n");


// affiche le copyright une seule fois, gr‰ce ˆ la variable globale
function loadbang(a)
{
	if ( ! CopyRight["cn"]) {
		post("ej.cn.js: version", ejies.VersNum, ejies.VersDate);
		post("\n     by Emmanuel Jourdan\, Ircam Ñ \n");
		CopyRight["cn"] = 1 ;
	}	
}


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