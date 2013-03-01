/*
	ej.numbox.js by Emmanuel Jourdan, e--j dev - 08 2004
	an alternative number box.

	$Revision: 1.19 $
	$Date: 2009/02/26 12:06:19 $
*/

// Global Code
inlets = 1;
outlets = 3;
setinletassist(0, "int/float, messages");
setoutletassist(0, "Output incoming");
setoutletassist(1, "mouse idle 1/0");
setoutletassist(2, "dumpout");
inspector = 1;

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
var keyboard = -1;				// utilisé pour l'entrée au clavier
var RedrawEnable = 0;
var KeyboardError = 1;
var AllowKeyboardState = 0;
var NumericBoite; 				// utilisé dans unselect

border = 0;

mgraphics.init();				// initialize mgraphics
mgraphics.relative_coords = 0;	// coordinate system: x, y, width height
mgraphics.autofill = 0;			// we want to fill the paths ourself

declareattribute("brgb",			"getattr_brgb", 		"setattr_brgb",			1);
declareattribute("brgb2",			"getattr_brgb2", 		"setattr_brgb2",		1);
declareattribute("brgb3",			"getattr_brgb3", 		"setattr_brgb3",		1);
declareattribute("frgb",			"getattr_frgb", 		"setattr_frgb",			1);
declareattribute("frgb2",			"getattr_frgb2", 		"setattr_frgb2",		1);
declareattribute("roundmode",		"getattr_roundmode", 	"setattr_roundmmode",	1);
declareattribute("leading0",		"getattr_leading0", 	"setattr_leading0",		1);
declareattribute("approximation",	"getattr_approx", 		"setattr_approx",		1);
declareattribute("clip",			"getattr_clip", 		"setattr_clip",			1);
declareattribute("minmax",			"getattr_minmax", 		"setattr_minmax",		1);
declareattribute("change",			"getattr_change", 		"setattr_change",		1);
declareattribute("mouseup",			"getattr_mouseup", 		"setattr_mouseup",		1);
declareattribute("allowkeyboard",	"getattr_key", 			"setattr_key",			1);



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
if (jsarguments.length>23)	setattr_change(jsarguments[23]);
if (jsarguments.length>24)	setattr_mouseup(jsarguments[24]);
if (jsarguments.length>25)	ejies.error(this, "extra arguments - check the inspector");

MyVal = DefaultValue;

boxposition();

//dimensions de la boîte
if (box.rect[2] - box.rect[0] == 64 && box.rect[3] - box.rect[1] == 64)
	box.size(32,16);	// numbox a été créée à partie de jsui : dimensions = 64*64
else
	box.size(Math.max(box.rect[2]-box.rect[0],32),16);	// check box size

setattr_leading0(LeadingValue);							// va aussi déclencher draw() et refresh()

function loadbang()
{
	redrawoff();
	msg_float(MyVal);
	RedrawEnable = 1;
}

function notifydeleted()
{
	KeyboardInput(0);	// si on supprime ej.function on fait disparaître le sous patch keyboard-input
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
	if (! RedrawEnable)
		return;
	
	mgraphics.redraw();
}

function paint()
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];
	var strW, strH;

	var DisplayValue ;
	
	with (mgraphics) {
		//fontsize(MyFontSize*(box.rect[3]-box.rect[1]));
		select_font_face("Arial", "normal", "normal");
		set_font_size(MyFontSize*(box.rect[3]-box.rect[1]));

		if (inside)
			set_source_rgb(MyBrgb2);
		else
			set_source_rgb(MyBrgb);
			
		rectangle(0, 0, width, height);
		fill();

		if (inside)
			set_source_rgb(MyFrgb2);
	    else
			set_source_rgb(MyFrgb);

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
		
		strW = text_measure(DisplayValue)[0];
		strH = text_measure(DisplayValue)[1];
		move_to((width - strW) * 0.5, height - (height - strH));
		show_text(DisplayValue);
		
/* 		post("draw\n"); */
	}
}
draw.local = 1;	// private

function setattr_approx(v)
{
	if (v > 0 && v < 7)		// entre 1 et 6
		ApproxiValue = v;
	msg_float(MyVal);
}

function getattr_approx()
{
	outlet(2, "approximation", ApproxiValue);
	return ApproxiValue;
}

function getattr_clip()
{
	outlet(2, "clip", MinMaxState);
	return MinMaxState;
}

function setattr_leading0(v)
{
	if (v == 1){
		LeadingValue = v;
		LeadingText = "0";
	} else {
		if (v == 0) {
			LeadingValue = v;
			LeadingText = "";
		} else
			ejies.error(this, "leading0 ", v, "wrong argument");
	}
	draw();
	refresh();
}

