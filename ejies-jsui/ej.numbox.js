/*
	ej.numbox.js by Emmanuel Jourdan, Ircam - 08 2004
	an alternative number box.
 */

// Global Code

var ejies = EjiesUtils();	// lien vers ejies-extension.js
var CopyRight = new Global("EjiesCopyRight");	// variable globale utilisée pour le copyright
CopyRight["numbox"] = 0;						// init
inlets = 1;
outlets = 3;
setinletassist(0, "int/float, messages");
setoutletassist(0, "Output incoming");
setoutletassist(1, "mouse idle 1/0");
setoutletassist(2, "dumpout");

// Variables Globales
var LastY = 0;
var LastDelta = 0;
var LastIdle = 0;
var inside = 0;
var approxi =  0;				// approximation mode off
var ApproxiValue = 2;			// default approximation 
var BoxCenterX;
var BoxCenterY;
var MyBrgb = [0.65,0.7,0.7];
var MyBrgb2 = [0.2,0.3,0.5];
var MyBrgb3 = [0.2,0.3,0.6]; 	// pour le double click
var MyFrgb = [0.2,0.3,1.];
var MyFrgb2 = [0.65,0.7,0.7];
const MyFontSize = 0.6;			// Font size (par rapport à la hauteur de la boîte
const MyFont = "Geneva";		// Default Font
var RoundValue = 2;				// truncate mode
var LeadingValue = 0;
var LeadingText;
var ColorList = new Array(MyBrgb,MyBrgb2,MyBrgb3,MyFrgb,MyFrgb2); // liste des couleurs
var DefaultValue = 0;
var MinMaxState = 0;
var MinMaxValues = new Array(0,127);
var ChangeState = 0;
var MouseUpState = 0;
var TempValue;					// utilsé pour la fonction change
var MyVal = 0;

border = 0;			// ça marche pas ?
sketch.fsaa = 0;	// ça doit marcher
sketch.default2d();

// process arguments
if (jsarguments.length>1)	MyBrgb[0] = jsarguments[1]/255.;
if (jsarguments.length>2)	MyBrgb[1] = jsarguments[2]/255.;
if (jsarguments.length>3)	MyBrgb[2] = jsarguments[3]/255.;
if (jsarguments.length>4)	MyBrgb2[0] = jsarguments[4]/255.;
if (jsarguments.length>5)	MyBrgb2[1] = jsarguments[5]/255.;
if (jsarguments.length>6)	MyBrgb2[2] = jsarguments[6]/255.;
if (jsarguments.length>7)	MyBrgb3[0] = jsarguments[7]/255.;
if (jsarguments.length>8)	MyBrgb3[1] = jsarguments[8]/255.;
if (jsarguments.length>9)	MyBrgb3[2] = jsarguments[9]/255.;
if (jsarguments.length>10)	MyFrgb[0] = jsarguments[10]/255.;
if (jsarguments.length>11)	MyFrgb[1] = jsarguments[11]/255.;
if (jsarguments.length>12)	MyFrgb[2] = jsarguments[12]/255.;
if (jsarguments.length>13)	MyFrgb2[0] = jsarguments[13]/255.;
if (jsarguments.length>14)	MyFrgb2[1] = jsarguments[14]/255.;
if (jsarguments.length>15)	MyFrgb2[2] = jsarguments[15]/255.;
if (jsarguments.length>16)	RoundValue = jsarguments[16];
if (jsarguments.length>17)	LeadingValue = jsarguments[17];
if (jsarguments.length>18)	ApproxiValue = jsarguments[18];
if (jsarguments.length>19)	MinMaxState = jsarguments[19];
if (jsarguments.length>20)	MinMaxValues[0] = jsarguments[20];
if (jsarguments.length>21)	MinMaxValues[1] = jsarguments[21];
if (jsarguments.length>22)	DefaultValue = jsarguments[22];
if (jsarguments.length>23)	change(jsarguments[23]);
if (jsarguments.length>24)	mouseup(jsarguments[24]);
if (jsarguments.length>25)	post("• error: ej.numbox.js extra arguments\n");

MyVal = DefaultValue;

boxposition();

//dimensions de la boîte
if (box.rect[2] - box.rect[0] == 64 && box.rect[3] - box.rect[1] == 64)
box.size(32,16);	// numbox a été créée à partie de jsui : dimensions = 64*64
else
box.size(Math.max(box.rect[2]-box.rect[0],32),16);	// check box size

leading0(LeadingValue);							// va aussi déclencher draw() et refresh()

function loadbang()
{
	if (! CopyRight["numbox"]) {
		post("ej.numbox.js: version", ejies.VersNum, ejies.VersDate);
		post("\n     by Emmanuel Jourdan\, Ircam\n");
		CopyRight["numbox"] = 1;
	}
	msg_float(MyVal);
}

