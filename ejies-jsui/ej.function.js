/* 
	ej.function.js by Emmanuel Jourdan, Ircam - 03 2005
	multi bpf editor (compatible with Max standart function GUI)

	$Revision: 1.85 $
	$Date: 2006/09/22 21:56:03 $
*/

// global code
var ejies = new EjiesUtils(); // lien vers ejiesUtils.js

const FUNCTIONVERSION = 2; // Depuis ejies version 1.52 le numéro de version est 2 (à cause du domain qui a 2 bornes).
inlets = 1;
outlets = 5;
const INTERP_OUTLET = 0;
const LINE_OUTLET = 1;
const DUMP_OUTLET = 2;
const BANG_OUTLET = 3;
const DUMPOUT = 4;
setinletassist(0, "quite anything...");
setoutletassist(INTERP_OUTLET, "interpolated Y for input X");
setoutletassist(LINE_OUTLET, "points in line~ format");
setoutletassist(DUMP_OUTLET, "dump message output");
setoutletassist(BANG_OUTLET, "bang when changed with mouse");
setoutletassist(DUMPOUT, "dumpout");
inspector = 1;						// Youpi!!!!!!

var g = new Global("ej.function");	// utilisé par dump & listdump
g["copy"] = new Array();			// Utilisé pour le copier-coller
g["copycolors"] = new Array();		// Utilisé pour le copier-coller des couleurs
var NbCourbes = 1;
var f = new Array();
var Tolerance = 4;
var Bordure = 4;
var LegendStateBordure = 12;
var BoxWidth = box.rect[2] - box.rect[0];
var BoxHeight = box.rect[3] - box.rect[1] ;
var PixelDomain;
var PixelRange;
var front = 0;	// c'est plus court que "current"
var LegendState;
var GridMode;
var Snap2GridState;
var HiddenPointDisplay;
var ClickAdd;
var ClickMove;
var AutoSustain;
var TimeFlag = 0;
var Ghostness;
var IdleMode = 0;
var SelectedPoint = -2;
var IdlePoint = -1;
var RedrawEnable;
var NotifyEnable;
var AllowEdit = 1;
var OpendialogPrepend = 0;
var ReadDialogObjectRef = new Array();
var DisplayOneTime;
var LectureInspectorFlag = 0;
var BorderSyncState;
var CursorChange;
var NotifyRecalledState;	// utilise pour l'envoi d'un message lors du rappel pattr
var MouseReportState;
swapPoints.tmp = new Point();
drawText.display = 0;
drawFunctions.display = 0;
DoNotify.done = 0;
RedrawOrNot.DidYouDraw = 0;
var tskDraw = new Task();
var tskDel = new Task();
var tmpString = new String();
var tmpRange, tmpDomain;	// utilisé dans Interp

var SketchFunctions = new Sketch(BoxWidth, BoxHeight - LegendStateBordure);
var SketchText = new Sketch(BoxWidth, LegendStateBordure);
var slowDrawing = new Task(drawFunctions, this);	// pour empêcher le rafraichissement trop rapide
var slowDrawingAll = new Task(drawAll, this);	// pour empêcher le rafraichissement trop rapide
var slowNotify = new Task(notifyclients, this);		// pour empêcher la mise à jour pattr trop rapide

SketchFunctions.fsaa = 1;
SketchText.fsaa = 1;

RedrawEnable = 0;	// désactivation de l'affichage pendant l'initialisation
NotifyEnable = 0;

if (max.version < 455)
	ejies.error(this, "MaxMSP 4.5.5 or higher is required. Please upgrade!");

if (box.rect[2] - box.rect[0] == 64 && box.rect[3] - box.rect[1] == 64) {
	// numbox a été créée à partie de jsui : dimensions = 64*64
	init();
//	post(front, "\n");
	onresize(200,100);
}

//////////////// Objets ///////////////
function Point(x, y, valx, valy)
{
	this.x = x;
	this.y = y;
	this.valx = valx;
	this.valy = valy;
	this.sustain = 0;
	this.fix = 0;
}
Point.local = 1;

function Courbe(name)
{
	this.name = name;			// c'est assez clair...
	this.np = 0;				// nombre de points dans la courbe
	this.domain = [0., 1000.];	// domain de la courbe
	this.range = [0., 1.];		// range de la courbe
	this.ZoomX = [0., 1000.];	// domain de la courbe
	this.ZoomY = [0., 1.];		// range de la courbe
	this.pa = new Array();		// PointsArray
	this.brgb =[0.8,0.8,0.8];	// Couleur de fond
	this.frgb =[0.32,0.32,0.32];// Couleur des points
	this.rgb2 =[0.42,0.42,0.42];// Couleur des traits
	this.rgb3 =[1,0.,0.];		// Couleur sustain
	this.rgb4 =[0.2,0.2,0.2];	// couleur texte
	this.rgb5 =[0.5,0.5,0.5];	// Couleur grille
	this.display = 1;			// display while inactive ?
	this.GridStep = 100;		// tout est dans lenom
	this.PixelDomain;			// ...
	this.PixelRange;			// ...
	this.NextFrom = 0;			// utilisé pour le message next
	this.OnePointAtZero = 0;	// 1 si un des points de la courbe à 0 pour valeur y
}
Courbe.local = 1;

function init()
{
	var c;
	
	for (c = 0; c < NbCourbes; c++) {
		f[c] = new Courbe("function" + c);
	}
	
	// suppression des éventuelles courbes en trop (par resetall)
	while (f.length > NbCourbes) {
		f.splice(f.length - 1, 1);
	}
}
init.local = 1;

//////////////// Fonctions Affichage ///////////////
function draw()
{
	if ( LegendState ) {
		sketch.copypixels(SketchFunctions, 0, LegendStateBordure);
		sketch.copypixels(SketchText);
	} else
		sketch.copypixels(SketchFunctions, 0, 0);

/* 	post("draw operation completed\n"); */
	refresh();
}

function askForDrawFunctions()
{	
/* 	if (slowDrawing.running) */
/* 		slowDrawing.cancel(); */
	
/* 	post("running? " + drawingTask.running + "\n"); */
	slowDrawing.schedule(20); // trigger the task one time
}
askForDrawFunctions.local = 1;

function askForDrawingAll()
{
	slowDrawingAll.schedule();
}
askForDrawingAll.local = 1;

function drawAll()
{
	if (RedrawEnable) {
		SpriteText();
		SpriteFunctions();
		draw();
		drawText.display = 0;
		drawFunctions.display = 0;
	} else {
		drawText.display = 1;
		drawFunctions.display = 1;
	}
}

function drawText()
{
	if (RedrawEnable) {
		SpriteText();
		draw();
		drawText.display = 0;
	} else
		drawText.display = 1;
}
drawText.local = 1;

function drawFunctions()
{
	if (RedrawEnable) {
		SpriteFunctions();
		draw();
		drawFunctions.display = 0;
	} else
		drawFunctions.display = 1;
}
drawFunctions.local = 1;

function askForNotify()
{
	if (slowNotify.running)
		slowNotify.cancel();
		
	slowNotify.schedule(100);
}
askForNotify.local = 1;

function DoNotify()
{
	if (NotifyEnable) {
		askForNotify();
		DoNotify.done = 0;
	} else
		DoNotify.done = 1;
}
DoNotify.local = 1;

function SpriteText()
{
	if ( ! LegendState )
		return;		// si la légende n'est pas présente, on ne fait rien

/* 	post("SpriteText\n"); */	
	with ( SketchText ) {
		glclearcolor(f[front].brgb);
		glclear();

		if ( LegendState ) {
			// Nom de la Courbe
			moveto((SketchText.size[0] - Bordure)/SketchText.size[1], - Bordure/SketchText.size[1]);
			font("Arial");
			fontsize(11);
			textalign("right","center");
			glcolor(f[front].rgb4);
			
			if ( BoxWidth < 130 && (SelectedPoint >= 0  || IdlePoint >= 0) ) { ;} //
			else {
				if (f[front].display)
					text(f[front].name);
				else
					text("("+f[front].name+")");
			}
	
			if (f[front].np > 0 && (SelectedPoint >= 0  || IdlePoint >= 0)) {
				var WhichPoint = (SelectedPoint >=0 ) ? SelectedPoint : IdlePoint ;
	
				if ( WhichPoint < f[front].np) {
					var sep = " ";
					if (f[front].pa[WhichPoint].fix)
						sep = "=";
	
					fontsize(10);
					textalign("left","center");
					moveto(-(SketchText.size[0] - Bordure)/SketchText.size[1],(SketchText.size[1] - LegendStateBordure - Bordure)/SketchText.size[1]);
					if (TimeFlag)
						text("X" + sep + MyDomain2String(f[front]["pa"][WhichPoint].valx) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2));
					else
						text("X" + sep + f[front]["pa"][WhichPoint].valx.toFixed(2) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2));
				}
			}
		}
	}
}
SpriteText.local = 1;

function SpriteFunctions()
{
/* 	post("SpriteFunctions\n"); */
	var c, i;
	
	with ( SketchFunctions ) {
		glclearcolor(f[front].brgb);
		glclear();
		
		// dessine la grille
		if ( GridMode ) {
			glcolor(f[front]["rgb5"], Ghostness);
			
			for (i = 0; i < (((f[front].domain[1] - f[front].domain[0]) / f[front].GridStep)+1); i++) {
			linesegment( screentoworld(val2x(f[front], i*f[front].GridStep + f[front].domain[0]), val2y(f[front], f[front].range[0]) ),
				screentoworld( val2x(f[front], i*f[front].GridStep + f[front].domain[0]), val2y(f[front], f[front].range[1]) ) );
			}
		}
	
		for (c = 0; c < NbCourbes; c++) {
			if (f[c].np > 0) {

				// dessine les segments
				if ( f[c].display ) {
					glcolor(f[c]["rgb2"], (c == front ? 1 : Ghostness));
							
					moveto(screentoworld(f[c]["pa"][0].x,f[c]["pa"][0].y ));
					
					for (i = 0; i < (f[c].np - 1); i++) {
						lineto(screentoworld(f[c]["pa"][i+1].x,f[c]["pa"][i+1].y ));
					}
				}
				
				// dessine les points de la courbe active ou de toutes les courbes si HiddenPointDisplay est activé
				if ( f[c].display && ((c == front) || HiddenPointDisplay) ) {
					// dessine les points
					var tmpTransparency = c == front ? 1 : Ghostness;
					glcolor(f[c]["frgb"], tmpTransparency);
	
					f[c].OnePointAtZero = 0;
					for (i = 0; i < f[c].np; i++) {							
						moveto(screentoworld(f[c]["pa"][i].x,f[c]["pa"][i].y ));
						
						if ( f[c]["pa"][i].sustain) {
							glcolor(f[c]["rgb3"], tmpTransparency);
							circle(5 / BoxHeight); // 5 pixels le point...
							glcolor(f[c]["frgb"], tmpTransparency);
						}
						else {
							if (f[c]["pa"][i].valy == 0) {
								f[c].OnePointAtZero = 1;
								framecircle(5 / SketchFunctions.size[1]); // 5 pixels le point...
							} else
								circle(5 / SketchFunctions.size[1]); // 5 pixels le point...
						}
					}
				}
			}
		}
	}
}
SpriteFunctions.local = 1;


//////////////// Fonctions magiques ///////////////
function x2val(courbe, x) { return ((( x - Bordure)) * courbe.PixelDomain + courbe.ZoomX[0]); }
function y2val(courbe, y) {	return (courbe.ZoomY[1] - ((y  - Bordure) * courbe.PixelRange)); }
function val2x(courbe, valx) {	return (( (valx - courbe.ZoomX[0]) / courbe.PixelDomain) + Bordure); }
function val2y(courbe, valy) {	return ( ((courbe.ZoomY[1] - valy) / courbe.PixelRange) + Bordure); }


//////////////// Fonctions standart ///////////////
function bang()
{
	line(f[front]);
}
bang.immediate = 1;

function msg_float(v)
{
	interp(f[front], v);
}
msg_float.immediate = 1;

function list()
{
	ArgsParser(f[front], "list", arguments)
	DoNotify();
}

function anything()
{
	var c;
	var tmp = -1;
	var OldRedrawState = RedrawEnable;
	
	redrawoff();	// désactive l'affichage pendont qu'on travaille...
	
	for (c = 0; c < NbCourbes; c++) {
		if ( messagename == f[c].name ) {
			tmp = ArgsParser(f[c], messagename, arguments);
			break;
		}
	}

	RedrawEnable = OldRedrawState;	// retour à l'état initial
		
	if (tmp == -1) {	// si -1 c'est que ça ne correspond pas à un nom de function ou de message
		ejies.error(this, "doesn't understand", messagename, "(bad function name or message name)");
		return;
	}

	// pattr notification
	if (tmp == 1)
		DoNotify();

	// affichage si besoin est.
	if ( (drawFunctions.display + drawText.display) == 2)
		drawAll();
	else if (drawText.display)
		drawText();
	else if (drawFunctions.display)
		askForDrawFunctions();
}

