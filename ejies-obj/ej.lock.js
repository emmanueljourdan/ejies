/*
	ej.lock.js by Emmanuel Jourdan, Ircam Ñ 07 2004
	lock/unlock the actual patcher

	$Revision: 1.5 $
	$Date: 2006/08/01 12:39:34 $
 */

// global code
inlets = 1;
outlets = 1;
setinletassist(0, "0=lock, 1=unlock, ...");
setoutletassist(0, "dumpout");

var IsRuntime;

if (max.version < 455)
	ejies.error(this, "MaxMSP 4.5.5 or higher is required.");

function runtime_test()
{
	IsRuntime = max.isruntime;
	
	if (IsRuntime)
		ejies.error(this, "disabled while working in a standalone/runtime environement.");
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

runtime_test();

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");