function getattr_leading0()
{
	outlet(2, "leading0", LeadingValue);
	return LeadingValue;
}

function outputidle(v)
{
	// output only when change
	if (v != LastIdle) {
		inside = v;
		draw();
		refresh();
		if (v) // on se sert du idle 0 pour envoyer la valeur quand on sort de la boite
			KeyboardInput(1);
		
		outlet(1, v);
		
		if (! v)
			KeyboardInput(0);
	}
	LastIdle = v ;
}
outputidle.local = 1;

function redrawoff()
{
	RedrawEnable = 0;
}

function redrawon()
{
	RedrawEnable = 1;
	draw();
}

function setattr_mouseup(v)
{
	if (v == 1 || v == 0)
		MouseUpState = v;
	else
		ejies.error(this, "mouseup ", v, "wrong argument");
}

function getattr_mouseup()
{
	outlet(2, "mouseup", MouseUpState);
	return MouseUpState;
}

function setattr_roundmmode(v)
{
	if (v >= 0 && v <= 2) {
		RoundValue = v;
		msg_float(MyVal);
	} else
		ejies.error(this, "roundmode ", v, "wrong argument (must be 0, 1 or 2)");
}

function getattr_roundmode()
{
	outlet(2, "roundmode", RoundValue);
	return RoundValue;
}

function sendval()
{
	messnamed("ej.numbox-keyboard", MyVal);
}

function onresize(w,h)
{
	box.size(Math.max(32, w),16);
	draw();
	refresh();
}
onresize.local = 1; // private

function setattr_minmax(v,w)
{
	MinMaxValues[0] = v;
	MinMaxValues[1] = w;
}

function getattr_minmax()
{
	outlet(2, "minmax", MinMaxValues[0], MinMaxValues[1]);
	return MinMaxValues;
}

function setattr_clip(v)
{
	MinMaxState = v;
	msg_float(MyVal);
}

function setattr_change(v)
{
	if (v == 1 || v == 0) {
		ChangeState = v;
	} else
		ejies.error(this, "change ", v, "wrong argument");
}