function onresize(w,h)
{
	// taille minimum 100*50 - le maximum dépend de fsaa
	if (sketch.fsaa)
		box.size(ejies.clip(w, 100, 1024),ejies.clip(h, 50, 1024));
	else
		box.size(ejies.clip(w, 100, 2048),ejies.clip(h, 50, 2048));
	
	BoxWidth = box.rect[2] - box.rect[0];
	BoxHeight = box.rect[3] - box.rect[1];
	SketchFunctions = new Sketch(BoxWidth, BoxHeight - (LegendState ? LegendStateBordure : 0) );
	SketchText = new Sketch(BoxWidth, LegendStateBordure);
	AllPixel2Machin();
	ValRecalculate();
	drawAll();
}


//////////////// Fonctions Internes ///////////////
function LectureInspector()
{
	if (LectureInspectorFlag)
		return;
	
	var i, j;
	var idx = 1; // jsarguments[0] == ej.function.js
	if (jsarguments.length > 2) {
		NbCourbes = jsarguments[idx++];

		init();	// création des courbes

		if (jsarguments.length != (10 + NbCourbes*18) ) {
			ejies.error(this, "bad number of arguments in the inspector");
			return;
		}
		LegendState = jsarguments[idx++];
		GridMode = jsarguments[idx++];
		Snap2GridState = jsarguments[idx++];
		HiddenPointDisplay = jsarguments[idx++];
		ClickAdd = jsarguments[idx++];
		ClickMove = jsarguments[idx++];
		AutoSustain = jsarguments[idx++];
		TimeFlag = jsarguments[idx++];
		
		for (i = 0; i < NbCourbes; i++) {
			for (j = 0; j < 3; j++) { f[i].brgb[j] = jsarguments[idx++] / 255; }
			for (j = 0; j < 3; j++) { f[i].frgb[j] = jsarguments[idx++] / 255; }
			for (j = 0; j < 3; j++) { f[i].rgb2[j] = jsarguments[idx++] / 255; }
			for (j = 0; j < 3; j++) { f[i].rgb3[j] = jsarguments[idx++] / 255; }
			for (j = 0; j < 3; j++) { f[i].rgb4[j] = jsarguments[idx++] / 255; }
			for (j = 0; j < 3; j++) { f[i].rgb5[j] = jsarguments[idx++] / 255; }
		}
		return;
	}
	else {
/* 		NbCourbes = 2; // C'est déjà défini et ça fout la merde avec l'initialisation save() */
		init();	// création des courbes
	}
}
LectureInspector.local = 1;

function UpdateDisplay()
{
	DoNotify();
	drawAll();
}
UpdateDisplay.local = 1;

function LectureNextLigne(f)
{
	// ignore les lignes qui contiennt mois de 4 caractères ou //
	do {
		tmpString = f.readline();
	} while	(tmpString.length < 4 || (tmpString.search("//") != -1));

	return tmpString;
}
LectureNextLigne.local = 1;

function EditedWithMouse()
{
	if (EditedWithMouse.state)
		outlet(BANG_OUTLET, "bang");
	
	EditedWithMouse.state = 0;
	DoNotify();
}
EditedWithMouse.local = 1;

function DisplayCursor(v)
{
	if (this.box.ignoreclick == 1 || CursorChange == 0)		// Si la boîte est ignore click ou on ne change pas le cursor
		return;

	if (v != DisplayCursor.state) {
		setcursor(v);
		DisplayCursor.state = v
	}
}
DisplayCursor.local = 1;

function PattrInterpError(v)
{
	if (PattrInterpError.flag)
		return;
	
	if (v == 0 )
		ejies.error(this, "interpolation isn't possible (different number of function)");
	else
		ejies.error(this, "interpolation isn't possible (different number of points)");

	PattrInterpError.flag = 1;
}
PattrInterpError.local = 1;

function PattrTooMany(v)
{
	if (v >= 2048) {
		if (PattrTooMany.flag) {
			ejies.error(this, "too many functions/points... pattr won't work...");
			PattrTooMany.flag = 0;
		}
	} else
		PattrTooMany.flag = 1;
}
PattrTooMany.local = 1;

function MyDomain2String(v)
{
	var tmpMinute, tmpSecond, tmpMs;
	var tmpStr = new String();
	
	if (v < 1000) {
		tmpStr = "0\"" + v.toFixed(0);
	
	} else {
		tmpMinute = Math.floor(v / 60000);
		tmpStr+= tmpMinute + "\'";
		
		tmpSecond = Math.floor(v / 1000);

		if (tmpSecond % 60 < 10)
			tmpStr += "0" + tmpSecond % 60 + "\"";
		else
			tmpStr += tmpSecond % 60 + "\"";

		tmpMS = Math.floor(v - (tmpSecond*1000));

		if (tmpMS < 10)
			tmpStr += "00" + tmpMS;
		else if (tmpMS < 100)
			tmpStr += "0" + tmpMS;
		else
			tmpStr += tmpMS;
	}
	return tmpStr;
}
MyDomain2String.local = 1;

function line(courbe)
{
	var tmpArray = new Array();
	var i, idx;
	
	if ( ! courbe.np)
		return;		// si pas de point... pas de line... pas de bras... pas de chocolat...
	
	courbe.NextFrom = 0;

	for (i = 1, idx = 0; i < courbe.np; i++) {
		tmpArray[idx++] = courbe.pa[i].valy;
		tmpArray[idx++] = courbe.pa[i].valx - courbe.pa[i-1].valx;
		if (courbe.pa[i].sustain) {
			courbe.NextFrom = i;
			break;
		}
	}
	
	outlet(LINE_OUTLET, courbe.name, courbe.pa[0].valy);

	if (tmpArray.length > 1)
		outlet(LINE_OUTLET, courbe.name, tmpArray);
}
line.local = 1;

function interp(courbe, v)
{
	var i, a;
	
	if ( courbe.np < 2 )
		return;
	
	if ( v < courbe.pa[0].valx ) {	// v est plus petit que le premier point
		outlet(INTERP_OUTLET, courbe.name, courbe.pa[0].valy);
		return;
	}

	if ( v > courbe.pa[courbe.np - 1].valx ) {	// v est plus grand que le dernier point
		outlet(INTERP_OUTLET, courbe.name, courbe.pa[courbe.np - 1].valy);
		return;
	}
	
	for (i = 0, a = 0; i < courbe.np; i++) {
		if (v > courbe.pa[i].valx)
			a = i;
		else
			break;
	}
	tmpRange = courbe.pa[a+1].valy - courbe.pa[a].valy;
	tmpDomain = courbe.pa[a+1].valx - courbe.pa[a].valx;
	
	outlet(INTERP_OUTLET, courbe.name, ((v - courbe.pa[a].valx) / tmpDomain) * tmpRange + courbe.pa[a].valy);
}
interp.local = 1;

function ValRecalculate()
{
	// recalcule la position en fonction des valeurs
	var c,i;
	
	for (c = 0; c < NbCourbes; c++) {
		for (i = 0; i < f[c].np; i++) {
			f[c]["pa"][i].x = val2x(f[c], f[c]["pa"][i].valx);
			f[c]["pa"][i].y = val2y(f[c], f[c]["pa"][i].valy);
		}
	}
}
ValRecalculate.local = 1;

function ApplyAutoSustain()
{
	var i, c;
	if ( AutoSustain ) {
		for (c = 0; c < NbCourbes; c++) {
			for (i = 0; i < f[c].np; i++) {
				if (f[c].np < 3)
					break;

				if (i == f[c].np - 2)
					f[c].pa[i].sustain = 1;
				else
					f[c].pa[i].sustain = 0;
			}
		}
	}
}
ApplyAutoSustain.local = 1;

function MyAddPoints(courbe, liste)
{	
	var i;
	// ça commence à 1 car le premier élément est addfunctions
	// Nombre d'élément réel dans la liste / 2 pour vérifier qu'il y a bien un nombre pair
	for (i = 1; i < (Math.floor((liste.length - 1) / 2) * 2); i += 2) {
		courbe.pa[courbe.np++] = new Point( val2x(courbe, liste[i]), val2y(courbe, liste[i+1]), liste[i], liste[i+1]);
	}
	
	sortingPoints(courbe);
	DoNotify();
	askForDrawFunctions();
}
MyAddPoints.local = 1;

function syncfunctions()
{
	var courbe = f[arguments[0]];
	
	courbe.name = arguments[1];
	courbe.domain[0] = arguments[2];
	courbe.domain[1] = arguments[3];
	courbe.range[0] = arguments[4];
	courbe.range[1] = arguments[5];

	MyThings2Zoom(courbe);
	pixel2machin(courbe);
	
	askForNotify();
	askForDrawingAll();
}

function syncpoints()
{
	var courbe = f[arguments[0]];
	courbe.pa = new Array();	// clear every points
	
	for (var i = 0; i < ((arguments.length - 1) / 3); i++) {
		courbe.pa[i] = new Point(	val2x(courbe, arguments[i*3+1]),
									val2y(courbe, arguments[i*3+2]),
									arguments[i*3+1],
									arguments[i*3+2]
								);
		courbe.pa[i].fix = (arguments[i*3+3] & 1) == 1;
		courbe.pa[i].sustain = (arguments[i*3+3] & 2) == 2;
	}
	courbe.np = courbe.pa.length;

	askForNotify();
	askForDrawingAll();
}

function sync()
{
	if (arguments.length == 0) {
		outlet(DUMP_OUTLET, "nbfunctions", f.length);
	
		for (var c = 0; c < f.length; c++) {
			outlet(DUMP_OUTLET, getSyncCourbe(c));
	
			if (f[c].np > 0)
				outlet(DUMP_OUTLET, getSyncPoints(c));
		}
	} else
		sync2send(arguments[0]);
}

function sync2send(sendName)
{
	messnamed(sendName, "nbfunctions", f.length);

	for (var c = 0; c < f.length; c++) {
		g.syncThings = getSyncCourbe(c);
		g.sendnamed(sendName, "syncThings");

		if (f[c].np > 0) {
			g.syncThings = getSyncPoints(c);
			g.sendnamed(sendName, "syncThings");
		}
	}
}
sync2send.local = 1;

function synccurrent()
{
	if (arguments.length == 0) {
		outlet(DUMP_OUTLET, getSyncCourbe(front));
		
		if (f[front].np > 0)
			outlet(DUMP_OUTLET, getSyncPoints(front));
	} else 
		syncCurrent2Send(arguments[0]);
}

function syncCurrent2Send(sendName)
{
	g.syngThings = getSyncCourbe(front);
	g.sendnamed(sendName, "syncThings");
	
	if (f[front].np > 0) {
		g.syncThings = getSyncPoints(front);
		g.sendnamed(sendName, "syncThings");
	}
}
syncCurrent2Send.local = 1;

function getSyncCourbe(courbeIdx)
{
	return [ "syncfunctions", courbeIdx, f[courbeIdx].name, f[courbeIdx].domain[0], f[courbeIdx].domain[1], f[courbeIdx].range[0], f[courbeIdx].range[1] ];
}
getSyncCourbe.local = 0;

function getSyncPoints(courbeIdx)
{
	var tmp = new Array((f[courbeIdx].np * 3) + 2);
	var idx = 0;
	tmp[idx++] = "syncpoints";
	tmp[idx++] = courbeIdx; // the first thing is the ID of the function
	
	for (var i = 0; i < f[courbeIdx].np; i++) {
		tmp[idx++] = f[courbeIdx].pa[i].valx;
		tmp[idx++] = f[courbeIdx].pa[i].valy;
		tmp[idx++] = f[courbeIdx].pa[i].sustain * 2 + f[courbeIdx].pa[i].fix;
	}
	
	return tmp;
}
getSyncPoints.local = 0;

function MyDomain(start, stop, courbe)
{
	if (start >= stop) {
		ejies.error(this, "bad values for message domain: min must be lower than max");
		return;
	}
	
	var i;

	courbe.domain[0] = start;
	courbe.domain[1] = stop;

	MyDomain2Zoom(courbe);
	pixel2machin(courbe);
	
	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
	}

	DoNotify();
	askForDrawFunctions();
}
MyDomain.local = 1;

function MyDomain2Zoom(courbe)
{
	courbe.ZoomX[0] = courbe.domain[0];
	courbe.ZoomX[1] = courbe.domain[1];
}
MyDomain2Zoom.local = 1;

function MyRange2Zoom(courbe)
{
	courbe.ZoomY[0] = courbe.range[0];
	courbe.ZoomY[1] = courbe.range[1];
}
MyRange2Zoom.local = 1;

function MyThings2Zoom(courbe)
{
	MyDomain2Zoom(courbe);
	MyRange2Zoom(courbe);
}
MyThings2Zoom.local = 1;

function MySetDomain(start, stop, courbe)
{
	if (start >= stop) {
		ejies.error(this, "bad values for message domain: min must be lower than max");
		return;
	}

	var i;
	
	courbe.domain[0] = start;
	courbe.domain[1] = stop;

	MyDomain2Zoom(courbe);
	pixel2machin(courbe);
	
	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].valx = x2val(courbe, courbe.pa[i].x);
	}

	DoNotify();

	// Si la grille est activée, changer le domain doit redessiner la grille
	if (GridMode)
		askForDrawFunctions();
}
MySetDomain.local = 1;

