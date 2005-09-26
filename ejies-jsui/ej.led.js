/*
	ej.led.js by Emmanuel Jourdan, Ircam - 09 2004
	an alternative led...
	since 1.54b3: mode button added
*/

// Global Code
var ejies = EjiesUtils();	// lien vers ejies-extension.js
inlets = 1;
outlets = 2;
setinletassist(0, "int/float, messages");
setoutletassist(0, "Outputs 1 or 0 When LED is Changed or Set");
setoutletassist(1, "dumpout");
inspector = 1;

// Variables Globales
var MyBrgb = [0.333333, 0.333333, 0.333333];
var MyFrgb = [0.6, 0, 0];
var MyBrgb2 = [0.466667, 0.466667, 0.466667];
var MyFrgb2 = [1, 0, 0];
var Flash = 0;
var OldFlash;
var FlashTime = 150;
var LastValue = 0;
var MyTask = new Task();
var ColorList =[MyBrgb, MyBrgb2, MyFrgb, MyFrgb2];
var RedrawEnable;
var CircleRatio = 0.75;
var LedMode = 0;
const MIN_SIZE = 15;
const DUMP_OUTLET = 1;
border = 0;
sketch.fsaa = 1;
sketch.default3d();


function draw()
{
	if (! RedrawEnable)
		return;
	
	// optimisation of the display (appends only when the state changes)
	if (Flash == OldFlash)
		return;

	with (sketch) {
		if (Flash)
			glclearcolor(MyBrgb2);
		else
			glclearcolor(MyBrgb);

		glclear();			

		if (Flash)
			glcolor(MyFrgb2);
		else
			glcolor(MyFrgb);
		
		sphere(CircleRatio);
	}

	OldFlash = Flash;
	
	refresh();
/* 	post("draw\n"); */
}
draw.local = 1;	// private

function bang()
{
	Flash = 1;
	draw();

	WaitAndStop();
	
	if (LedMode == 1)
		outlet(0, "bang");
	else
		outlet(0, LastValue);
}

function msg_float(v)
{
	if (LedMode)
		bang();
	else {
		if (v == 0) {
			Flash = 0;
			LastValue = 0;
		} else {
			Flash = 1;
			LastValue = 1;
		}
		SendValue();
		draw();
	}
}

function set(v)
{
	// ignore if it's in button mode
	if (! LedMode) {
		if (v == 0) {
			Flash = 0;
			LastValue = 0;
		} else {
			Flash = 1;
			LastValue = 1;
		}
		draw();
	}
}

function blinktime(v)
{
	if (v > 0)
		FlashTime = v;
	else
		perror("bad argument for message blinktime");
}

function WaitAndStop()
{
	MyTask.cancel();		// arrte une autre task en cours
	MyTask = new Task(PutItOff);
	MyTask.interval = FlashTime;
	MyTask.repeat(1);
}
WaitAndStop.local = 1;

function PutItOff()
{
	if ( ! arguments.callee.task.running) {
		Flash = 0;
		draw();
	}
}
PutItOff.local = 1;

function ForceDisplay() 
{
	OldFlash = -1;
	draw();
}
ForceDisplay.local = 1;

function mode(v)
{
	if ( v == 0 || v == 1) {
		LedMode = v;
		Flash = 0;
		LastValue = 0;
		ForceDisplay();
	} else
		perror("bad arguement for message mode");
}

function pict(v)
{
	switch (v) {
		case 1:
				MyBrgb = [0.333333, 0.333333, 0.333333];
				MyFrgb = [0, 0.266667, 0];
				MyBrgb2 = [0.466667, 0.466667, 0.466667];
				MyFrgb2 = [0, 1, 0];
				break;
		case 2:
				MyBrgb = [0.333333, 0.333333, 0.333333];
				MyFrgb = [0, 0, 0.466667];
				MyBrgb2 = [0.466667, 0.466667, 0.466667];
				MyFrgb2 = [0, 1, 1];
				break;
		case 3:
				MyBrgb = [0.333333, 0.333333, 0.333333];
				MyFrgb = [0.8, 0.5, 0];
				MyBrgb2 = [0.466667, 0.466667, 0.466667];
				MyFrgb2 = [1, 1, 0];
				break;
		case 4:
				MyBrgb = [0, 0, 0];
				MyFrgb = [0.5, 0.5, 0.5];
				MyBrgb2 = [0, 0, 0];
				MyFrgb2 = [1, 1, 1];
				break;
		default:
				MyBrgb = [0.333333, 0.333333, 0.333333];
				MyFrgb = [0.6, 0, 0];
				MyBrgb2 = [0.466667, 0.466667, 0.466667];
				MyFrgb2 = [1, 0, 0];
	}
	ForceDisplay();
}
	