function boxposition()
{
	// pour le recentrage du curseur quand on relâche
	p = this.patcher;
	BoxCenterX = p.wind.location[0] + box.rect[0] + ((box.rect[2] - box.rect[0])/2);
	BoxCenterY = p.wind.location[1] + box.rect[1] + ((box.rect[3] - box.rect[1])/2);
}
boxposition.local = 1;

function draw()
{
	var DisplayValue ;
	
	with (sketch) {
		fontsize(MyFontSize*(box.rect[3]-box.rect[1]));
		font(MyFont);

		if (inside)
			glclearcolor(MyBrgb2);
		else
			glclearcolor(MyBrgb);
		glclear();			

		if (inside)
			glcolor(MyFrgb2);
	    else
			glcolor(MyFrgb);
		textalign("center", "center");		
		moveto(0,0)

		if (MyVal == Number.NEGATIVE_INFINITY)		// = -∞
			DisplayValue = "-inf";
		else if (MyVal == Number.POSITIVE_INFINITY) // plus l'infini...
			DisplayValue = "+inf";

		else if (MyVal >= 0 && MyVal < 10)			// entre 0 et 10
			DisplayValue = LeadingText + MyVal.toFixed(approxi);
		else if (MyVal > -10 && MyVal < 0)			// entre -10 et 0
				DisplayValue = "-" + LeadingText + Math.abs(MyVal).toFixed(approxi);
		else										// tout le reste
			DisplayValue = MyVal.toFixed(approxi); 
			
		text(DisplayValue);
	}
}
draw.local = 1;	// private

function approximation(v)
{
	if (v > 0 && v < 7)		// entre 1 et 6
		ApproxiValue = v;
	msg_float(MyVal);
}

function getapproximation()
{
	outlet(2, "approximation", ApproxiValue);
}

function leading0(v)
{
	if (v == 1){
		LeadingValue = v;
		LeadingText = "0";
	} else {
		if (v == 0) {
			LeadingValue = v;
			LeadingText = "";
		} else
			post("• error: ej.numbox: leading0 ", v, "wrong argument\n");
	}
	draw();
	refresh();
}

function getleading0()
{
	outlet(2, "leading0", LeadingValue);
}

function outputidle(v)
{
	// output only when change
	if (v != LastIdle) {
		inside = v;
		draw();
		refresh();
		outlet(1, v);
	}
	LastIdle = v ;
}
outputidle.local = 1;

function mouseup(v)
{
	if (v == 1 || v == 0)
		MouseUpState = v;
	else
		post("• error: ej.numbox: mouseup ", v, "wrong argument\n")
}

function getmouseup()
{
	outlet(2, "mouseup", MouseUpState);
}

function roundmode(v)
{
	if (v >= 0 && v <= 2) {
		RoundValue = v;
		msg_float(MyVal);
	} else
		post("• error: ej.numbox: roundmode ", v, "wrong argument (must be 0, 1 or 2)\n");
}

function getroundmode()
{
	outlet(2, "roundmode", RoundValue);
}

function onresize(w,h)
{
	box.size(Math.max(32, w),16);
	draw();
	refresh();
}
onresize.local = 1; // private

function minmax(v,w)
{
	MinMaxValues[0] = v;
	MinMaxValues[1] = w;
}

function clip(v)
{
	MinMaxState = v;
	msg_float(MyVal);
}

function change(v)
{
	if (v == 1 || v == 0) {
		ChangeState = v;
	} else
		post("• error: ej.numbox: change ", v, "wrong argument\n")
}

function getchange()
{
	outlet(2, "change", ChangeState);
}

function msg_float(v)
{
	MyVal = v;
	
	// clipping or not clipping
	if (MinMaxState)
		clipping(MyVal);
	
	// rounding
	switch (RoundValue) {
		case 1:
			MyVal = Math.round(MyVal);
			approxi = 0;
			break;
		case 2:
			MyVal = Math.floor(MyVal);
			approxi = 0;
			break;
		case 0:
			approxi = ApproxiValue;
			break;
	}
	
	draw();
	refresh();
	
	notifyclients();
	
	if (ChangeState) {
		if ( TempValue != MyVal) 	// Output only on change
			outlet(0,MyVal);
	} else
		outlet(0,MyVal);
	TempValue = MyVal;
}

function clipping(v)
{
	if ( MinMaxState & 1 ) // un peu de binaire...
		MyVal = Math.max(MinMaxValues[0],v);
	if ( MinMaxState & 2 )									// ici on fait attention de ne pas descendre
		MyVal = Math.min(MinMaxValues[1],Math.max(MyVal,v));//en dessous du minimum quand il est activé
}
clipping.local = 1;	// private

function set(v)
{
	MyVal = v;
	
	if (MinMaxState)
		clipping(MyVal);
	draw();
	refresh();
	notifyclients();
}