function MyAutoRange(courbe)
{
	var i, min, max;

	if (courbe.np < 2 )
		return;

	min = courbe.pa[0].valy;
	max = courbe.pa[0].valy;
	for(i = 1; i < courbe.np; i++) {
		if (courbe.pa[i].valy > max)
			max = courbe.pa[i].valy;
		if (courbe.pa[i].valy < min)
			min = courbe.pa[i].valy;
	}
	if (min == max)	// si le minimum et le maximum sont identiques... on arrête.
		return;

	range(min, max, courbe);
}
MyAutoRange.local = 1;

function MyAutoDomain(courbe)
{
	var i, min, max;

	if (courbe.np < 2 )
		return;

	min = courbe.pa[0].valx;
	max = courbe.pa[0].valx;
	for(i = 1; i < courbe.np; i++) {
		if (courbe.pa[i].valx > max)
			max = courbe.pa[i].valx;
		if (courbe.pa[i].valx < min)
			min = courbe.pa[i].valx;
	}
	if (min == max)	// si le minimum et le maximum sont identiques... on arrête.
		return;

	MyDomain(min, max, courbe);
}
MyAutoDomain.local = 1;

function MyPasteColors(courbe)
{
	var c, j, idx;
	var cp = g["copycolors"];
	idx = 0;
	
	if (cp.length == 0) {
		ejies.error(this, "before pasting colors, you have to copy something");
		return;
	}
	
	for (j=0; j < 3; j++) { courbe.brgb[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.frgb[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb2[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb3[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb4[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb5[j] = cp[idx++]; }

	drawAll();
}
MyPasteColors.local = 1;

function WriteDialog()
{
	// open a standart dialog box to save the file
	var savedialog, prepend;
	savedialog = this.patcher.newdefault(box.rect[0], box.rect[1] - 50, "savedialog", "TEXT");
	prepend = this.patcher.newdefault(box.rect[0], box.rect[1] - 25, "prepend", "write");
	savedialog.hidden = 1;
	prepend.hidden = 1;
	
	this.patcher.hiddenconnect(savedialog, 0, prepend, 0);	
	this.patcher.hiddenconnect(prepend, 0, this.box, 0);
	
	savedialog.message("bang");
	this.patcher.remove(savedialog);
	this.patcher.remove(prepend);
}
WriteDialog.local = 1;

function ReadDialog()
{
	var opendialog, prepend, prepend2;
	opendialog = this.patcher.newdefault(box.rect[0], box.rect[1] - 50, "opendialog", "TEXT");
	prepend = this.patcher.newdefault(box.rect[0], box.rect[1] - 25, "prepend", "read");
	prepend2 = this.patcher.newdefault(box.rect[0] + 50, box.rect[1] - 25, "prepend", "DeleteReadThings");
	opendialog.hidden = 1;
	prepend.hidden = 1;
	prepend2.hidden = 1;

	this.patcher.hiddenconnect(opendialog, 0, prepend, 0);
	this.patcher.hiddenconnect(prepend, 0, this.box, 0);
	this.patcher.hiddenconnect(opendialog, 1, prepend2, 0);
	this.patcher.hiddenconnect(prepend2, 0, this.box, 0);
	
	// on en a besoin pour la suppression
	ReadDialogObjectRef[0] = opendialog;
	ReadDialogObjectRef[1] = prepend;
	ReadDialogObjectRef[2] = prepend2;
	
	OpendialogPrepend = 1;
	
	opendialog.message("bang");
}
ReadDialog.local = 1;

function DeleteReadThings()
{
	// pour l'opération de suppression quand on vient de read...
	// pour une raison qui m'échappe...
	// il faut délayer...
	tskDel = new Task(function() {
		if ( ! tskDel.running) {
			var i;
			for (i = 0; i < ReadDialogObjectRef.length; i++)
				this.patcher.remove(ReadDialogObjectRef[i]);
		}
	}, this);
		
	tskDel.interval = 100;
	tskDel.repeat(1);
	
	OpendialogPrepend = 0;	// réinitialisation du flag
}

function MyRemoveDuplicate(courbe)
{
	var i, flag;
	var ReturnState = 0;

	for (i = 1; i < (courbe.np - 1); i++) {
		// suppression du point du milieu s'il est encadré par 2 valeurs identiques
		if ( courbe.pa[i-1].valy == courbe.pa[i].valy && courbe.pa[i+1].valy == courbe.pa[i-1].valy) {
			DeletePoint(courbe, i);
			i = Math.max(0, i - 2); // la prochaine fois qu'on rentre dans la boucle for ça commencera à partir de ce point
			ReturnState = 1;
		}
	}
	
	if ( ReturnState ) {
		DoNotify();
		askForDrawFunctions();
	}
}
MyRemoveDuplicate.local = 1;

function MySmooth(courbe)
{
	var i;
	
	for (i = 1; i < (courbe.np - 1); i++) {
		courbe.pa[i].valy = courbe.pa[i-1].valy*0.15 + courbe.pa[i].valy*0.7 + courbe.pa[i+1].valy*0.15;
		courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
	}

	DoNotify();
	askForDrawFunctions();
}
MySmooth.local = 1;

function pixel2machin(courbe)
{
	courbe.PixelDomain = (courbe.ZoomX[1] - courbe.ZoomX[0]) / (SketchFunctions.size[0]-(Bordure*2));
	courbe.PixelRange = (courbe.ZoomY[1] - courbe.ZoomY[0]) / (SketchFunctions.size[1]-((Bordure*2)));
}
pixel2machin.local = 1.;

function AllPixel2Machin()
{
	var c;
	for (c = 0; c < NbCourbes; c++) {
		pixel2machin(f[c]);
	}
}
AllPixel2Machin.local = 1;

function AddOnePoint(courbe, x, y)
{
	var tmp = courbe.np;	// si tmp n'est pas modifié c'est que c'est la plus grande valeur...
	var i;

	if (courbe.np == 0) {	// cas particulier quand il n'y a pas de point dans la courbe
		courbe.pa[0] = new Point(x,y, x2val(courbe, x), y2val(courbe, y));
		tmp = 0;
	}
	else {
		for (i = 0; i < courbe.np; i++) {
			if (courbe.pa[i].x > x) {
				tmp = i;
				break;
			}
		}
		courbe.pa.splice(tmp, 0, new Point(x,y, x2val(courbe, x), y2val(courbe, y)) );	// insère un point
	}
	
	courbe.np++;	// on incrémente car il y a un point supplémentaire dans la courbe

	return tmp;		// valeur de retour utilisée comme seleected point
}
AddOnePoint.local = 1;

function DeletePoint(courbe, lequel)
{
 	if (! courbe.pa[lequel].fix) {
		courbe.pa.splice(lequel, 1);
		courbe.np--;
	}
}
DeletePoint.local = 1;

function MovePoint(courbe, lequel, newx, newy)
{
	if (lequel >= courbe.np) {
		ejies.error(this, "no point", lequel,"in function", courbe.name);
		return;
	}
	courbe.pa[lequel].valx = newx;
	courbe.pa[lequel].valy = newy;					
	courbe.pa[lequel].x = val2x(courbe, newx);
	courbe.pa[lequel].y = val2y(courbe, newy);

	sortingPoints(courbe);	// il faut maintenant remettre tous les points dans l'ordre
	ApplyAutoSustain();
}
MovePoint.local = 1;

function Switchfront(sens)
{
		if( sens )		// avec shift on tourne dans l'autre sens
			front = (front - 1 + NbCourbes) % NbCourbes;
		else
			front = (front + 1) % NbCourbes;
		
		outlet(DUMPOUT, "display", front);
		drawAll();
}
Switchfront.local = 1;

function frontOrArgument(c, a, combien)
{
	if ( a.length > combien)
		return c;
	else
		return f[front];
}
frontOrArgument.local = 1;

function sortingPoints(courbe)
{
	if (courbe.np < 7)
		insertSort(courbe, 0, courbe.np - 1);
	else
		quickSort(courbe, 0, courbe.np - 1);
}
sortingPoints.local = 1;

function SortBulle(courbe)
{
	// plus utilisée...
	// la méthode bulle pour mettre dans l'ordre... :-)
	var i, bulle;
	var max = courbe.np - 2;
	var tmp = new Point();
	
	do {
		bulle = 0;
		
		for (i=0; i <= max; i++) {
			if ( courbe.pa[i].x > courbe.pa[i+1].x ) {
				swapPoints(courbe, i, i + 1);
				bulle = 1;
			}
		}
	} while (bulle);
	
}
SortBulle.local = 1;

function insertSort(courbe, l, r)
{
	// si il y a moins de 7 points, insert est plus rapide
	var i = 0;
	var j;
	var key = new Point();

	for (j = l + 1; j <= r; j++) {
		key = courbe.pa[j];
		i = j - 1;
		while ((i >= l) && (courbe.pa[i].x > key.x)) {
			courbe.pa[i + 1] = courbe.pa[i];
			i = i - 1;
		}
		courbe.pa[i + 1] = key;
	}
}
insertSort.local = 1;

function quickSort(courbe, g, d)
{
	// recursif et tout et tout...
	// merci wikipedia...
	var i, j, v;
	
	if (d > g) {
		v = courbe.pa[d].x;
		i = g - 1;
		j = d;
		while(true) {
			while ((++i <= d) && (courbe.pa[i].x < v)) { ; };
			while ((--j >= g) && (courbe.pa[j].x > v)) { ; };
			if (i > j) break;	// now it's stable
			swapPoints(courbe, i, j);
		}
		swapPoints(courbe, i, d);
		quickSort(courbe, g, i-1);
		quickSort(courbe, i+1, d);
	}
}
quickSort.local = 1;

function swapPoints(courbe, num1, num2)
{
	swapPoints.tmp = courbe.pa[num1];
	courbe.pa[num1] = courbe.pa[num2];
	courbe.pa[num2] = swapPoints.tmp;
}
swapPoints.local = 1;

function RedrawOrNot(v)
{
	if ( v == -1) {
		tskDraw.cancel();		// arrêt de la task précédente
		WaitALittleBit();	// si pas de point sélectionné on attend un peu avant de faire draw()
	} else {
		if (RedrawOrNot.DidYouDraw == 0 || v != RedrawOrNot.LastValue) { // soit l'affichage a déjà été fait (== 0), soit le point est différent
			drawText();
			RedrawOrNot.DidYouDraw = 1;
		}
		tskDraw.cancel();
		RedrawOrNot.LastValue = v;
	}
}
RedrawOrNot.local = 1;

function WaitALittleBit()
{
	tskDraw.cancel();
	// attend 750ms avant de redessiner
	tskDraw = new Task(function() { if (! tskDraw.running) { drawText(); RedrawOrNot.DidYouDraw = 0; }  }, this);
	tskDraw.interval = 750;
	tskDraw.repeat(1);
}
WaitALittleBit.local = 1;

function ArgsParser(courbe, msg, a) 
{
/* 	var tmpReturn = -1; */
/* 	var NeedDraw = 0;	// pour savoir si on doit réafficher */
	var NeedNotify = -1;	// pour savoir si on doit mettre à jour psto

	if ( typeof(a[0]) == "number") {
	// en fonction du nombre d'arguments 1 (interpolationX-Y) 2 (AddPoint) 3 (MovePoint)
		switch (a.length) {
			case 1: interp(courbe, a[0]); break;
			case 2: AddOnePoint(courbe, val2x(courbe, a[0]), val2y(courbe, a[1])); askForDrawFunctions(); break;
			case 3: MovePoint(courbe, a[0], a[1], a[2]); askForDrawFunctions(); break;
			default: ejies.error(this, "too many arguments for message", msg); break;
		}
		return 0;	// sort de la fonction
	}

	switch (a[0]) {
		case "bang":		line(courbe); break;
		case "clear":		a.length == 1 ? MyClear(courbe) : MyClear(courbe, a); break;
		case "clearsustain":	MyClearSustain(courbe); break;
		case "dump":		a.length == 2 ? MyDump(courbe, a[1]) : MyDump(courbe); break;
		case "listdump":	a.length == 2 ? MyListDump(courbe, a[1]) : MyListDump(courbe); break;
		case "addpoints":	MyAddPoints(courbe, a); break;
		case "fix":			if (a.length == 3) { FixPoint(courbe, a[1], a[2]); } ; break;
		case "unfix":		MyUnfix(courbe); break;
		case "name":		if (a.length == 2) { MyName(courbe, a[1]);} ; getname(); break;
		case "next":		MyNext(courbe); break;
		case "nth":			if (a.length == 2) { MyNth(a[1], courbe); } ; break;
		case "sustain":		if (a.length == 3) { MySustain(a[1], a[2], courbe); } ; break;
		case "domain":
							if (a.length == 2)
								MyDomain(0, a[1], courbe);
							else if (a.length == 3)
								MyDomain(a[1], a[2], courbe);
							else
								ejies.error(this, "bad argument(s) for message domain"); 
							NeedNotify++; break;
		case "setdomain":	
							if (a.length == 2)
								MySetDomain(0, a[1], courbe);
							else if (a.length == 3)
								MySetDomain(a[1], a[2], courbe);
							else
								ejies.error(this, "bad argument(s) for message setdomain");
							NeedNotify++; break;
		case "range":		if (a.length == 3) { range(a[1], a[2], courbe); } break;
		case "setrange":	if (a.length == 3) { setrange(a[1], a[2], courbe); } break;
		case "zoom_x":		zoom_x(a[1], a[2], courbe); break;
		case "zoom_y":		zoom_y(a[1], a[2], courbe); break;
		case "normalize":	MyNormalize(courbe); break;
		case "normalize_x":	MyNormalizeX(courbe); break;
		case "normalize_y":	MyNormalizeY(courbe); break;
		case "flip":		MyFlip(courbe); break;
		case "flip_x":		MyFlipX(courbe); break;
		case "flip_y":		MyFlipY(courbe); break;
		case "zoomout":		MyZoomOut(courbe); break;
		case "autodomain":	MyAutoDomain(courbe); break;
		case "autorange":	MyAutoRange(courbe); break;
		case "removeduplicate": 	MyRemoveDuplicate(courbe); break;
		case "smooth":		MySmooth(courbe); break;
		case "gridstep":	if (a.length == 2) { MyGridStep(courbe, a[1]); }; break;
		case "brgb":		SetColor(courbe, "brgb", a[1], a[2], a[3]); drawAll(); break;
		case "frgb":		SetColor(courbe, "frgb", a[1], a[2], a[3]); askForDrawFunctions(); break;
		case "rgb2":		SetColor(courbe, "rgb2", a[1], a[2], a[3]); askForDrawFunctions(); break;
		case "rgb3":		SetColor(courbe, "rgb3", a[1], a[2], a[3]); askForDrawFunctions(); break;
		case "rgb4":		SetColor(courbe, "rgb4", a[1], a[2], a[3]); drawText(); break;
		case "rgb5":		SetColor(courbe, "rgb5", a[1], a[2], a[3]); askForDrawFunctions(); break;


		case "pastefunction":	MyPasteFunction(courbe); break;
		case "pastecolors":	MyPasteColors(courbe); break;

		// get things
		case "getdomain":	getdomain(courbe); break;
		case "getrange":	getrange(courbe); break;
		case "getfix":		getfix(courbe); break;
		case "getsustain":	getsustain(courbe); break;
		case "getgridstep":	getgridstep(courbe); break;
		case "getbrgb":		GetColor(courbe, "brgb"); break;
		case "getfrgb":		GetColor(courbe, "frgb"); break;
		case "getrgb2":		GetColor(courbe, "rgb2"); break;
		case "getrgb3":		GetColor(courbe, "rgb3"); break;
		case "getrgb4":		GetColor(courbe, "rgb4"); break;
		case "getrgb5":		GetColor(courbe, "rgb5"); break;
		case "getnbpoints":	getnbpoints(courbe); break;
		case "getzoom_x":	getzoom_x(courbe); break;
		case "getzoom_y":	getzoom_y(courbe); break;

		default: 			// message d'erreurs en fonction du type de message all ou pas
							if (msg == "all") {
								if (DisplayOneTime == 1) {
									ejies.error(this, "bad arguments for message all");
									DisplayOneTime = 0;
								}
							} else {
								ejies.error(this, "doesn't understand", a[0]);
								return 0;
							}
							break;
	}
	
/* 	if (NeedNotify == -1) */
/* 		return -1; */
/* 	else */
/* 		return 1; */
}
ArgsParser.local = 1;

function FixPoint(courbe, WhichPoint, state)
{
	if ( (state == 0 || state == 1 ) && (WhichPoint >= 0 && WhichPoint < courbe.np) ) {
		courbe.pa[WhichPoint].fix = state;
		DoNotify();
	} else
		ejies.error(this, "bad argument for message fix");
}
FixPoint.local = 1;

function MyNext(courbe)
{
	var i, idx;
	var tmpArray = new Array();
	
	var OldNextFrom = courbe.NextFrom;
	
	if (courbe.NextFrom == 0) {
		line(courbe);
		return;
	}
	
	for (i = (courbe.NextFrom + 1), idx = 0; i < courbe.np; i++) {
		tmpArray[idx++] = courbe.pa[i].valy;
		tmpArray[idx++] = courbe.pa[i].valx - courbe.pa[i-1].valx;
		if (courbe.pa[i].sustain) {
			courbe.NextFrom = i;
			break;
		}
	}
	
	if (OldNextFrom == courbe.NextFrom)	// il n'y a plus de sustain...
		courbe.NextFrom = 0;
	
	outlet(LINE_OUTLET, courbe.name, tmpArray);
}
MyNext.local = 1;

function MyNth(courbe, v)
{
	if (v >= 0 && v < courbe.np)
		outlet(INTERP_OUTLET, courbe.name, courbe.pa[v].valy)
}
MyNth.local = 1;

function MySustain(point, state, courbe)
{
	if ( state == 1 || state == 0 ) {
		if (point >= 0 && point < courbe.np) {
			courbe.pa[point].sustain = state;
			DoNotify();
			askForDrawFunctions();
		} else
			ejies.error(this, "no point", point, "(sustain operation aborted)" );
	} else
		ejies.error(this, "bad arguments for message sustain");
}
MySustain.local = 1;

function MyClear(courbe, v)
{
	if (arguments.length == 1) {
		courbe.pa.splice(0, courbe.np - 1);
		courbe.np = 0;
	} else {
		var i, j;
		var ListeASupprimer = new Array();
		
/* 		Il est possible que le premier élément de v[] soit clear si ça vient de ArgParser */
		for (i = 0, j = 0; i < v.length; i++) {
			if (v[i] >= 0 && v[i] < courbe.np) {
				ListeASupprimer[j++] = v[i];
			}
		}
		ListeASupprimer.sort(InverseSorting);
		
		for (i = 0; i < ListeASupprimer.length; i++) {
			courbe.pa.splice(ListeASupprimer[i], 1)
			courbe.np--;
		}
	}
	DoNotify();
	askForDrawFunctions();
}
MyClear.local = 1;

function InverseSorting(a, b)
{
   return b - a; // sort des Nombres de manières décroissantes 
}
InverseSorting.local = 1;

function MyClearSustain(courbe)
{
	var i;
	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].sustain = 0;
	}
	DoNotify();
	askForDrawFunctions();
}
MyClearSustain.local = 1;

function MyColor2Float(r, g, b)
{
	var tmpArray = new Array(3);
	tmpArray[0] = r/255.;
	tmpArray[1] = g/255.;
	tmpArray[2] = b/255.;	
	return tmpArray;
}
MyColor2Float.local = 1;

function MyFloat2Color(qui)
{
	var tmpArray = new Array(3);
	tmpArray[0] = Math.round(qui[0]*255.);
	tmpArray[1] = Math.round(qui[1]*255.);
	tmpArray[2] = Math.round(qui[2]*255.);
	return tmpArray; 
}
MyFloat2Color.local = 1;

function MyGridStep(courbe, v)
{
	if (typeof(v) == "number" && v > 0) {
		if ( ((courbe.ZoomX[1] - courbe.ZoomX[0]) / v) < (BoxWidth-(Bordure*2) / 4) ) {
			courbe.GridStep = v;
			DoNotify();
			if (GridMode)
				askForDrawFunctions();
		}
	} else
		ejies.error(this, "bad argument for message gridstep");
}
MyGridStep.local = 1;


function MyDump(courbe, sendname)
{
/* 	var tmpF = courbe; */
	var i, str;
	
	if (! courbe.np)
		return;

	if (arguments.length == 1) {
		for (i = 0; i < courbe.np; i++) {
			outlet(DUMP_OUTLET, courbe.name, courbe.pa[i].valx, courbe.pa[i].valy);
		}
		return;
	}
	//else -> on envoie vers un send
	for (i = 0; i < courbe.np; i++) {
		g.dump = [ courbe.name, courbe.pa[i].valx, courbe.pa[i].valy ];
		g.sendnamed(sendname,"dump");
	}
}
MyDump.local = 1;

function MyDumpMatrix(courbe)
{
	var p;


	// il faut au moins un point pour sortir
	if (courbe.np) {
		var Matrix = new JitterMatrix(1, "float32", 2, courbe.np);
		
		for (p = 0; p < courbe.np; p++) {
			Matrix.setcell2d(0, p, courbe.pa[p].valx);
			Matrix.setcell2d(1, p, courbe.pa[p].valy);
		}
		
		outlet(DUMP_OUTLET, "jit_matrix", Matrix.name);
	}
}
MyDumpMatrix.local = 1;

function MyListDump(courbe, sendname)
{
/* 	var tmpF = courbe; */
	var tmpArray = new Array();
	var i, idx;
	
	if (! courbe.np)
		return;
	
	for (i = 0, idx = 0; i < courbe.np; i++) {
		tmpArray[idx++] = courbe.pa[i].valx;
		tmpArray[idx++] = courbe.pa[i].valy;
	}
	
	// sortie limitée à 4095 éléments (4094 + nom de la fonction)
	if (tmpArray.length > 4094) {
		ejies.error(this, "listdump aborted: too many points... use dump instead for now.");
		return;
	}
	
	if (arguments.length == 1) {
		outlet(DUMP_OUTLET, courbe.name, tmpArray);
		return;
	}

	// else -> on envoie vers un send
	tmpArray.unshift(courbe.name);
	g.listdump = tmpArray;
	g.sendnamed(sendname, "listdump");
}
MyListDump.local = 1;

function MyName(courbe, name)
{
	if (typeof(name) == "string")
		courbe.name = name;
	else {
		ejies.error(this, "function name must be a symbol");
		return;
	}
	
	DoNotify();
	drawText();
}
MyName.local = 1;

function SetColor(intOrcourbe, which, a, b, c)
{
	// which : quelle couleur (string), a arguments (Array)
	var tmpA = new Array();
	var courbe = new Object();
	
	if (typeof(intOrcourbe) == "number")
		courbe = f[intOrcourbe];
	else
		courbe = intOrcourbe;
		
	if (arguments.length == 5)
		tmpA = [a,b,c];
	else
		tmpA = a;
	
	if (tmpA.length == 3 && (typeof(tmpA[0]) == "number") && (typeof(tmpA[1]) == "number") && (typeof(tmpA[2]) == "number") )
		courbe[which] = MyColor2Float(tmpA[0], tmpA[1], tmpA[2]);
	else
		ejies.error(this, "bad arguments for message", which);
}
//SetColor.local = 1; // utilisée par embedmessage c'est pourquoi il ne faut pas qu'elle soit locale

function GetColor(courbe, which)
{
	outlet(DUMPOUT, courbe.name, which, MyFloat2Color(courbe[which]));
}
GetColor.local = 1;

function MyUnfix(courbe)
{
	var i;
	for (i = 0; i < courbe.np; i++)
		courbe.pa[i].fix = 0;
}
MyUnfix.local = 1;



//////////////// Fonctions "Extérieures" ///////////////
function all()
{
	var i;
	var OldRedrawState = RedrawEnable;
	NeedNotify = 0;
	DisplayOneTime = 1;
	RedrawEnable = 0;
	NotifyEnable = 0;
	
	for (i = 0, tmp = 0; i < NbCourbes; i++) {
		ArgsParser(f[i], "all" , arguments, "\n");
	}

	RedrawEnable = OldRedrawState;
	NotifyEnable = 1;

	// pattr notification
	DoNotify();
		
	// affichage
	if ( (drawFunctions.display + drawText.display) == 2)
		drawAll();
	else if (drawText.display)
		drawText();
	else if (drawFunctions.display)
		askForDrawFunctions();
}

function addpoints()
{
	MyAddPoints(f[front], arrayfromargs(messagename, arguments));
}

function args4insp()
{
	//
	ejies.error(this, "since 1.52 the parameters are embed with the patcher. Use the inspector insteed.");
	return;
	
	var i, j;
	var idx = 0;
	var tmpArray = new Array();
	tmpArray[idx++] = "args4insp";
	
	tmpArray[idx++] = NbCourbes;
	tmpArray[idx++] = LegendState;
	tmpArray[idx++] = GridMode;
	tmpArray[idx++] = Snap2GridState;
	tmpArray[idx++] = HiddenPointDisplay;
	tmpArray[idx++] = ClickAdd;
	tmpArray[idx++] = ClickMove;
	tmpArray[idx++] = AutoSustain;
	tmpArray[idx++] = TimeFlag;

	for (i = 0; i < NbCourbes; i++) {
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].brgb[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].frgb[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].rgb2[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].rgb3[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].rgb4[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(f[i].rgb5[j] * 255); }
	}

	outlet(DUMPOUT, tmpArray);
}

function autosustain(v)
{
	if (v != 0 && v != 1) {
		ejies.error(this, "autosustain doesn't understand", v);
		return;
	}
	AutoSustain = v;
}

function autorange()	{	MyAutoRange(f[front]);	}
function autodomain()	{	MyAutoDomain(f[front]);	}
function normalize()	{	MyNormalize(f[front]);	}
function normalize_x()	{	MyNormalizeX(f[front]);	}
function normalize_y()	{	MyNormalizeY(f[front]);	}
function flip()			{	MyFlip(f[front]);		}
function flip_x()		{	MyFlipX(f[front]);		}
function flip_y()		{	MyFlipY(f[front]);		}


function MyFlip(courbe)
{
	var tmpX, tmpY, tmpSustain, tmpFix;
	
	// swap points so there's no need to reorder after (avoid the "same x value" problem for the ordering)
	for (var i = 0; i < Math.round(courbe.np / 2); i++) {
		if (i == courbe.np - i - 1) { // odd number of points (the middle stay at the middle position)
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[i].valx;
			courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
			courbe.pa[i].valy = (courbe.range[0] + courbe.range[1]) - courbe.pa[i].valy;
			courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
		} else {
			tmpX = courbe.pa[i].valx;
			tmpY = courbe.pa[i].valy;
			tmpSustain = courbe.pa[i].sustain;
			tmpFix = courbe.pa[i].fix;
			
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[courbe.np - i - 1].valx;
			courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
			courbe.pa[i].valy = (courbe.range[0] + courbe.range[1]) - courbe.pa[courbe.np - i - 1].valy;
			courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
			courbe.pa[i].sustain = courbe.pa[courbe.np - i - 1].sustain;
			courbe.pa[i].fix = courbe.pa[courbe.np - i - 1].fix;
	
			courbe.pa[courbe.np - i - 1].valx = (courbe.domain[0] + courbe.domain[1]) - tmpX;
			courbe.pa[courbe.np - i - 1].x = val2x(courbe, courbe.pa[courbe.np - i - 1].valx);
			courbe.pa[courbe.np - i - 1].valy = (courbe.range[0] + courbe.range[1]) - tmpY;
			courbe.pa[courbe.np - i - 1].y = val2y(courbe, tmpY);
			courbe.pa[courbe.np - i - 1].sustain = tmpSustain;
			courbe.pa[courbe.np - i - 1].fix = tmpFix;
		}		
	}

	ApplyAutoSustain();

	askForDrawFunctions();
	askForNotify();
}
MyFlip.local = 1;


function MyFlipX(courbe)
{
	var tmpX, tmpY, tmpSustain, tmpFix;
	
	// swap points so there's no need to reorder after (avoid the "same x value" problem for the ordering)
	for (var i = 0; i < Math.round(courbe.np / 2); i++) {
		if (i == courbe.np - i - 1) { // odd number of points (the middle stay at the middle position)
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[i].valx;
			courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
		} else {
			tmpX = courbe.pa[i].valx;
			tmpY = courbe.pa[i].valy;
			tmpSustain = courbe.pa[i].sustain;
			tmpFix = courbe.pa[i].fix;
			
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[courbe.np - i - 1].valx;
			courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
			courbe.pa[i].valy = courbe.pa[courbe.np - i - 1].valy;
			courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
			courbe.pa[i].sustain = courbe.pa[courbe.np - i - 1].sustain;
			courbe.pa[i].fix = courbe.pa[courbe.np - i - 1].fix;
	
			courbe.pa[courbe.np - i - 1].valx = (courbe.domain[0] + courbe.domain[1]) - tmpX;
			courbe.pa[courbe.np - i - 1].x = val2x(courbe, courbe.pa[courbe.np - i - 1].valx);
			courbe.pa[courbe.np - i - 1].valy = tmpY;
			courbe.pa[courbe.np - i - 1].y = val2y(courbe, tmpY);
			courbe.pa[courbe.np - i - 1].sustain = tmpSustain;
			courbe.pa[courbe.np - i - 1].fix = tmpFix;
		}		
	}

	ApplyAutoSustain();

	askForDrawFunctions();
	askForNotify();
}
MyFlipX.local = 1;

function MyFlipY(courbe)
{
	for (var i = 0; i < courbe.np; i++) {
		courbe.pa[i].valy = (courbe.range[0] + courbe.range[1]) - courbe.pa[i].valy;
		courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
	}

	askForDrawFunctions();
	askForNotify();
}
MyFlipY.local = 1;

function MyNormalizeX(courbe)
{
	if (courbe.np < 2)
		return;

	var min = courbe.domain[1]
	var max = courbe.domain[0];
	var i;
	
	for (i = 0 ; i < courbe.np; i++) {
		if (courbe.pa[i].valx < min)
			min = courbe.pa[i].valx;
		if (courbe.pa[i].valx > max)
			max = courbe.pa[i].valx;
	}
	
	if (min != max) {
		ApplyNormalizeX(courbe, min, max);
		DoNotify();
		askForDrawFunctions();
	}
}
MyNormalizeX.local = 1;

function ApplyNormalizeX(courbe, min, max)
{
	// method used in MyNormalize and MyNormalizeX
	var range = (courbe.domain[1] - courbe.domain[0]) / (max - min);
	var offset = 0 - min;

	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].valx = (courbe.pa[i].valx + offset) * range - (0 - courbe.domain[0]);
		courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
	}
}
ApplyNormalizeX.local = 1;

