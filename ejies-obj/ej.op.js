/*
	ej.op.js by Emmanuel Jourdan, Ircam Ñ 09 2004
	open patchers

	$Revision: 1.5 $
	$Date: 2006/08/01 12:39:34 $
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
	this.patcher.applydeep(iterons);
}

function iterons(MyObj)
{
	var p = MyObj.patcher;
	if (MyObj.patcher.name != LastSubPatcher) {
		if (p.name != "patcher") {
			var TempPatcherName = p.name;
			if (CaseState) {
				if (SearchState) {
					if (testinput(re.toLowerCase(), TempPatcherName.toLowerCase()))
						MyObj.patcher.front();
				} else {
					if (re.toLowerCase() == TempPatcherName.toLowerCase())
						MyObj.patcher.front();
				}	
			} else {
				if (SearchState) {
					if (testinput(re, TempPatcherName))
						MyObj.patcher.front();
				} else {
					if (re == TempPatcherName)
						MyObj.patcher.front();
				}	
			}			
		}	
	}
	LastSubPatcher = p.name;
	return true;
}
iterons.local=1; // keep private

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