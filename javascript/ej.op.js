/*
	ej.op.js by Emmanuel Jourdan, e--j dev — 09 2004
	open patchers

	$Revision: 1.7 $
	$Date: 2008/03/10 11:41:00 $
 */

// global code
inlets = 1;
outlets = 1;
setinletassist(0, "symbol: Name of the patcher you want to open")
setoutletassist(0, "Don't expect anything comming here :-)");

var str;
var re;
var LastSubPatcher;
var CaseState = 0;
var SearchState = 0;

if (jsarguments.length > 1) SearchState = jsarguments[1];
if (jsarguments.length > 2) CaseState = jsarguments[2];
if (jsarguments.length > 3 ) ejies.error(this, "too many arguments...");

function anything()
{
	openpatcher(messagename);
}

function casemode(v)
{
	CaseState = v; 
}

function searchmode(v)
{
	SearchState = v;
}

function openpatcher(v)
{
	re = v;
	
	if (CaseState && SearchState)
		this.patcher.applydeep(iteronsCasePartial);
	else if (CaseState && ! SearchState)
		this.patcher.applydeep(iteronsCase);
	else if (! CaseState && SearchState)
		this.patcher.applydeep(iteronsPartial);
	else
		this.patcher.applydeep(iterons);
}


function iteronsCasePartial(MyObj)
{
	var p = MyObj.patcher;
	if (MyObj.patcher.name != LastSubPatcher) {
		if (p.name != "patcher") {
			if (testinput(re.toLowerCase(), p.name.toLowerCase())) {
				MyObj.patcher.front();
				return false;
			}
		}	
	}

	LastSubPatcher = p.name;
	return true;
}
iteronsCasePartial.local=1; // keep private

function iteronsCase(MyObj)
{
	var p = MyObj.patcher;
	if (MyObj.patcher.name != LastSubPatcher) {
		if (p.name != "patcher") {
			if (re.toLowerCase() == p.name.toLowerCase()) {
				MyObj.patcher.front();
				return false
			}	
		}	
	}
	LastSubPatcher = p.name;
	return true;
}
iteronsCase.local=1; // keep private

function iteronsPartial(MyObj)
{
	var p = MyObj.patcher;
	if (MyObj.patcher.name != LastSubPatcher) {
		if (p.name != "patcher") {
			if (testinput(re, p.name)) {
				MyObj.patcher.front();
				return false;
			}
		}	
	}
	LastSubPatcher = p.name;
	return true;

}
iteronsPartial.local = 1; // keep private

function iterons(MyObj)
{
	var p = MyObj.patcher;
	if (MyObj.patcher.name != LastSubPatcher) {
		if (p.name != "patcher") {
			if (re == p.name) {
				MyObj.patcher.front();
				return false;
			}
		}	
	}
	LastSubPatcher = p.name;
	return true;

}
iterons.local = 1; // keep private

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