function MyNormalizeY(courbe)
{
	if (courbe.np < 2)
		return;
		
	var min = courbe.range[1]
	var max = courbe.range[0];
	var i;
	
	for (i = 0 ; i < courbe.np; i++) {
		if (courbe.pa[i].valy < min)
			min = courbe.pa[i].valy;
		if (courbe.pa[i].valy > max)
			max = courbe.pa[i].valy;
	}
	
	if (min != max) {
		ApplyNormalizeY(courbe, min, max);	
		DoNotify();
		askForDrawFunctions();
	}
}
MyNormalizeY.local = 1;

function ApplyNormalizeY(courbe, min, max)
{
	// method used in MyNormalize and MyNormalizeY
	var range = (courbe.range[1] - courbe.range[0]) / (max - min);
	var offset = 0 - min;

	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].valy = (courbe.pa[i].valy + offset) * range - (0 - courbe.range[0]);
		courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
	}
}
ApplyNormalizeY.local = 1;

function MyNormalize(courbe)
{
	if (courbe.np < 2)
		return;

	var minX = courbe.domain[1]
	var maxX = courbe.domain[0];
	var minY = courbe.range[1]
	var maxY = courbe.range[0];
	var i;
	
	// process in one loop
	for (i = 0 ; i < courbe.np; i++) {
		if (courbe.pa[i].valy < minY)
			minY = courbe.pa[i].valy;
		if (courbe.pa[i].valy > maxY)
			maxY = courbe.pa[i].valy;
		if (courbe.pa[i].valx < minX)
			minX = courbe.pa[i].valx;
		if (courbe.pa[i].valx > maxX)
			maxX = courbe.pa[i].valx;
	}
	
	if (minX == maxX && minY == maxY)
		return;	//two points at the same xy min/max
	if (minX == maxX)
		ApplyNormalizeY(courbe, minY, maxY);	// points have the same X min/max position so process only a normalize on Y
	else if (minY == maxY)
			ApplyNormalizeX(courbe, minX, maxX);// points have the same Y min/max position so process only a normalize on X
	else
	{
		// most front case
		var rangeX = (courbe.domain[1] - courbe.domain[0]) / (maxX - minX);
		var offsetX = 0 - minX;
		var rangeY = (courbe.range[1] - courbe.range[0]) / (maxY - minY);
		var offsetY = 0 - minY;
		
		for (i = 0; i < courbe.np; i++) {
			courbe.pa[i].valx = (courbe.pa[i].valx + offsetX) * rangeX - (0 - courbe.domain[0]);
			courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
			courbe.pa[i].valy = (courbe.pa[i].valy + offsetY) * rangeY - (0 - courbe.range[0]);
			courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
		}
	}
	DoNotify();
	askForDrawFunctions();
}
MyNormalize.local = 1;

