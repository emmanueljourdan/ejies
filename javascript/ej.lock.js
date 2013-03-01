/*
	ej.lock.js by Emmanuel Jourdan, e--j dev — 07 2004
	lock/unlock the actual patcher

	$Revision: 1.7 $
	$Date: 2008/03/10 11:41:00 $
 */

// global code
inlets = 1;
outlets = 1;
setinletassist(0, "0=lock, 1=unlock, poll/nopoll");
setoutletassist(0, "dumpout");

var IsRuntime;
var lastLockState;
var pollTsk = new Task(checkLocked, this);

if (max.version < 455)
	ejies.error(this, "MaxMSP 4.5.5 or higher is required.");

function quiteLoadbang()
{
	if (jsarguments.length > 1) {
		if (typeof(jsarguments[1]) == "number")
			poll(jsarguments[1]);
	}
}
quiteLoadbang.local = 1;

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

function poll()
{
	lastLockState = -1;
	
	// the optional argument defines the polling interval
	if (arguments.length != 0 && typeof(arguments[0]) == "number")
		pollTsk.interval = arguments[0] > 50 ? arguments[0] : 50;
	else
		pollTsk.interval = 100;
	
	pollTsk.repeat();
}

function nopoll()
{
	pollTsk.cancel();
}

function checkLocked()
{
	if (this.patcher.locked != lastLockState) {
		lastLockState = this.patcher.locked;
		getlock();
	}
}
checkLocked.local = 1;

runtime_test();
quiteLoadbang();

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");