function bang()
{
	msg_float(MyVal);
}

function initvalue(v)
{
	DefaultValue = v;
	msg_float(DefaultValue);
}

function getinitvalue()
{
	outlet(2, "initvalue", DefaultValue);
}

function args4insp()
{
	var MsgArgs = new Array(25);
	MsgArgs[0] = "args4insp";
	for ( i = 0; i < ColorList.length; i++) {
		for (j = 0 ; j < 3 ; j++ ) {
			MsgArgs[i*3+j+1] = Math.floor(ColorList[i][j]*255);
		}
	}
	MsgArgs[16] = RoundValue;
	MsgArgs[17] = LeadingValue;
	MsgArgs[18] = ApproxiValue;
	MsgArgs[19] = MinMaxState;
	MsgArgs[20] = MinMaxValues[0];
	MsgArgs[21] = MinMaxValues[1];
	MsgArgs[22] = DefaultValue;
	MsgArgs[23] = ChangeState;
	MsgArgs[24] = MouseUpState;
	outlet(2, MsgArgs);
}

function setvalueof(v)
{
	msg_float(v);
}

function getvalueof()
{
	return MyVal;
}

function getattributes()
{
	var attributes = new Array("attributes", "roundmode", "brgb", "brgb2", "brgb3", "frgb", "frgb2", "approximation", "leading0", "initvalue", "change", "mouseup")
	outlet(2, attributes);
}

function frgb(r,g,b)
{
	MyFrgb[0] = r/255.;
	MyFrgb[1] = g/255.;
	MyFrgb[2] = b/255.;
	draw();
	refresh();
}

function frgb2(r,g,b)
{
	MyFrgb2[0] = r/255.;
	MyFrgb2[1] = g/255.;
	MyFrgb2[2] = b/255.;
	draw();
	refresh();
}

function brgb(r,g,b)
{
	MyBrgb[0] = r/255.;
	MyBrgb[1] = g/255.;
	MyBrgb[2] = b/255.;
	draw();
	refresh();
}

function brgb2(r,g,b)
{
	MyBrgb2[0] = r/255.;
	MyBrgb2[1] = g/255.;
	MyBrgb2[2] = b/255.;
	draw();
	refresh();
}

function brgb3(r,g,b)
{
	MyBrgb3[0] = r/255.;
	MyBrgb3[1] = g/255.;
	MyBrgb3[2] = b/255.;
}

function getbrgb() { getcolor("brgb", 0); }

function getbrgb2() { getcolor("brgb2", 1); }

function getbrgb3() { getcolor("brgb3", 2); }

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
	outlet(2, MsgArgs);
}
getcolor.local = 1;	// private

function cursor(a)
{
	if (a)
		max.showcursor();
	else
		max.hidecursor();
}
cursor.local = 1;

// not using any mouse args
function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	
	boxposition();
	LastY = y;
	cursor(0); 	// cache le curseur
}
onclick.local = 1; // private

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	if (but == 0) {
		cursor(1);								// affiche le curseur
		max.pupdate(BoxCenterX,BoxCenterY);		// recentre le curseur
		msg_float(MyVal);						// envoie la nouvelle valeur (quand on relâche)
	} else {
		var delta = y - LastY;
	 	if (delta == 0)
			delta = LastDelta ;
		else
			LastDelta = delta;
	 	
		// touche shift... ça va plus vite... (même moi je l'oublie que j'ai mis ça)
		if (shift)
			var OffsetFromDelta = Math.max(1,Math.round(Math.abs(delta)));
		else
			var OffsetFromDelta = Math.max(1,Math.round(Math.abs(delta)*0.2));
		
		if (delta > 0)
			MyVal -= OffsetFromDelta;
		else
			MyVal += OffsetFromDelta;
		LastY = y;
		
		// Output only on MouseUp
		if (MouseUpState) {
			set(MyVal);
		} else
			msg_float(MyVal);
	}
}
ondrag.local = 1 ;	// private

function onidle(x,y,but,cmd,shift,capslock,option,ctrl)
{
	outlet(1,outputidle(1));
}
onidle.local = 1; // private

function onidleout(x,y,but,cmd,shift,capslock,option,ctrl)
{
	outlet(1,outputidle(0));
}
onidleout.local = 1;

function ondblclick()
{
	// il faut déjà changer la couleur, attendre puis envoyer la valeur par défaut
	tsk = new Task(flashwhiledbleclick, this);
	tsk.interval = 300;
	tsk.repeat(1, 50);
}
ondblclick.local = 1;

function flashwhiledbleclick()
{
	with (sketch) {
		glclearcolor(MyBrgb3);
		glclear();
		refresh();
	}
	if ( ! tsk.running)
		msg_float(DefaultValue);
}
flashwhiledbleclick.local = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");