function autocursor(v)
{
	if (v != 0 && v != 1)
		ejies.error(this, "autocursor doesn't understand", v);
	else
		CursorChange = v;
}

function addfunction()
{
	if (arguments.length != 1) {
		ejies.error(this, "missing argument (name) for message addfunction");
		return;
	}
	
	var tmp = f.length;
	
	f[tmp] = new Courbe(arguments[0]);
	NbCourbes++;
	pixel2machin(f[tmp]);
	getname();		// mise à jour du menu
}

function insertfunction()
{
	if (arguments.length != 1) {
		ejies.error(this, "missing argument (name) for message insertfunction");
		return;
	}

	f.splice(front, 0, new Courbe(arguments[0]));		
	NbCourbes++;
	pixel2machin(f[front]);
	getname();		// mise à jour du menu
	drawAll();		// mise à jour de l'affichage, car c'est la courbe courrante
}

function deletefunction()
{
	var c;
	var which = -1;

	if (NbCourbes == 1)
		return;				// si une seule courbe on ne peut pas supprimer
	
	if (! arguments.length)
		which = front;
	else {
		for (c = 0; c < NbCourbes; c++) {
			if (f[c].name == arguments[0]) {
				which = c;
				break;
			}
		}
	}
	
	if (which == -1) {
		ejies.error(this, arguments[0], "bad function name (deletefunction aborted)");
		return;
	}
	
	f.splice(which, 1);
	NbCourbes--;
/* 	AllPixel2Machin(); */
	getname();
	
	if (which < f.length)
		front = which;
	else
		front = 0;

	outlet(DUMPOUT, "display", front);
	DoNotify();
	askForDrawFunctions();
}

function bordersync(v)
{
	if (v == 0 || v == 1)
		BorderSyncState = v;
	else
		ejies.error(this, "bordersync doesn't understand", v);
}

function clickadd(v)
{
	if (v == 0 || v == 1)
		ClickAdd = v;
	else
		ejies.error(this, "clickadd doesn't understand", v);
}

function clickmove(v)
{
	if (v == 0 || v == 1)
		ClickMove = v;
	else
		ejies.error(this, "clickmove doesn't understand", v);
}

function display()
{
	var c, tmp;

	if ( arguments.length != 1 ) {
		ejies.error(this, "missing argument for message display");
		return;
	}
	
	if (typeof(arguments[0]) == "number") {
		if (arguments[0] >= 0 && arguments[0] < NbCourbes)
			front = arguments[0];
	} else {
		for (c = 0; c < NbCourbes; c++) {
			if (f[c].name == arguments[0]) {
				tmp = c;
				break;
			}
		}
		front = tmp;
	}

	drawAll();
}

function dump()
{
	if (arguments.length)
		MyDump(f[front], arguments[0]);
	else
		MyDump(f[front]);
}

function dumpmatrix()
{
	if (arguments.length) {
		var c;
		for (c = 0; c < NbCourbes; c++) {
			if (arguments[0] == f[c].name) {
				MyDumpMatrix(f[c]);
				return;
			}
		}
		// message d'erreur si le nom de la fonction n'est pas valide
		ejies.error(this, arguments[0], "is not a function, dumpmatrix aborted.");
	} else
		MyDumpMatrix(f[front]);	// 
}

function listdump()
{
	// il faut tester le nombre d'argument à cause de argsparser()
	if (arguments.length)
		MyListDump(f[front], arguments[0]);
	else
		MyListDump(f[front]);
}

function nbfunctions(v)
{
	// ajout des courbes, si nécessaire
	if (v < NbCourbes) {
		while (f.length > v)
			f.splice(f.length - 1, 1);
	} else if (v > NbCourbes) {
		while (f.length < v)
			f[f.length] = new Courbe("function" + (f.length - 1));
	}
	// si on a le même nombre de courbe, on ne fait rien
	// ce qui permet de garder les couleurs par exemple.

	NbCourbes = f.length;
}

function clear()
{
	if (arguments.length == 0)
		MyClear(f[front]);
	else
		MyClear(f[front], arguments);
}

function clearsustain()
{
	if (! arguments.length)
		MyClearSustain(f[front]);
	else
		ejies.error(this, "extra arguments for message clearsustain");
}

function fix()
{
	if (arguments.length == 2)
		FixPoint(f[front], arguments[0], arguments[1]);
	else
		ejies.error(this, "bad arguments for message fix");
}

function unfix()
{
	if (arguments.length)
		ejies.error(this, "extra arguments for message unfix");
	else
		MyUnfix(f[front]);
}

function grid(v)
{
	if (v == 0 || v == 1) {
		GridMode = v;
		askForDrawFunctions();
	} else
		ejies.error(this, "gridmode doesn't understand", v);
}

function nth(v)
{
	if (typeof(v) == "number")
		MyNth(f[front], v);
	else
		ejies.error(this, "bad argument for message nth");
}

function notifyrecalled(v)
{
	if (v == 0 || v == 1)
		NotifyRecalledState = v;
	else
		ejies.error(this, "notifyrecalled doesn't understand", v);
}

