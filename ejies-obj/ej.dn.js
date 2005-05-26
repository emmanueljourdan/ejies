/*
	ej.dn.js by Emmanuel Jourdan, Ircam Ñ 09 2004
	display named objets (open the subpatcher)
 */

// global code
var ejies = EjiesUtils();	// lien vers ejies-extension.js
var CopyRight = new Global("EjiesCopyRight");	// variable globale utilisŽe pour le copyright
CopyRight["dn"] = 0;							// init


inlets = 1;
outlets = 0;
setinletassist(0, "symbol: Name of the named object you want to find")
setoutletassist(0, "Don't expect anything comming here :-)");

var str, re;
var SearchState = 0;

if (jsarguments.length > 1) SearchState = jsarguments[1];
if (jsarguments.length > 2) post("¥ error: ej.dn.js: too many arguments\n");

function loadbang()
{
	if ( ! CopyRight["dn"]) {
		post("ej.dn.js: version", ejies.VersNum, ejies.VersDate);
		post("\n     by Emmanuel Jourdan\, Ircam\n");
		CopyRight["dn"] = 1 ;
	}
}

function searchmode(v)
{
	SearchState = v;
}

function anything()
{
	re = messagename;
	if (SearchState)
		this.patcher.applydeep(cherchecontient);
	else
		this.patcher.applydeep(chercheexact);
}

function chercheexact(MyObj)
{
	if (re == MyObj.varname) {
		MyObj.patcher.front();
	}
	return true;
}
chercheexact.local = 1; // keep private

function cherchecontient(MyObj)
{
	if (testinput(re, MyObj.varname)) {
		MyObj.patcher.front();
	}
	return true;	
}
cherchecontient.local=1; // keep private

function testinput(re, str)
{
	if (str.search(re) != -1)
		return 1 ;	// it contains
	else
		return 0 ;	// it does not contain;
}
testinput.local = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");