function getattr_change()
{
	outlet(2, "change", ChangeState);
	return ChangeState;
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
	
	// Clipping or not cliping
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
	ejies.error(this, "since 1.52 the parameters are embed with the patcher. Use the inspector insteed.");
	return;

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

function select()
{
	// positionne le curseur dans le coin en bas à droite de l'objet
	max.pupdate(this.patcher.wind.location[0] + box.rect[2] - 3, this.patcher.wind.location[1] + box.rect[3] - 3);
	outputidle(1);
}

function unselect()
{
	NumericBoite = this.patcher.newobject("number", -100, -100, 35, 9, 0, 0, 0, 3);
	NumericBoite.hidden = 1;
	NumericBoite.message("select");
	this.patcher.remove(NumericBoite);
}

function tab()
{
	LastIdle = inside = 0;
	draw();
	refresh();
	outlet(1, 0);
	outlet(2, "select")
}

function setvalueof(v)
{
	msg_float(v);
}

function getvalueof()
{
	return MyVal;
}

function save()
{
	embedmessage("redrawoff");
	embedmessage("brgb", Math.floor(MyBrgb[0]*255), Math.floor(MyBrgb[1]*255), Math.floor(MyBrgb[2]*255));
	embedmessage("brgb2", Math.floor(MyBrgb2[0]*255), Math.floor(MyBrgb2[1]*255), Math.floor(MyBrgb2[2]*255));
	embedmessage("brgb3", Math.floor(MyBrgb3[0]*255), Math.floor(MyBrgb3[1]*255), Math.floor(MyBrgb3[2]*255));
	embedmessage("frgb", Math.floor(MyFrgb[0]*255), Math.floor(MyFrgb[1]*255), Math.floor(MyFrgb[2]*255));
	embedmessage("frgb2", Math.floor(MyFrgb2[0]*255), Math.floor(MyFrgb2[1]*255), Math.floor(MyFrgb2[2]*255));
	embedmessage("roundmode", RoundValue);
	embedmessage("leading0", LeadingValue);
	embedmessage("approximation", ApproxiValue);
	embedmessage("clip", MinMaxState);
	embedmessage("minmax", MinMaxValues[0], MinMaxValues[1]);
	embedmessage("initvalue", DefaultValue);
	embedmessage("change", ChangeState);
	embedmessage("mouseup", MouseUpState);
	embedmessage("allowkeyboard", AllowKeyboardState);
	embedmessage("redrawon");
}

function getattributes()
{
	var attributes = new Array("attributes", "roundmode", "brgb", "brgb2", "brgb3", "frgb", "frgb2", "approximation", "leading0", "initvalue", "change", "mouseup", "allowkeyboard");
	outlet(2, attributes);
}

function setattr_frgb(r,g,b)
{
	MyFrgb[0] = r/255.;
	MyFrgb[1] = g/255.;
	MyFrgb[2] = b/255.;
	draw();
	refresh();
}

function setattr_frgb2(r,g,b)
{
	MyFrgb2[0] = r/255.;
	MyFrgb2[1] = g/255.;
	MyFrgb2[2] = b/255.;
	draw();
	refresh();
}

function setattr_brgb(r,g,b)
{
	MyBrgb[0] = r/255.;
	MyBrgb[1] = g/255.;
	MyBrgb[2] = b/255.;
	draw();
	refresh();
}

function setattr_brgb2(r,g,b)
{
	MyBrgb2[0] = r/255.;
	MyBrgb2[1] = g/255.;
	MyBrgb2[2] = b/255.;
	draw();
	refresh();
}

function setattr_brgb3(r,g,b)
{
	MyBrgb3[0] = r/255.;
	MyBrgb3[1] = g/255.;
	MyBrgb3[2] = b/255.;
}

function getattr_brgb() { outlet(2, "brgb", getcolor(0)); return getcolor(0); }

function getattr_brgb2() { outlet(2, "brgb2", getcolor(1)); return getcolor(1); }

function getattr_brgb3() { outlet(2, "brgb3", getcolor(2)); return getcolor(2); }

function getattr_frgb() { outlet(2, "frgb", getcolor(3)); return getcolor(3); }

function getattr_frgb2() { outlet(2, "frgb2", getcolor(4)); return getcolor(4); }

// pour simplifier le travail et supprimer des lignes de code inutiles
function getcolor(ColorItem)
{
	var MsgArgs = new Array(3);
	for (i = 0 ; i < 3 ; i++ ) {
		MsgArgs[i] = Math.floor(ColorList[ColorItem][i]*255);
	}
	return (MsgArgs);
}
getcolor.local = 1;	// private

function cursor(c)
{
	if (c)
		max.showcursor();
	else
		max.hidecursor();
}
cursor.local = 1;

function setattr_key(v)
{
	AllowKeyboardState = v != 0 ? 1: 0;
}

function getattr_key()
{
	outlet(2, "allowkeyboard", AllowKeyboardState);
	return AllowKeyboardState;
}

function KeyboardInput(v)
{
	if (AllowKeyboardState) {
		if (v && this.patcher.locked) {
			if (KeyboardError) {
				// unselect others objects
				unselect();
				
				// si d'autres objets ej.numbox-keyboard traînent, il ne doivent pas recevoir les touches du clavier
				messnamed("ej.numbox-keyboard", "stop");
				
				keyboard = this.patcher.newdefault(-100, -100, "ej.numbox-keyboard.maxpat");
				// ça serait bien d'éviter le nommage...
				// create "unique" name
				var TempName = "num-";
				var TempDate = new Date();
				TempName += TempDate.getUTCDay();
				TempName += TempDate.getUTCHours();
				TempName += TempDate.getUTCMinutes();
				TempName += TempDate.getUTCSeconds();
				TempName += TempDate.getUTCMilliseconds();
	
				keyboard.varname = TempName;
				this.patcher.script("hide", TempName);	// hidden ne marche pas car c'est un subpatcher :-(
				
				if (keyboard.maxclass == "bogus") {
					ejies.error(this, "check the installation: ej.numbox-keyboard.pat is missing in the ejies'help folder");
					KeyboardError = 0;
					return;
				}
				
				// connect ej.numbox-keyboard.pat to this.box
				this.patcher.hiddenconnect(this.box, 1, keyboard, 0);
				this.patcher.hiddenconnect(keyboard, 0, this.box, 0);
	
				sendval();	// envoie la valeur actuelle -> ej.numbox-keyboard.pat
				
			} else
				return;
		} else
			if (keyboard != -1) {	// si keyboard n'existe pas... il ne faut pas vouloir le supprimer
				this.patcher.remove(keyboard);
				keyboard = -1;
			}
	}
}
KeyboardInput.local = 1;

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
	outlet(1, outputidle(1));
}
onidle.local = 1; // private

function onidleout(x,y,but,cmd,shift,capslock,option,ctrl)
{
	outlet(1, outputidle(0));
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

RedrawEnable = 1;


// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");