function active()
{
	// ne pas éditer si c'est invisible
	// quand la fonction n'est pas visible nom entre parenthèse	
	var tmpArray = arrayfromargs(messagename, arguments);
	var i;
	
	if (tmpArray.length > (NbCourbes + 1)) {
		ejies.error(this, "too many arguments for message active");
		return;
	}
	
	if (tmpArray.length == 2) {
		if (tmpArray[1] == 0 || tmpArray[1] == 1) {
			f[front].display = tmpArray[1];
			drawAll();
			return;
		} else
			ejies.error(this, "bad argument for message active");
	}

	for (i = 1; i < tmpArray.length; i++) {
		if (tmpArray[i] == 0 || tmpArray[i] == 1)
			f[i-1].display = tmpArray[i];
		else {
			ejies.error(this, "bad argument for message active");
			break;
		}
	}
	drawAll();
}

function snap2grid(v)
{
	if (v == 0 || v == 1)
		Snap2GridState = v;
	else
		ejies.error(this, "snap2grid doesn't understand", v);
}

function gridstep(v)
{
	MyGridStep(f[front], v);
}

function hiddenpoint(v)
{
	if (v == 0 || v == 1) {
		HiddenPointDisplay = v;
		askForDrawFunctions();
	} else
		ejies.error(this, "hiddenpoint doesn't understand", v);
}

function legend(v)
{
	if (v != 0 && v != 1) {
		perror("legend doesn't understand", v);
		return;
	}
	
	LegendState = v;
	LegendStateBordure = 12 * v;		// 12 pixels la légende...
	// redimensionnement du Sketch principal
	SketchFunctions = new Sketch(BoxWidth, BoxHeight - (LegendState ? LegendStateBordure : 0) );
	AllPixel2Machin();
	ValRecalculate();
	drawAll();
}

function ghost(v)
{
	if (v < 0 && v > 100)
		ejies.error(this, "ghost percentage between 0 and 100 % expected", v);
	else {
		Ghostness = v * 0.01;
		askForDrawFunctions();
	}
}

function timedisplay(v)
{
	if (v == 0 || v == 1)
		TimeFlag = v;
	else
		ejies.error(this, "timedisplay doesn't understand", v);
}

function mousereport(v)
{
	if (v == 0 || v == 1)
		MouseReportState = v;
	else
		ejies.error(this, "mousereport doesn't understand", v);
}

function name(name)
{
	if (arguments.length > 1) {
		for (var i = 0; i < Math.min(arguments.length, f.length); i++)
			MyName(f[i], arguments[i]);
	} else
		MyName(f[front], name);

	getname();	// envoie la liste des fonctions
}

function next()
{
	if (! arguments.length)
		MyNext(f[front]);
	else
		ejies.error(this, "extra arguments for message next");
}
next.immediate = 1;

function sustain()
{
	if (arguments.length == 2)
		MySustain(arguments[0], arguments[1], f[front]);
	else
		ejies.error(this, "bad arguments for message sustain");
}

function brgb() { SetColor(f[front], "brgb", arguments); drawAll(); }
function frgb() { SetColor(f[front], "frgb", arguments); askForDrawFunctions(); }
function rgb2() { SetColor(f[front], "rgb2", arguments); askForDrawFunctions(); }
function rgb3() { SetColor(f[front], "rgb3", arguments); askForDrawFunctions(); }
function rgb4() { SetColor(f[front], "rgb4", arguments); drawText(); }
function rgb5() { SetColor(f[front], "rgb5", arguments); askForDrawFunctions(); }

function domain()
{
	switch (arguments.length) {
		case 1:
				MyDomain(0, arguments[0], f[front]);
				break;
		case 2:
				MyDomain(arguments[0], arguments[1], f[front]);
				break;
		default:
				ejies.error(this, "bad argument(s) for message domain");
				return;
	}
}

function setdomain()
{
	switch (arguments.length) {
		case 1:
				MySetDomain(0, arguments[0], f[front]);
				break;
		case 2:
				MySetDomain(arguments[0], arguments[1], f[front]);
				break;
		default:
				ejies.error(this, "bad argument(s) for message setdomain");
				return;
	}
}

function range(a, b, courbe)
{
	if ( a >= b) {
		ejies.error(this, "bad values for message range: min must be lower than max");
		return ;
	}

	var tmpF = frontOrArgument(courbe, arguments, 2);
	var i;
	
	tmpF.range = [a, b];
	MyRange2Zoom(tmpF);
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].y = val2y(tmpF, tmpF.pa[i].valy);
	}

	DoNotify();
	askForDrawFunctions();
}

function setrange(a, b, courbe)
{
	if ( a >= b) {
		ejies.error(this, "bad values for message setrange: min must be lower than max");
		return ;
	}

	var tmpF = frontOrArgument(courbe, arguments, 2);
	var i;
	var NeedDraw = 0;
	
	tmpF.range = [a, b];
	MyRange2Zoom(tmpF);
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].valy = y2val(tmpF, tmpF.pa[i].y);
		if (tmpF.pa[i].valy == 0)
			NeedDraw++;
	}

	DoNotify();

	// NeedDraw contient le résultat de la nouvelle courbe (y a t'il un point avec y=0) OnePointAtZero c'est l'état d'avant.
	if (NeedDraw || tmpF.OnePointAtZero)
		askForDrawFunctions();
}

function fswitch() { Switchfront(); }

function redrawoff() { RedrawEnable = 0; }

function redrawon()
{
	RedrawEnable = 1;
	drawAll();
}

function resetall()
{
	NotifyEnable = 0;
	LectureInspector();			// lecture des arguments
	defaults();					// Applique les couleurs et paramètres pas défaut
	AllPixel2Machin();			// calcule le rapport pixel/temps/range
	sketch.default2d();
	// initialisation de propriétés de variables
	EditedWithMouse.state = 0;	// flag initialisation
	PattrInterpError.flag = 0;
	PattrTooMany.flag = 1;
	front = 0;				// première courbe est la courbe actvie
	RedrawEnable = 1;
	NotifyEnable = 1;
	UpdateDisplay();
}

function defaults()
{
	// utilisé pour la restauration des paramètres par défaut.
	var c;
	
	legend(1);	// il y a aussi recalcul du facteur multiplicateur
	GridMode = 0;
	Snap2GridState = 0;
	HiddenPointDisplay = 0;
	ClickAdd = 1;
	ClickMove = 1;
	AutoSustain = 0;
	CursorChange = 1;
	BorderSyncState = 0;
	Ghostness = 0.2;
	NotifyRecalledState = 0;
	MouseReportState = 0;
	
	for (c = 0; c < NbCourbes; c++) {
		f[c].brgb =[0.8,0.8,0.8];
		f[c].frgb =[0.32,0.32,0.32];
		f[c].rgb2 =[0.42,0.42,0.42];
		f[c].rgb3 =[1,0.,0.];
		f[c].rgb4 =[0.2,0.2,0.2];
		f[c].rgb5 =[0.5,0.5,0.5];
	}
	
	drawAll();	// si c'est utilisé dans la fonction save(), draw est désactivé automatiquement (RedrawEnable = 0);
}

function removeduplicate()
{
	// si il y a eu suppression d'élément, il y aura réaffichage.
	MyRemoveDuplicate(f[front]);
}

function smooth()
{
	MySmooth(f[front]);
}

function copycolors()
{
	var c, i, j, idx;
	var cp = g["copycolors"];
	idx = 0;
	c = -1;
	
	if (! arguments.length)
		c = front;
	else {
		for (i = 0; i < NbCourbes; i++) {
			if (f[i].name == arguments[0]) {
				c = i;
				break;
			}
		}
	}
	
	if (c == -1) {
		ejies.error(this, arguments[0], "bad function name (copycolors aborted)");
		return;
	}

	for (j=0; j < 3; j++) { cp[idx++] = f[c].brgb[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = f[c].frgb[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = f[c].rgb2[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = f[c].rgb3[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = f[c].rgb4[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = f[c].rgb5[j]; }
}

function pastecolors()
{
	if (! arguments.length)
		MyPasteColors(f[front]);
	else
		ejies.error(this, "extra arguments for message pastecolors");
}

function zoom_x(start, stop, courbe)
{
	var i;
	var tmpF = frontOrArgument(courbe, arguments, 2);
	
	if (arguments.length == 0) {
		start = 0;
		stop = 1;
	} else if (arguments.length == 1) {
		ejies.error(this, "missing argument for message zoom_x");
		return;
	}

	tmpF.ZoomX[0] = start * (tmpF.domain[1] - tmpF.domain[0]) + tmpF.domain[0];
	tmpF.ZoomX[1] = stop * (tmpF.domain[1] - tmpF.domain[0]) + tmpF.domain[0];
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].x = val2x(tmpF, tmpF.pa[i].valx);
	}

	drawFunctions();
}

function zoom_y(start, stop, courbe)
{
	var i;
	var tmpF = frontOrArgument(courbe, arguments, 2);
	
	if (arguments.length == 0) {
		start = 0;
		stop = 1;
	} else if (arguments.length == 1) {
		ejies.error(this, "missing argument for message zoom_y");
		return;
	}
	
	tmpF.ZoomY[0] = start * (tmpF.range[1] - tmpF.range[0]) + tmpF.range[0];
	tmpF.ZoomY[1] = stop * (tmpF.range[1] - tmpF.range[0]) + tmpF.range[0];
	pixel2machin(tmpF);

	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].y = val2y(tmpF, tmpF.pa[i].valy);
	}

	drawFunctions();
}

function zoomout()
{
	var OldRedrawState = RedrawEnable;
	RedrawEnable = 0;
	MyZoomOut(f[front]);
	RedrawEnable = OldRedrawState;	// restauration de l'état de la variable d'avant son entrée dans la fonction
	drawFunctions();				// on ne réaffiche donc qu'à la sortie, une seule fois.
}

function MyZoomOut(courbe)
{
	zoom_x(0, 1, courbe);
	zoom_y(0, 1, courbe);
}
MyZoomOut.local = 1;



//////////////// Fonctions Mouse ///////////////
function onidle(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var OldIdlePoint = IdlePoint;
	IdlePoint = -1;

	if (AllowEdit == 0 || f[front].display == 0)
		return;

	y = yOffset(y);

	for(i=0; i< f[front].np; i++) {

		if ( (Math.abs(x - f[front]["pa"][i].x) < Tolerance) && (Math.abs(y - f[front]["pa"][i].y) < Tolerance) ) {
			if (ClickMove == 1)
				DisplayCursor(5);
			
			IdlePoint = i;

			if ( IdlePoint != OldIdlePoint) {	// que quand c'est différent...
				RedrawOrNot(IdlePoint);
				break;			
			}
		}
	}

	if (MouseReportState)
		outlet(DUMPOUT, "mouseidle", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
										ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
										but, IdlePoint);

	if (IdlePoint == -1 && shift == 1) {
		DisplayCursor(1);
	} else if (IdlePoint == -1 && shift == 0 && ClickAdd == 1) {
		DisplayCursor(6);
	}
	
	RedrawOrNot(IdlePoint);
}

function onidleout()
{
	DisplayCursor(1);
}

function yOffset(y)
{
	if ( LegendState )
		return (y - LegendStateBordure);
	else
		return y;
}


function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	y = yOffset(y);
	
	if (AllowEdit == 0 || f[front].display == 0) {
		onidle(x, y);
		return;
	}
	
	SelectedPoint = -2;
	x = ejies.clip(x - 2, Bordure, SketchFunctions.size[0] - Bordure);
	y = ejies.clip(y - 2, Bordure + LegendStateBordure, SketchFunctions.size[1] - Bordure);

	if (IdlePoint != -1) {
		SelectedPoint = IdlePoint;
		if (cmd) {
			f[front].pa[SelectedPoint].sustain = 1 - f[front].pa[SelectedPoint].sustain;
			EditedWithMouse.state++;
			drawFunctions();
			return ;
		}
		
		if (shift && ClickAdd) {
			DeletePoint(f[front], SelectedPoint);
			SelectedPoint = -1;
			ApplyAutoSustain();
			EditedWithMouse.state++;
			EditedWithMouse();
			DoNotify();
			drawFunctions();
			onidle(x, y);	// pour ne pas afficher la position (puisqu'on y est)
			return;
		}
	}

	if (SelectedPoint != -2 && ClickMove == 0)	// ClickMove désactivé
		SelectedPoint = -1;

	// ajout d'un point
	if (cmd == 0 && shift == 0 && SelectedPoint == -2 && ClickAdd == 1) {
		if ( Snap2GridState )
			x = val2x(f[front], Math.round((x2val(f[front], x) - f[front].domain[0]) / f[front].GridStep) * f[front].GridStep + f[front].domain[0]);
		SelectedPoint = AddOnePoint(f[front], x, y);
		ApplyAutoSustain();
		EditedWithMouse.state++;
		DoNotify();
		drawAll();
		onidle(x,y);
	}
	if (MouseReportState)
		outlet(DUMPOUT, "mouse",	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
									ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
									but, SelectedPoint);
}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var borderthing = -1;

	if (AllowEdit == 0 || f[front].display == 0)
		return;

	if ( but == 0 ||  SelectedPoint < 0) {
		EditedWithMouse();	// quand c'est delete c'est fait dans onidle()
		SelectedPoint = -2;	// si on a relâché c'est qu'il n'y a plus de points sélectionnés.
		onidle(x,y, 0);		// tout pareil...
/* 		drawText(); */
		return;
	}
	
	y = yOffset(y); // ne pas le mettre avant sinon onidle ne reçoit pas les bons coordonnées y

	if (MouseReportState)
		outlet(DUMPOUT, "mouse", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
									ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
									but, SelectedPoint);

	if (SelectedPoint < f[front].np) {
		if (f[front]["pa"][SelectedPoint].fix)
			return;
			
		if ( Snap2GridState )
			x = val2x(f[front], Math.round((x2val(f[front], x) - f[front].domain[0]) / f[front].GridStep) * f[front].GridStep + f[front].domain[0]);
		
		x = ejies.clip(x, Bordure, SketchFunctions.size[0] - Bordure);
		y = ejies.clip(y, Bordure, SketchFunctions.size[1] - Bordure);
	
		if ( BorderSyncState == 1 && f[front].np > 2 && ( SelectedPoint == 0 || SelectedPoint == (f[front].np - 1 ) )) {
			SelectedPoint == 0 ? borderthing = (f[front].np - 1) : borderthing = 0;
		}

		if (f[front]["np"] > 1) {

			if (SelectedPoint == 0) {
				x = ejies.clip(x, 0, f[front]["pa"][SelectedPoint+1].x );  
			} else if (SelectedPoint > 0 && SelectedPoint < (f[front]["np"] - 1)) {
				x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, f[front]["pa"][SelectedPoint+1].x);
			} else if (SelectedPoint == (f[front]["np"] - 1) ) {
				x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, SketchFunctions.size[0]);
			}
		}

		EditedWithMouse.state++;		
		f[front]["pa"][SelectedPoint].x = x;
		f[front]["pa"][SelectedPoint].y = y;
		f[front]["pa"][SelectedPoint].valx = x2val(f[front], x);
		f[front]["pa"][SelectedPoint].valy = y2val(f[front], y);
		
		if (borderthing != -1) {
			f[front]["pa"][borderthing].y = y;
			f[front]["pa"][borderthing].valy = y2val(f[front], y);
		}
		
		UpdateDisplay();
	}
}

function ondblclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	IdlePoint = -1;
	
	if (cmd)
		Switchfront(shift);	// avec shift on tourne dans l'autre sens
}


//////////////// Get Things ///////////////
function getdisplay()
{
	outlet(DUMPOUT, "display", front);
}

function getdomain(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "domain", tmpF.domain);
}

function getrange(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "range", tmpF.range);
}

function getfix(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	var tmpData = new Array();
	var i, j;

	for (i = j = 0; i < tmpF.np; i++) {
		if ( tmpF.pa[i].fix )
			tmpData[j++] = i;
	}

	if (tmpData.length != 0)
		outlet(DUMPOUT, tmpF.name, "fix", tmpData);
}

function getsustain(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	var tmpData = new Array();
	var i;
	
	for (i = j = 0; i < tmpF.np; i++) {
		if ( tmpF.pa[i].sustain ) { tmpData[j++] = i; }
	}
	
	if (tmpData. length != 0)
		outlet(DUMPOUT, tmpF.name, "sustain", tmpData);
}

function getgridstep(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "gridstep", tmpF.GridStep);
}

function getbrgb() { GetColor(f[front], "brgb"); }
function getfrgb() { GetColor(f[front], "frgb"); }
function getrgb2() { GetColor(f[front], "rgb2"); }
function getrgb3() { GetColor(f[front], "rgb3"); }
function getrgb4() { GetColor(f[front], "rgb4"); }
function getrgb5() { GetColor(f[front], "rgb5"); }

function getnbpoints(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "nbpoints", tmpF.np);
}



/// get généraux ///
function getlegend() { outlet(DUMPOUT, "legend", LegendState); }
function getgrid() { outlet(DUMPOUT, "grid", GridMode); }
function getsnap2grid() { outlet(DUMPOUT, "snap2grid", Snap2GridState); }
function gethiddenpoint() { outlet(DUMPOUT, "hiddenpointdisplay", HiddenPointDisplay); }
function getclickadd() { outlet(DUMPOUT, "clickadd", ClickAdd); }
function getclickmove() { outlet(DUMPOUT, "clickmove", ClickMove); }
function getautosustain() {	outlet(DUMPOUT, "autosustain", AutoSustain); }
function gettimedisplay() { outlet(DUMPOUT, "timedisplay", TimeFlag); }
function getautocursor() { outlet(DUMPOUT, "autocursor", CursorChange); }
function getbordersync() { outlet(DUMPOUT, "bordersync", BorderSyncState); }
function getghost() { outlet(DUMPOUT, "ghost", Math.round(Ghostness * 100) ); }
function getnotifyrecalled() { outlet(DUMPOUT, "notifyrecalled", NotifyRecalledState ); }
function getmousereport() { outlet(DUMPOUT, "mousereport", MouseReportState ); }

function getnbfunctions() { outlet(DUMPOUT, "nbfunctions", NbCourbes); }

function getname()
{
	var c, tmpArray;
	outlet(DUMPOUT, "name", "clear");
	
	for (c = 0; c < NbCourbes; c++)
		outlet(DUMPOUT, "name", "append", f[c].name);
}

function getactive()
{
	var c, idx
	var tmpArray = new Array();
	
	for (c = 0, idx = 0; c < NbCourbes; c++) {
		tmpArray[idx++] = f[c].display;
	}
	outlet(DUMPOUT, "active", tmpArray);
}

function getzoom_x(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "zoom_x",	(tmpF.ZoomX[0] - tmpF.domain[0]) / (tmpF.domain[1] - tmpF.domain[0]),
											(tmpF.ZoomX[1] - tmpF.domain[0]) / (tmpF.domain[1] - tmpF.domain[0]) );
}

function getzoom_y(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "zoom_y",	(tmpF.ZoomY[0] - tmpF.range[0]) / (tmpF.range[1] - tmpF.range[0]),
											(tmpF.ZoomY[1] - tmpF.range[0]) / (tmpF.range[1] - tmpF.range[0]));
}




//////////////// Pattr Things ///////////////
function setvalueof()
{
	var i, j, p, k;
	var idx = 0;
	var OldNp;
	var BeginCurve;
	
	RedrawEnable = 0;
			
	var FunctionVersionCheck = arguments[idx++];

	// si le nombre de courbe n'est pas un entier, on quitte de toute urgence.
	if ( (arguments[idx] % 1) != 0) {
		PattrInterpError(0);
		return;
	}

	var OldNbCourbes = NbCourbes;
	NbCourbes = arguments[idx++];
	
	while (OldNbCourbes < NbCourbes) {
		f[OldNbCourbes] = new Courbe();
		MyThings2Zoom(f[OldNbCourbes]);
		pixel2machin(f[OldNbCourbes++]);
	}

	while (OldNbCourbes > NbCourbes) {
		f.splice(--OldNbCourbes, 1);
		// si la courbe qu'on vient de supprimer était la courbe courante... front = 0
		if (front >= NbCourbes)
			front = 0;
	}

	for (i = 0; i < NbCourbes; i++) {
		if ( (arguments[i+2] % 1) != 0) {
			PattrInterpError(1);
			return;
		}
	}

	AllowEdit = 0;
	
	BeginCurve = new Array();
	for (i = 0; i < arguments.length; i++) {
		if (typeof(arguments[i]) != "number")
			BeginCurve[BeginCurve.length] = i;
	}
	
	for (i = 0; i < NbCourbes; i++) {
		var LastDomain, LastRangeMin, LastRangeMax;
		var NeedUpdate = 0;
		idx	= BeginCurve[i]
		f[i].name = arguments[idx++];

		// depuis la version 1.52 domaine contient deux limites.
		if (FunctionVersionCheck == 1 )
			f[i].domain[0] = 0;
		else
			f[i].domain[0] = parseFloat(arguments[idx++]);

		f[i].domain[1] = parseFloat(arguments[idx++]);

		f[i].range[0] = parseFloat(arguments[idx++]);
		f[i].range[1] = parseFloat(arguments[idx++]);

		MyThings2Zoom(f[i]);
		
		f[i].GridStep = arguments[idx++];
		
		OldNp = f[i].np;
		f[i].np = (arguments[i+2]);

		// création des points s'ils ne sont pas présents dans la courbe
		while (OldNp < f[i].np) {
			f[i]["pa"][OldNp++] = new Point();
		}

		// suppression des points n'existant plus dans la courbe
		while (OldNp > f[i].np) {
			f[i]["pa"].splice(--OldNp, 1);
		}

		for (p = 0; p < f[i].np; p++) {
			f[i]["pa"][p].valx = arguments[idx++];
			f[i]["pa"][p].valy = arguments[idx++];
			f[i]["pa"][p].sustain = arguments[idx] & 2 ? 1 : 0; // pas d'incrémentation
			f[i]["pa"][p].fix = arguments[idx++] & 1;	// elle est faite ici.
		}
	}

 	AllPixel2Machin();
	ValRecalculate();
	RedrawEnable = 1;
	AllowEdit = 1;
	PattrInterpError.flag = 0;
	UpdateDisplay();
	
	if (NotifyRecalledState)
		outlet(DUMPOUT, "recalled");

	if ( FunctionVersionCheck < 1 && FunctionVersionCheck > 2 )
		ejies.error(this, "bad version number - interpolation aborted");
}

function getvalueof()
{
	var i, j, p;
	var tmpData = new Array();
	var idx = 0;
	
	//versioning to allow for future changes (technoui style...)
	tmpData[idx++] = FUNCTIONVERSION;
	tmpData[idx++] = NbCourbes;
	
	for (i = 0; i < NbCourbes; i++) {
		tmpData[idx++] = f[i].np;
	}
	
	for (i = 0; i < NbCourbes; i++) {
		tmpData[idx++] = f[i].name;
		tmpData[idx++] = f[i].domain[0];
		tmpData[idx++] = f[i].domain[1];
		tmpData[idx++] = f[i].range[0];
		tmpData[idx++] = f[i].range[1];
		tmpData[idx++] = f[i].GridStep;

		for (p = 0; p < f[i].np; p++) {
			// on stocke un minimum de chose pour pouvoir mettre plus de points
			tmpData[idx++] = f[i]["pa"][p].valx;
			tmpData[idx++] = f[i]["pa"][p].valy;
			tmpData[idx++] = f[i]["pa"][p].sustain * 2 + f[i]["pa"][p].fix;	// en binaire ça prend moins de place
		}
	}

	PattrTooMany(tmpData.length);

	return tmpData;
}

function save()
{
	var i, j;

	// c'est juste pour l'inspecteur : il contient le nom et les domain/range des fonctions
	var tmpArray = new Array();

	for (i = 0; i < NbCourbes; i++)
		tmpArray[i] = f[i].name;

	for (j = 0; j < NbCourbes; j++) {
		// c'est stupide... j'ai inversé range et domain dans 1.52 par rapport a psto et read/write
		// NE PAS INVERSER c'est trop tard :-(
		tmpArray[i++] = f[j].range[0];
		tmpArray[i++] = f[j].range[1];
		tmpArray[i++] = f[j].domain[0];
		tmpArray[i++] = f[j].domain[1];
	}
	
	embedmessage("CreateNFunctions", NbCourbes, tmpArray);	// required for the number of color to save
	embedmessage("legend", LegendState);
	embedmessage("grid", GridMode);
	embedmessage("snap2grid", Snap2GridState);
	embedmessage("hiddenpoint", HiddenPointDisplay);
	embedmessage("clickadd", ClickAdd);
	embedmessage("clickmove", ClickMove);
	embedmessage("autosustain", AutoSustain);
	embedmessage("timedisplay", TimeFlag);
	embedmessage("autocursor", CursorChange);
	embedmessage("bordersync", BorderSyncState);
	embedmessage("ghost", Math.round(Ghostness * 100));
	embedmessage("notifyrecalled", NotifyRecalledState);
	embedmessage("mousereport", MouseReportState);
	
	
	for (i = 0; i < NbCourbes; i++) {
		embedmessage("SetColor", i, "brgb", Math.round(f[i].brgb[0] * 255), Math.round(f[i].brgb[1] * 255), Math.round(f[i].brgb[2] * 255) );
		embedmessage("SetColor", i, "frgb", Math.round(f[i].frgb[0] * 255), Math.round(f[i].frgb[1] * 255), Math.round(f[i].frgb[2] * 255) );
		embedmessage("SetColor", i, "rgb2", Math.round(f[i].rgb2[0] * 255), Math.round(f[i].rgb2[1] * 255), Math.round(f[i].rgb2[2] * 255) );
		embedmessage("SetColor", i, "rgb3", Math.round(f[i].rgb3[0] * 255), Math.round(f[i].rgb3[1] * 255), Math.round(f[i].rgb3[2] * 255) );
		embedmessage("SetColor", i, "rgb4", Math.round(f[i].rgb4[0] * 255), Math.round(f[i].rgb4[1] * 255), Math.round(f[i].rgb4[2] * 255) );
		embedmessage("SetColor", i, "rgb5", Math.round(f[i].rgb5[0] * 255), Math.round(f[i].rgb5[1] * 255), Math.round(f[i].rgb5[2] * 255) );
	}
	
	embedmessage("redrawon");	// refresh de l'affichage après la lecture des arguments
}

