/*
	ej.led.js by Emmanuel Jourdan, e--j dev - 09 2004
	an alternative led...
	since 1.54b3: mode button added
	
	$Revision: 1.13 $
	$Date: 2012/01/26 07:47:16 $
*/

// Global Code
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
var MyTask = new Task(PutItOff);
var ColorList =[MyBrgb, MyBrgb2, MyFrgb, MyFrgb2];
var RedrawEnable;
var CircleRatio = 0.75;
var LedMode = 0;
const MIN_SIZE = 15;
const DUMP_OUTLET = 1;
border = 0;

declareattribute("mode",		"getattr_mode", 		"setattr_mode",			1);
declareattribute("circlesize",	"getattr_circlesize", 	"setattr_circlesize",	1);
declareattribute("blinktime",	"getattr_blinktime", 	"setattr_blinktime",	1);
declareattribute("brgb",		"getattr_brgb", 		"setattr_brgb",			1);
declareattribute("brgb2",		"getattr_brgb2", 		"setattr_brgb2",		1);
declareattribute("frgb",		"getattr_frgb", 		"setattr_frgb",			1);
declareattribute("frgb2",		"getattr_frgb2", 		"setattr_frgb2",		1);

mgraphics.init();				// initialize mgraphics
mgraphics.relative_coords = 0;	// coordinate system: x, y, width height
mgraphics.autofill = 0;			// we want to fill the paths ourself

function draw()
{
	if (! RedrawEnable)
		return;
	
	// optimisation of the display (appends only when the state changes)
	if (Flash == OldFlash)
		return;
        
    mgraphics.redraw();
}
draw.local = 1;	// private

function paint()
{
    var width = this.box.rect[2] - this.box.rect[0];
    var height = this.box.rect[3] - this.box.rect[1];
    
    // put the code here...
    with (mgraphics) {
		if (Flash)
			set_source_rgb(MyBrgb2);
		else
			set_source_rgb(MyBrgb);

		rectangle(0, 0, width, height);
        fill();

		if (Flash)
			set_source_rgb(MyFrgb2);
		else
			set_source_rgb(MyFrgb);
		
		ellipse(width * (1.0 - CircleRatio) * 0.5, height * (1.0 - CircleRatio) * 0.5, width * CircleRatio, height * CircleRatio);
        fill();
	}

	OldFlash = Flash;
}

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

function bangOn()
{
	Flash = 1;
	draw();
	outlet(0, "bang");
}

function bangOff()
{
	Flash = 0;
	draw();
}

function toggle()
{
	msg_float(1 - LastValue);
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

function anything()
{
	if (LedMode)
		bang();
	else
		ejies.error(this, "doesn't understand", messagename);
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

function setattr_blinktime(v)
{
	if (v > 0)
		FlashTime = v;
	else
		ejies.error(this, "bad argument for message blinktime");
}

function WaitAndStop()
{
	MyTask.schedule(FlashTime);
}
WaitAndStop.local = 1;

function PutItOff()
{
	Flash = 0;
    draw();
}
PutItOff.local = 1;

function ForceDisplay() 
{
	OldFlash = -1;
	draw();
}
ForceDisplay.local = 1;

function setattr_mode(v)
{
	if ( v == 0 || v == 1) {
		LedMode = v;
		Flash = 0;
		LastValue = 0;
		ForceDisplay();
	} else
		ejies.error(this, "bad arguement for message mode");
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

/*
	Note: everything is stored in attribute now, so this shouldn'tbe necessary anymore
	
function save()
{
	embedmessage("redrawoff");
	// embedmessage("mode", LedMode);
	// embedmessage("circlesize", CircleRatio);
	// embedmessage("blinktime", FlashTime);
	// embedmessage("brgb", Math.floor(MyBrgb[0]*255), Math.floor(MyBrgb[1]*255), Math.floor(MyBrgb[2]*255));
	// embedmessage("brgb2", Math.floor(MyBrgb2[0]*255), Math.floor(MyBrgb2[1]*255), Math.floor(MyBrgb2[2]*255));
	// embedmessage("frgb", Math.floor(MyFrgb[0]*255), Math.floor(MyFrgb[1]*255), Math.floor(MyFrgb[2]*255));
	// embedmessage("frgb2", Math.floor(MyFrgb2[0]*255), Math.floor(MyFrgb2[1]*255), Math.floor(MyFrgb2[2]*255));
	embedmessage("redrawon");
}
*/

function setattr_circlesize(v)
{
	if (v >= 0 && v <= 1) {
		CircleRatio = v;
		ForceDisplay();
	}
	else
		ejies.error(this, "bad argument for message circlesize");
}

function setattr_frgb(r,g,b)
{
	MyFrgb[0] = r/255.;
	MyFrgb[1] = g/255.;
	MyFrgb[2] = b/255.;
	ForceDisplay();
}

function setattr_frgb2(r,g,b)
{
	MyFrgb2[0] = r/255.;
	MyFrgb2[1] = g/255.;
	MyFrgb2[2] = b/255.;
	ForceDisplay();
}

function setattr_brgb(r,g,b)
{
	MyBrgb[0] = r/255.;
	MyBrgb[1] = g/255.;
	MyBrgb[2] = b/255.;
	ForceDisplay();
}

function setattr_brgb2(r,g,b)
{
	MyBrgb2[0] = r/255.;
	MyBrgb2[1] = g/255.;
	MyBrgb2[2] = b/255.;
	ForceDisplay();
}

function getattr_mode()			{ return getter_outlet_and_return("mode", LedMode); }
function getattr_circlesize()	{ return getter_outlet_and_return("circlesize", CircleRatio); }
function getattr_blinktime()	{ return getter_outlet_and_return("blinktime", FlashTime); }
function getattr_brgb()			{ return getcolor("brgb", 0); }
function getattr_brgb2()		{ return getcolor("brgb2", 1); }
function getattr_frgb()			{ return getcolor("frgb", 2); }
function getattr_frgb2()		{ return getcolor("frgb2", 3); }

// this is just an utility function to send attributes values to the dumpout outlet
// and to return the value to the getattr so the inspector can display it.
function getter_outlet_and_return(whatever, value)
{
	outlet(DUMP_OUTLET, whatever, value);
	return value;
}
getter_outlet_and_return.local = 1;

// pour simplifier le travail et supprimer des lignes de code inutiles
function getcolor(MsgName,ColorItem)
{
	var MsgArgs = new Array(4);
	MsgArgs[0] = MsgName;
	for (i = 0 ; i < 3 ; i++ ) {
		MsgArgs[i+1] = Math.floor(ColorList[ColorItem][i]*255);
	}
	outlet(DUMP_OUTLET, MsgArgs);
	return MsgArgs.slice(1);
}
getcolor.local = 1;	// private

function onclick()
{
	if (LedMode)
		bangOn();
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

function ondrag(x,y,but)
{
	if (but == 0 && LedMode == 1)
		bangOff();
}

redrawon();

// Pour la compilation automatique
/* autowatch = 1; */
/* post("Compiled...\n"); */
