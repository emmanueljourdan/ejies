/*
	ej.dn.js by Emmanuel Jourdan, e--j dev — 09 2004
	display named objets (open the subpatcher)

	$Revision: 1.6 $
	$Date: 2008/03/10 11:41:00 $
 */

// global code
inlets = 1;
outlets = 0;
setinletassist(0, "symbol: Name of the named object you want to find")
setoutletassist(0, "Don't expect anything comming here :-)");

var str, re;
var SearchState = 0;

if (jsarguments.length > 1) SearchState = jsarguments[1];
if (jsarguments.length > 2) ejies.error(this, "too many arguments...");

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