function CreateNFunctions(v)
{
	RedrawEnable = 0;
	NbCourbes = v;
	init();

	// utilise le Nom, Range et Domain embed dans le patch
	var i, j;
	for (i = 0; i < v; i++) {
		f[i].name = arguments[i+1];
	}
	for (i = 0, j = v + 1; i <	v; i++) {
		f[i].range[0] = arguments[j++];
		f[i].range[1] = arguments[j++];
		f[i].domain[0] = arguments[j++];
		f[i].domain[1] = arguments[j++];
		MyDomain2Zoom(f[i]);
		MyRange2Zoom(f[i]);
	}
	
	LectureInspectorFlag = 1;	// comme ça il n'y a pas de scan des arguments
}

function copyfunction()
{
	var i, c, p, idx;
	idx = 0;
	c = -1;

	if (! arguments.length)
		c = front;
	else {
		for (i = 0; i < NbCourbes; i++) {
			if (f[i].name == arguments[0]) {
				c = i;
				break;
			}
		}
	}
	
	if (c == -1) {
		ejies.error(this, arguments[0], "bad function name (copyfunction aborted)");
		return;
	}

	var cp = g["copy"];	// c'est moins long
	cp.length = 0;	// "vide le presse papier"

	cp[idx++] = f[c].np;	
	cp[idx++] = f[c].name;
	cp[idx++] = f[c].domain[0];
	cp[idx++] = f[c].domain[1];
	cp[idx++] = f[c].range[0];
	cp[idx++] = f[c].range[1];
	cp[idx++] = f[c].GridStep;
	cp[idx++] = f[c].display;

	for (p = 0; p < f[c].np; p++) {
		cp[idx++] = f[c]["pa"][p].x;
		cp[idx++] = f[c]["pa"][p].y;
		cp[idx++] = f[c]["pa"][p].valx;
		cp[idx++] = f[c]["pa"][p].valy;
		cp[idx++] = f[c]["pa"][p].sustain
		cp[idx++] = f[c]["pa"][p].fix;
	}
}

function pastefunction()
{
	if (! arguments.length)
		MyPasteFunction(f[front]);
	else
		ejies.error(this, "extra arguments for message pastefunction");
	
	getname();			// il se peut que le nom soit changé
	UpdateDisplay();
}


function MyPasteFunction(courbe)
{
	var c, p;
	var idx = 0;
	var OldNp;
	var cp = g["copy"];	// c'est moins long
	
	if (cp.length == 0) {
		ejies.error(this, "before pasting, you have to copy something");
		return;
	}
		
	OldNp = f[front].np;
	courbe.np = cp[idx++];

	// création des points s'ils ne sont pas présents dans la courbe
	while (OldNp < courbe.np) {
		courbe["pa"][OldNp++] = new Point();
	}

	// suppression des points n'existant plus dans la courbe
	while (OldNp > courbe.np) {
		courbe["pa"].splice(--OldNp, 1);
	}

	courbe.name = cp[idx++];
	courbe.domain[0] = cp[idx++];
	courbe.domain[1] = cp[idx++];
	courbe.range[0] = cp[idx++];
	courbe.range[1] = cp[idx++];
	courbe.GridStep = cp[idx++];
	courbe.display = cp[idx++];
	
	for (p = 0; p < courbe.np; p++) {
		courbe["pa"][p].x = cp[idx++];
		courbe["pa"][p].y = cp[idx++];
		courbe["pa"][p].valx = cp[idx++];
		courbe["pa"][p].valy = cp[idx++];
		courbe["pa"][p].sustain = cp[idx++];
		courbe["pa"][p].fix = cp[idx++];
	}
	
	MyThings2Zoom(courbe);
	pixel2machin(courbe);
}
MyPasteFunction.local = 1;

function insertpaste()
{
	var c, p, idx;
	var OldNp;
	var cp = g["copy"];	// c'est moins long
	p = idx = 0;
	
	if (cp.length == 0) {
		ejies.error(this, "before inserting and pasting, you have to copy something");
		return;
	}
		
	// insertion de la nouvelle courbe (le nom est bidon, puisqu'on va le remplir après)
	f.splice(front, 0, new Courbe("tmpName"));
	NbCourbes++;

	f[front].np = cp[idx++];
	f[front].name = cp[idx++];
	f[front].domain[0] = cp[idx++];
	f[front].domain[1] = cp[idx++];
	f[front].range[0] = cp[idx++];
	f[front].range[1] = cp[idx++];	
	f[front].GridStep = cp[idx++];
	f[front].display = cp[idx++];
	
	for (p = 0; p < f[front].np; p++) {
		f[front]["pa"][p] = new Point(cp[idx], cp[idx+1], cp[idx+2], cp[idx+3]);
		idx += 4;
		f[front]["pa"][p].sustain = cp[idx++];
		f[front]["pa"][p].fix = cp[idx++];
	}		

	MyThings2Zoom(f[front]);
	pixel2machin(f[front]);

	getname();		// mise à jour du menu
	UpdateDisplay();
}

function read(filename)
{
	if (arguments.length == 0) {
		ReadDialog();
		return;
	}

	if (! arguments.length) {
		ejies.error(this, "read filename is missing");
		return;
	}

	var fichier = new File(filename,"read"); 
	if (fichier.isopen) {
		RedrawEnable = 0;
		AllowEdit = 0;

		var tmpLine = LectureNextLigne(fichier);
		if (tmpLine.search("ej.function format") == -1) {
			ejies.error(this, "can't read this file format");
			
			// suppression des objets opendialog...
			if (OpendialogPrepend)
					DeleteReadThings();

			fichier.close();
			return;
		}
				
		// Lecture de la première ligne du fichier
		tmpLine = LectureNextLigne(fichier);
		tmpLine = tmpLine.split(" ");

		var idx = 0;
		var c, i;
		var OldNp;
		
		var FunctionVersionCheck = tmpLine[idx++];	// stocke le numéro de version

		var OldNbCourbes = NbCourbes;
		NbCourbes = parseFloat(tmpLine[idx++]);
		
		while (OldNbCourbes < NbCourbes) {		// création des courbes si nécessaire
			f[OldNbCourbes] = new Courbe();
			MyThings2Zoom(f[OldNbCourbes]);
			pixel2machin(f[OldNbCourbes++]);
		}

		while (OldNbCourbes > NbCourbes) {		// suppression des courbes si nécessaire
			f.splice(--OldNbCourbes, 1);
			if (front >= NbCourbes)
				front = 0;
		}
		
		for (c = 0; c < NbCourbes; c++) {
			OldNp = f[c].np;
			f[c].np = parseFloat(tmpLine[idx++]);
			// création ou suppression de points
			while (OldNp < f[c].np) { f[c]["pa"][OldNp++] = new Point(); }
			while (OldNp > f[c].np) { f[c]["pa"].splice(--OldNp, 1); }
		}
	
		c = 0;
		while ( fichier.position < fichier.eof) {
			tmpLine = LectureNextLigne(fichier);
			if (tmpLine == "")
				break;
			tmpLine = tmpLine.split(" ");

			idx = 0;

			var p;
			var NeedUpdate = 0;
			f[c].name = tmpLine[idx++];

			// some people loves to put spaces in names...
			while ( isNaN(parseFloat(tmpLine[idx])) )
				f[c].name += " " + tmpLine[idx++];
			
			// depuis la version 1.52 domaine contient deux limites.
			if (FunctionVersionCheck < 2)
				f[c].domain[0] = 0;
			else
				f[c].domain[0] = parseFloat(tmpLine[idx++]);

			f[c].domain[1] = parseFloat(tmpLine[idx++]);
			
			f[c].range[0] = parseFloat(tmpLine[idx++]);
			f[c].range[1] = parseFloat(tmpLine[idx++]);

			MyThings2Zoom(f[c]);
			
			if (FunctionVersionCheck < 3) {
				f[c].GridStep = parseFloat(tmpLine[idx++]);
				f[c].display = parseFloat(tmpLine[idx++]);

				idx = 0;
				tmpLine = LectureNextLigne(fichier);
				tmpLine = tmpLine.split(" ");
				for (j=0; j < 3; j++) { f[c].brgb[j] = tmpLine[idx++] / 255; }
				for (j=0; j < 3; j++) { f[c].frgb[j] = tmpLine[idx++] / 255; }
				for (j=0; j < 3; j++) { f[c].rgb2[j] = tmpLine[idx++] / 255; }
				for (j=0; j < 3; j++) { f[c].rgb3[j] = tmpLine[idx++] / 255; }
				for (j=0; j < 3; j++) { f[c].rgb4[j] = tmpLine[idx++] / 255; }
				for (j=0; j < 3; j++) { f[c].rgb5[j] = tmpLine[idx++] / 255; }
			}

			for (p = 0; p < f[c].np; p++) {
				idx = 0;
				tmpLine = LectureNextLigne(fichier);
				tmpLine = tmpLine.split(" ");
				if (tmpLine.length != 3) {
					ejies.error(this, "bad file contents");
					break;
				}
				f[c]["pa"][p].valx = parseFloat(tmpLine[idx++]);
				f[c]["pa"][p].valy = parseFloat(tmpLine[idx++]);
				f[c]["pa"][p].sustain = tmpLine[idx] & 2 ? 1 : 0; // pas d'incrémentation
				f[c]["pa"][p].fix = tmpLine[idx++] & 1;	// elle est faite ici.
			}
			c++;
		}

		AllPixel2Machin();
		ValRecalculate();
		RedrawEnable = 1;
		AllowEdit = 1;
		PattrInterpError.flag = 0;
		UpdateDisplay();

		outlet(DUMPOUT, "read", filename, 1);
		fichier.close();
	} else {
		ejies.error(this, "could not read file: ", filename, "... don't ask why :-)\n");
		outlet(DUMPOUT, "read", filename, -1);
	}
	
	// suppression des objets opendialog...
	if (OpendialogPrepend)
			DeleteReadThings();
}

function write(filename)
{
	if (arguments.length == 0) {
		WriteDialog();
		return;
	}
	
	if (arguments.length > 2) {
		ejies.error(this, "too many arguments for message write");
		return;
	}
	
	var i, j, p;
	var idx = 0;
	var tmpStr = new String();
	var sep = new String(" ");
	var PrintComment = 0;
	
	if (arguments.length == 2) {
		if (arguments[1] == 1)
			PrintComment = 1;
		else
			ejies.error(this, "bad arguments for message write");
	}
		
	var fichier = new File(filename,"write");
	if (fichier.isopen) {
		//versioning to allow for future changes (technoui style...)
		tmpStr += FUNCTIONVERSION + sep;
		tmpStr += NbCourbes;
		
		fichier.writeline("ej.function format");

		for (i = 0; i < NbCourbes; i++) {
			tmpStr += sep + f[i].np;
		}

		if (PrintComment) { fichier.writeline("// format version number, Nb functions, Nb points function 0, Nb points function 1..."); }
		fichier.writeline(tmpStr);

		for (i = 0; i < NbCourbes; i++) {
			fichier.writeline("");
			if (PrintComment) { fichier.writeline("// new function: name, domain, range min, range max, gridstep");	}
			tmpStr = "";
			tmpStr += f[i].name + sep;
			tmpStr += f[i].domain[0] + sep;
			tmpStr += f[i].domain[1] + sep;
			tmpStr += f[i].range[0] + sep;
			tmpStr += f[i].range[1] + sep;
			tmpStr += f[i].GridStep + sep;
			tmpStr += f[i].display;
			fichier.writeline(tmpStr);		

			tmpStr = "";
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].brgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].frgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb2[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb3[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb4[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb5[j] * 255) + sep; }
			fichier.writeline(tmpStr);

			for (p = 0; p < f[i].np; p++) {
				tmpStr = "";
				tmpStr += f[i]["pa"][p].valx + sep;
				tmpStr += f[i]["pa"][p].valy + sep;
				tmpStr += f[i]["pa"][p].sustain * 2 + f[i]["pa"][p].fix;	// en binaire ça prend moins de place
				fichier.writeline(tmpStr);
			}
		}
		
		fichier.eof = fichier.position;
		fichier.close();
		outlet(DUMPOUT, "write", filename, "1");
	} else {
		ejies.error(this, "could not write file: ", filename, "... don't ask why :-)\n");
		outlet(DUMPOUT, "write", filename, "-1");
	}
}

resetall();

/* autowatch = 1; */
/* post("compiled...\n"); */
