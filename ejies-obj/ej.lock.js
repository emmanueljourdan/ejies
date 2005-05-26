/*
	ej.lock.js by Emmanuel Jourdan, Ircam Ñ 07 2004
	lock/unlock the actual patcher
 */

// global code
var ejies = EjiesUtils();	// lien vers ejies-extension.js
var CopyRight = new Global("EjiesCopyRight");	// variable globale utilisŽe pour le copyright
CopyRight["lock"] = 0;							// init
inlets = 1;
outlets = 1;
setinletassist(0, "0=lock, 1=unlock, ...");
setoutletassist(0, "dumpout");

var IsRuntime;

function loadbang()
{
	if ( ! CopyRight["lock"] ) {
		post("ej.lock.js: version", ejies.VersNum, ejies.VersDate);
		post("\n     by Emmanuel Jourdan\, Ircam\n");
		CopyRight["4m"] = 1 ;
	}
}

function runtime_test()
{
	if (max.version >= 452) {
		IsRuntime = max.isruntime;
		if (IsRuntime)
			post("¥ error: ej.lock.js disabled while working in a standalone/runtime environement.\n");
		}
	else
        post("ej.lock.js requires Max 4.5.2 or higher to work\n");
}
runtime_test.local = 1;

function msg_int(a)
{
	if (! IsRuntime)
		if ( a == 0 || a == 1) this.patcher.locked = a;
}

function bang()
{
	if (! IsRuntime)
		this.patcher.locked = 1 - this.patcher.locked; // inverse
}

function getlock()
{
	outlet(0, "lock",this.patcher.locked);
}


if (max.os != "windows")
	runtime_test() // pour voir si on est en mode runtime/standalone

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");