function SendValue()
{
	outlet(0, Flash);
}

function redrawoff()
{
	RedrawEnable = 0;
}

function redrawon()
{
	RedrawEnable = 1;
	ForceDisplay();
}

function size(w, h)
{
	onresize(w, h);
}

function onresize(w, h)
{
	forcesize(w, h);
	ForceDisplay();
}
onresize.local = 1; // private

function forcesize(w,h)
{
	if (h != Math.floor(w) ) {
		h = Math.floor(w);
		box.size(Math.max(MIN_SIZE, w), Math.max(MIN_SIZE, h));
	}	
}
forcesize.local = 1; //private


function perror()
{
	ejies.scriptname = "ej.numbox.js";
	ejies.perror(arguments);
}
perror.local = 1;

function save()
{
/* 	save states */
	embedmessage("redrawoff");
	embedmessage("mode", LedMode);
	embedmessage("circlesize", CircleRatio);
	embedmessage("blinktime", FlashTime);
	embedmessage("brgb", Math.floor(MyBrgb[0]*255), Math.floor(MyBrgb[1]*255), Math.floor(MyBrgb[2]*255));
	embedmessage("brgb2", Math.floor(MyBrgb2[0]*255), Math.floor(MyBrgb2[1]*255), Math.floor(MyBrgb2[2]*255));
	embedmessage("frgb", Math.floor(MyFrgb[0]*255), Math.floor(MyFrgb[1]*255), Math.floor(MyFrgb[2]*255));
	embedmessage("frgb2", Math.floor(MyFrgb2[0]*255), Math.floor(MyFrgb2[1]*255), Math.floor(MyFrgb2[2]*255));
	embedmessage("redrawon");
}

function circlesize(v)
{
	if (v >= 0 && v <= 1) {
		CircleRatio = v;
		ForceDisplay();
	}
	else
		perror("bad argument for message circlesize");
}

function frgb(r,g,b)
{
	MyFrgb[0] = r/255.;
	MyFrgb[1] = g/255.;
	MyFrgb[2] = b/255.;
	ForceDisplay();
}

function frgb2(r,g,b)
{
	MyFrgb2[0] = r/255.;
	MyFrgb2[1] = g/255.;
	MyFrgb2[2] = b/255.;
	ForceDisplay();
}

function brgb(r,g,b)
{
	MyBrgb[0] = r/255.;
	MyBrgb[1] = g/255.;
	MyBrgb[2] = b/255.;
	ForceDisplay();
}

function brgb2(r,g,b)
{
	MyBrgb2[0] = r/255.;
	MyBrgb2[1] = g/255.;
	MyBrgb2[2] = b/255.;
	ForceDisplay();
}

function getbrgb() { getcolor("brgb", 0); }

function getbrgb2() { getcolor("brgb2", 1); }

function getfrgb() { getcolor("frgb", 3); }

function getfrgb2() { getcolor("frgb2", 4); }

// pour simplifier le travail et supprimer des lignes de code inutiles
function getcolor(MsgName,ColorItem)
{
	var MsgArgs = new Array(4);
	MsgArgs[0] = MsgName;
	for (i = 0 ; i < 3 ; i++ ) {
		MsgArgs[i+1] = Math.floor(ColorList[ColorItem][i]*255);
	}
	outlet(DUMP_OUTLET, MsgArgs);
}
getcolor.local = 1;	// private

function onclick()
{
	if (LedMode)
		bang();
	else {	
		if (Flash == LastValue) {
			Flash = 1 - Flash;
			LastValue = 1 - LastValue;
		} else {
			Flash = 1 - Flash;
			LastValue = Flash;
		}
		SendValue();
		draw();
	}
}

redrawon();

// Pour la compilation automatique
/* autowatch = 1; */
/* post("Compiled...\n"); */
