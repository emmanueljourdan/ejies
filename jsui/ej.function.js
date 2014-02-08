/* 
	ej.function.js by Emmanuel Jourdan, e--j dev - 03 2005
	multi bpf editor (compatible with Max standart function GUI)
	
	curve additions from Martin Robinson
	
	also based on parts of "cyclone" (pd) for the curve~ algorithm
	http://suita.chopin.edu.pl/~czaja/miXed/externs/cyclone.html

	$Revision: 1.138 $
	$Date: 2012/01/25 10:27:13 $
*/

// global code
var ejies = new EjiesUtils(); // lien vers ejiesUtils.js


/*
	Version 1: domain n'a qu'une borne 
	Version 2: depuis 1.52 domain avec 2 bornes
	Version 3: ej.fplay compatible
	Version 4: grille sur 2 axes
	Version 5: couleur pour line
	Version 6: curve integration
*/
const FUNCTIONVERSION = 5;	// the main thing stays at version 5, but there's an increment when using isCurveMode

inlets = 1;
outlets = 5;
const INTERP_OUTLET = 0;
const LINE_OUTLET = 1;
const DUMP_OUTLET = 2;
const BANG_OUTLET = 3;
const DUMPOUT = 4;
const DEFAULT_CURVE = 0.;	//	default curve value
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
var isCurveMode = 0;
var Tolerance = 4;
var Bordure = 4;
var LegendStateBordure = 12;
var PixelDomain;
var PixelRange;
var front = 0;	// c'est plus court que "current"
var LegendState;
var GridMode;
var Snap2GridState;
var HiddenPointDisplay;
var OutputMode; //ajout Alexis
var ClickAdd;
var ClickMove;
var ClickSustain;
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
var fsaaValue = 1;
var paintTextNeedsRedraw = true;
var paintFunctionsNeedsRedraw = true;
var paintTextImage = null;
var paintFunctionsImage = null;
swapPoints.tmp = new Point();
DoNotify.done = 0;
var tskDel = new Task();
var tmpString = new String();
var tmpRange, tmpDomain;	// utilisé dans Interp
var LineValue = -1;

var numCurvePoints = 12; //MR - curve vars
var CLCCURVE_C1 = 1e-20;
var CLCCURVE_C2 = 1.2;
var CLCCURVE_C3 = 0.41;
var CLCCURVE_C4 = 0.91;
var CURVE_MIN = -0.995;
var CURVE_MAX = 0.995;
var MAX_CURVE_NP = 43; // max points for curve~
var LimitNP = 1; // clip num points MAX_CURVE_NP
var SelectedCurve = -1;
var prevy = 0;
var MoveMode = 0;
var PointSize = 5;
var DrawToEdges = 0;
var CachedDrawing = false;  // it doesn't seem to be really faster in my tests so let's make it nice.


mgraphics.init();				// initialize mgraphics
mgraphics.relative_coords = 0;	// coordinate system: x, y, width height
mgraphics.autofill = 0;			// we want to fill the paths ourself

var slowDrawing = new Task(drawFunctions, this);	// pour empêcher le rafraichissement trop rapide
var slowDrawingText = new Task(drawText, this);	// pour empêcher le rafraichissement trop rapide
var slowDrawingAll = new Task(drawAll, this);	// pour empêcher le rafraichissement trop rapide
var slowNotify = new Task(notifyclients, this);		// pour empêcher la mise à jour pattr trop rapide

RedrawEnable = 0;	// désactivation de l'affichage pendant l'initialisation
NotifyEnable = 0;


/* declareattribute("CreateNFunctions"); */
declareattribute("nbfunction",			"getattr_nbfunctions",			"setattr_nbfunctions", 1);
declareattribute("legend",				"getattr_legend",				"setattr_legend", 1);
declareattribute("grid",				"getattr_grid",					"setattr_grid", 1);
declareattribute("snap2grid",			"getattr_snap2grid",			"setattr_snap2grid", 1);
declareattribute("hiddenpoint",			"getattr_hiddenpoint",			"setattr_hiddenpoint", 1);
declareattribute("outputmode",			"getattr_outputmode",			"setattr_outputmode", 1); //ajout Alexis
declareattribute("clickadd",			"getattr_clickadd",				"setattr_clickadd", 1);
declareattribute("clickmove",			"getattr_clickmove",			"setattr_clickmove", 1);
declareattribute("clicksustain",		"getattr_clicksustain",			"setattr_clicksustain", 1);
declareattribute("autosustain",			"getattr_autosustain",			"setattr_autosustain", 1);
declareattribute("timedisplay",			"getattr_timedisplay",			"setattr_timedisplay", 1);
declareattribute("autocursor",			"getattr_autocursor",			"setattr_autocursor", 1);
declareattribute("bordersync",			"getattr_bordersync",			"setattr_bordersync", 1);
declareattribute("ghost",				"getattr_ghost",				"setattr_ghost", 1);
declareattribute("notifyrecalled",		"getattr_notifyrecalled",		"setattr_notifyrecalled", 1);
declareattribute("mousereport",			"getattr_mousereport",			"setattr_mousereport", 1);
declareattribute("numcurvepoints",		"getattr_numcurvepoints",		"setattr_numcurvepoints", 1);
declareattribute("movemode",			"getattr_movemode",				"setattr_movemode", 1);
declareattribute("mode",				"getattr_mode",					"setattr_mode", 1);
declareattribute("pointsize",			"getattr_pointsize",			"setattr_pointsize", 1);
declareattribute("drawtoedges",			"getattr_drawtoedges",			"setattr_drawtoedges", 1);
declareattribute("cacheddrawing",		"getattr_cacheddrawing",		"setattr_cacheddrawing", 1);

if (max.version < 455)
	ejies.error(this, "MaxMSP 4.5.5 or higher is required. Please upgrade!");

if (box.rect[2] - box.rect[0] == 64 && box.rect[3] - box.rect[1] == 64) {
	// numbox a été créée à partie de jsui : dimensions = 64*64
	init();
	onresize(200,100);
}

//////////////// Objets ///////////////
function Point(x, y, valx, valy, curve)
{
	this.x = x;				// what's the difference between x and valx? etc MR
	this.y = y;				// i think x and y are screen positions; and
	this.valx = valx;		// valx/y are the values
	this.valy = valy;
	this.sustain = 0;
	this.fix = 0;
	this.curve = arguments.length > 4 ? curve : 0;		// curve, 0 = linear, -1 <= curve <= 1 curve, reserve out of bounds for other uses
	this.cseg = 0;					// a CurveSeg generated when the points are changed? and/or sorted?
									// curve points in x/y (rather than valx/valy)
									// first point (0?) has no curve, others will need to be 
									// new Array(numCurvePoints)
									// ok for output to line but interpolating output 
									// will need thought
}
Point.local = 1;

function CurveCoeffs(nhops, crv)
{
	this.bbp = 0.;
	this.mmp = 0.;
	
	if (nhops > 0)
    {
		var hh, ff, eff, gh;
		if (crv < 0.)
		{
		    if (crv < -1.)
			crv = -1.;
		    hh = Math.pow(((CLCCURVE_C1 - crv) * CLCCURVE_C2), CLCCURVE_C3) * CLCCURVE_C4;
		    ff = hh / (1. - hh);
		    eff = Math.exp(ff) - 1.;
		    gh = (Math.exp(ff * .5) - 1.) / eff;
		    this.bbp = gh * (gh / (1. - (gh + gh)));
		    this.mmp = 1. / (((Math.exp(ff * (1. / nhops)) - 1.) / (eff * this.bbp)) + 1.);
		    this.bbp += 1.;
		}
		else
		{
		    if (crv > 1.)
			crv = 1.;
		    hh = Math.pow(((crv + CLCCURVE_C1) * CLCCURVE_C2), CLCCURVE_C3) * CLCCURVE_C4;
		    ff = hh / (1. - hh);
		    eff = Math.exp(ff) - 1.;
		    gh = (Math.exp(ff * .5) - 1.) / eff;
		    this.bbp = gh * (gh / (1. - (gh + gh)));
		    this.mmp = ((Math.exp(ff * (1. / nhops)) - 1.) / (eff * this.bbp)) + 1.;
		}
    }
    else if (crv < 0.) {
		this.bbp = 2.;
		this.mmp = 1.;
	}
    else
		this.bbp = this.mmp = 1.;
}
CurveCoeffs.local = 1;

//new CurveSeg(prev.valy, curr.valy, prev.valx, curr.valx, curr.curve, numCurvePoints);
function CurveSeg(y0, y1, x0, x1, curve, nhops)
{
	var hopsize, dy, vv, cx;
	
	this.y0 = y0;
	this.y1 = y1;
	this.x0 = x0;
	this.x1 = x1;
	this.delta = x1-x0;
	this.nhops = nhops;
	
	// clip to ±0.995 due to curve~ bug
	
	if(curve < CURVE_MIN) 
		this.curve = CURVE_MIN;
	else if(curve > CURVE_MAX)
		this.curve = CURVE_MAX;
	else
		this.curve = curve;
	
	this.coeffs = new CurveCoeffs(nhops, curve);
	this.cpa = new Array(nhops); // x/y pairs in val format so that zooming/rescaling won't need a recalc
	
	if(this.curve < 0.)
		dy = this.y0 - this.y1;
	else
		dy = this.y1 - this.y0;
				
	cx = this.x0;
	hopsize = this.delta / this.nhops;
	vv = this.coeffs.bbp;
				
	for (var j = 0; j < this.nhops; j++) {
		var cy = (vv - this.coeffs.bbp) * dy + this.y0;
						
		vv *= this.coeffs.mmp;		
		this.cpa[j] = [cx, cy];
					
		cx += hopsize;
	}	
}
CurveSeg.local = 1;

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
	this.rgb6 =[0.42,0.42,0.42];// Couleur de line
	this.display = 1;			// display while inactive ?
	this.grid_x = 100;			// grille X
	this.grid_y = 0.1;			// grille Y
	
	this.PixelDomain;			// ...
	this.PixelRange;			// ...
	this.NextFrom = 0;			// utilisé pour le message next
	this.OnePointAtZero = 0;	// 1 si un des points de la courbe à 0 pour valeur y
}
Courbe.local = 1;

function calcCurves()
{
	if (! isCurveMode)
		return;
		
	for (var c = 0; c < NbCourbes; c++) {
		calcFunctionCurves(f[c]);
	}
	
}
calcCurves.local = 1;

function calcFunctionCurves(courbe)
{
	if (! isCurveMode)
		return;

	if(courbe.np > 1) {
		courbe.pa[0].cseg = 0;
		
		for(var i = 1; i < courbe.np; i++) { // 1st point doesn't have a curve				
			calcOneCurve(courbe, i-1, i);
		}
	}	
}
calcFunctionCurves.local = 1;

function calcOneCurve(courbe, p0, p1)
{	
	var prev, curr;
	
	if (p0 < 0) return;
	if (p1 < 1) return;
	if (p0 > (courbe.np-2)) return;
	if (p1 > (courbe.np-1)) return;
	
	prev = courbe.pa[p0];
	curr = courbe.pa[p1];
	
	if(Math.abs(curr.curve) >= 0.001) 
		curr.cseg = new CurveSeg(prev.valy, curr.valy, prev.valx, curr.valx, curr.curve, numCurvePoints);	
				
}
calcOneCurve.local = 1;

function calcNCurves(courbe, p0, pn)
{
	for(var i = p0; i < pn; i++) {
		calcOneCurve(courbe, i, i+1);
	}
}
calcNCurves.local = 1;


function offsetOneCurve(courbe, p0, p1, dx)
{
	var prev, curr;
	
	if(p0 < 0) return;
	if(p1 < 1) return;
	if(p0 > (courbe.np-2)) return;
	if(p1 > (courbe.np-1)) return;
	
	prev = courbe.pa[p0];
	curr = courbe.pa[p1];
	
	if(curr.cseg == 0 || Math.abs(curr.curve) >= 0.001) {
		curr.cseg = new CurveSeg(prev.valy, curr.valy, prev.valx, curr.valx, curr.curve, numCurvePoints);	
	}
	else
	{
		for(var i = 0; i < curr.cseg.nhops; i++) {
			var tmpy = curr.cseg.cpa[i][1];
			
			curr.cseg.cpa[i] = [ curr.cseg.cpa[i][0]+dx, curr.cseg.cpa[i][1] ];
		}
	}
}
offsetOneCurve.local = 1;

function offsetNCurves(courbe, p0, pn, dx)
{
	for(var i = p0; i < pn; i++) {
		//post("offset curve: "+i+"\n");
		offsetOneCurve(courbe, i, i+1, dx);
	}
}
offsetNCurves.local = 1;

function setattr_pointsize(psize)
{
	PointSize = Math.max(1., Math.min(500., psize));
	askForDrawFunctions();
}

function setattr_drawtoedges(v)
{
	if (v == 0 || v == 1)
		DrawToEdges = v;
	else
		ejies.error(this, "drawtoedges doesn't understand", v);
		
	askForDrawFunctions();
}

function setattr_cacheddrawing(v)
{
	if (v == 0 || v == 1) {
		CachedDrawing = v;
		paintTextNeedsRedraw = true;
		paintFunctionsNeedsRedraw = true;
	} else
		ejies.error(this, "cacheddrawing doesn't understand", v);
		
	askForDrawingAll();
}

// added point moving modes
function setattr_movemode(mode)
{
	if(mode < 0) mode = 0;
	if(mode > 6) mode = 6;
	
	MoveMode = mode;
	
	/*
		0 - "normal" function mode
		1 - "clip" - stop points moving before previous and after next points, clipping their movement
		2 - "shift" - prevent movement to before the previous point and move all subsequent points on by an equal amount
		3 - "shift-clip" - as 2 above but when the last point reaches the end of the domain movement is prevented
		4 - "shift-extend" - points may exceed the maximum domain
		5 - "shift-zoom" - points may exceed the maximum domain and if so we zoom out
		6 - "auto-zoom" - points may exceed the maximum domain always normalize the x axis
	*/
}

function getattr_movemode()
{
	outlet(DUMPOUT, "movemode", MoveMode);
	return MoveMode;
}

function getattr_pointsize()
{
	outlet(DUMPOUT, "pointsize", PointSize);
	return PointSize;
}

function getattr_drawtoedges()
{
	outlet(DUMPOUT, "drawtoedges", DrawToEdges);
	return DrawToEdges;
}

function getattr_cacheddrawing()
{
	outlet(DUMPOUT, "cacheddrawing", CachedDrawing);
	return CachedDrawing;
}

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
function askForDrawFunctions()
{	
	slowDrawing.schedule(20); // trigger the task one time
}
askForDrawFunctions.local = 1;

function askForDrawText()
{
	slowDrawingText.schedule(750);
}
askForDrawText.local = 1;

function askForDrawingAll()
{
	slowDrawingAll.schedule(20);
}
askForDrawingAll.local = 1;

function drawAll()
{
	paintTextNeedsRedraw = true;
	paintFunctionsNeedsRedraw = true;
	mgraphics.redraw();
}

function drawText()
{
	paintTextNeedsRedraw = true;
	mgraphics.redraw();
}

function drawFunctions()
{
	paintFunctionsNeedsRedraw = true;
	mgraphics.redraw();
}

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

function paint()
{
	paintFunctions();
	
	if (LegendState)
		paintText();

	if (LineValue >= f[front].domain[0])
		paintLine();
}

function paintText()
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	if (CachedDrawing) {
		if (paintTextNeedsRedraw) {
			var mg = new MGraphics(width, height);
			
			paintTextToContext(mg, width, height);
			
			paintTextImage = new Image(mg);
		}
	
		mgraphics.image_surface_draw(paintTextImage);	// simply copying the image surface
	} else
		paintTextToContext(mgraphics, width, height);
	
	paintTextNeedsRedraw = false;
}

function paintTextToContext(context, width, height)
{
	var str, strW, strH;
	var fontmeasure, baselineoffset;
	
	with ( context ) {
		// Nom de la Courbe
		select_font_face("Arial", "normal", "normal");
		set_font_size(11.0);
		set_source_rgb(f[front].rgb4);
		fontmeasure = mgraphics.font_extents();
		baselineoffset = -fontmeasure[1] + (fontmeasure[0]+fontmeasure[1]) / 2;

		if ( width < 130 && (SelectedPoint >= 0  || IdlePoint >= 0) ) {
			;	// don't do anything if there's not enough space
		} else {
			if (f[front].display)
				str = f[front].name;
			 else
				str = "("+ f[front].name + ")";
		}
		strW = text_measure(str)[0];
		strH = text_measure(str)[1];
		
		move_to(width - Bordure - strW, Bordure + strH - baselineoffset);
		show_text(str);
		
		if (isCurveMode) {
			if (f[front].np > 0 && (SelectedPoint >= 0  || IdlePoint >= 0) || SelectedCurve > 0) {
				var WhichPoint = SelectedCurve > 0 ? (SelectedCurve) : ((SelectedPoint >=0 ) ? SelectedPoint : IdlePoint);
	
				if ( WhichPoint < f[front].np) {
					var sep = " ";
					if (f[front].pa[WhichPoint].fix)
						sep = "=";
	
					if (TimeFlag)
						str = "X" + sep + MyDomain2String(f[front]["pa"][WhichPoint].valx) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2) + " c" + sep + f[front]["pa"][WhichPoint].curve.toFixed(3);
					else
						str = "X" + sep + f[front]["pa"][WhichPoint].valx.toFixed(2) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2) + " c" + sep + f[front]["pa"][WhichPoint].curve.toFixed(3);
					
					strW = text_measure(str)[0];
					strH = text_measure(str)[1];
					move_to(Bordure, Bordure + strH - baselineoffset);
					show_text(str);
				}
			}
		} else {
			if (f[front].np > 0 && (SelectedPoint >= 0  || IdlePoint >= 0)) {
				var WhichPoint = (SelectedPoint >=0 ) ? SelectedPoint : IdlePoint ;
	
				if ( WhichPoint < f[front].np) {
					var sep = " ";
					if (f[front].pa[WhichPoint].fix)
						sep = "=";
	
					if (TimeFlag)
						str = "X" + sep + MyDomain2String(f[front]["pa"][WhichPoint].valx) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2);
					else
						str = "X" + sep + f[front]["pa"][WhichPoint].valx.toFixed(2) + " Y" + sep + f[front]["pa"][WhichPoint].valy.toFixed(2);
					
					strW = text_measure(str)[0];
					strH = text_measure(str)[1];
					move_to(Bordure, Bordure + strH - baselineoffset);
					show_text(str);
				}
			}
		}
	}
}
function paintLine()
{
	with ( mgraphics ) {
		set_source_rgb(f[front].rgb6);
		move_to(val2x(f[front], LineValue), this.box.rect[3] - this.box.rect[1]);
		line_to(val2x(f[front], LineValue), 0);
		stroke();
	}
}

function paintFunctions()
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	if (CachedDrawing) {
		if (paintFunctionsNeedsRedraw) {
			var mg = new MGraphics(width, height);
		
			paintFunctionsToContext(mg, width, height);
			
			paintFunctionsImage = new Image(mg);
		}
		
		mgraphics.image_surface_draw(paintFunctionsImage);
	} else
		paintFunctionsToContext(mgraphics, width, height);
	
	paintFunctionsNeedsRedraw = false;
}

function paintFunctionsToContext(context, width, height)
{
	var c, i, j;

	with ( context ) {
		set_source_rgb(f[front].brgb);
		rectangle(0, 0, width, height);
		fill();
		
				// dessine la grille X
		if (GridMode  & 1) {
			set_source_rgba(f[front]["rgb5"], Ghostness);
			
			for (i = 0; i < (((f[front].domain[1] - f[front].domain[0]) / f[front].grid_x)+1); i++) {
				move_to(val2x(f[front], i*f[front].grid_x + f[front].domain[0]), val2y(f[front], f[front].range[0]));
				line_to(val2x(f[front], i*f[front].grid_x + f[front].domain[0]), val2y(f[front], f[front].range[1]));
			}
			stroke();
		}
		// dessine le grille Y
		if (GridMode & 2) {
			set_source_rgba(f[front]["rgb5"], Ghostness);
			
			for (i = 0; i < (((f[front].range[1] - f[front].range[0]) / f[front].grid_y)+1); i++) {
				move_to(val2x(f[front], f[front].domain[0]), val2y(f[front], i*f[front].grid_y + f[front].range[0]));
				line_to(val2x(f[front], f[front].domain[1]), val2y(f[front], i *f[front].grid_y + f[front].range[0]));
			}
			stroke();
		}
	
		for (c = 0; c < NbCourbes; c++) {
			if (f[c].np > 0) {

				// dessine les segments
				if ( f[c].display ) {
					set_source_rgba(f[c]["rgb2"], (c == front ? 1 : Ghostness));
					
					if (DrawToEdges) {
						move_to(val2x(f[front],  f[front].domain[0]), f[c]["pa"][0].y ); //go to left limit and y of first point
						line_to(f[c]["pa"][0].x, f[c]["pa"][0].y); //draw a line to the first point
					} else
						move_to(f[c]["pa"][0].x, f[c]["pa"][0].y);
					
					if (! isCurveMode) {
						for (i = 0; i < (f[c].np - 1); i++) {
							line_to(f[c]["pa"][i+1].x, f[c]["pa"][i+1].y);
						}
					} else {
						for (i = 0; i < (f[c].np - 1); i++) {
							var thePoint = f[c]["pa"][i+1];
							
							if (Math.abs(thePoint.curve) >= 0.001) {
								var cseg 	= thePoint.cseg;
								var cpa 	= cseg.cpa; 
								
								for(j = 0; j < cpa.length; j++) {
									var cx = val2x(f[c], cpa[j][0]);
									var cy = val2y(f[c], cpa[j][1]);
									
									line_to(cx, cy);
								}
							}	
							line_to(thePoint.x, thePoint.y);
						}
					}
					
					if (DrawToEdges) {
						line_to(val2x(f[front], f[front].domain[1]), f[c]["pa"][i].y ); //draw a line from last point to right limit
					}
					
					stroke();
				}
				
				// dessine les points de la courbe active ou de toutes les courbes si HiddenPointDisplay est activé
				if ( f[c].display && ((c == front) || HiddenPointDisplay) ) {
					// dessine les points
					var tmpTransparency = c == front ? 1 : Ghostness;
					set_source_rgba(f[c]["frgb"], tmpTransparency);
	
					f[c].OnePointAtZero = 0;
					for (i = 0; i < f[c].np; i++) {							
						if ( f[c]["pa"][i].sustain) {
							set_source_rgba(f[c]["rgb3"], tmpTransparency);
							ellipse(f[c]["pa"][i].x - 5/2, f[c]["pa"][i].y - 5/2, 5, 5);// 5 pixels le point...
							fill();
							set_source_rgba(f[c]["frgb"], tmpTransparency);
						}
						else {
							if (f[c]["pa"][i].valy == 0) {
								f[c].OnePointAtZero = 1;
								ellipse(f[c]["pa"][i].x - 5/2, f[c]["pa"][i].y - 5/2, 5, 5);// 5 pixels le point...
								stroke();
							} else {
								ellipse(f[c]["pa"][i].x - 5/2, f[c]["pa"][i].y - 5/2, 5, 5);// 5 pixels le point...
								fill();
							}
						}
					}
				}
			}
		}
	}
}

function fsaa(v)
{
	// just for legacy
}



//////////////// Fonctions magiques ///////////////
function x2val(courbe, x) { return ((( x - Bordure)) * courbe.PixelDomain + courbe.ZoomX[0]); }
function y2val(courbe, y) {	return (courbe.ZoomY[1] - ((y  - Bordure - LegendStateBordure) * courbe.PixelRange)); }
function val2x(courbe, valx) {	return (( (valx - courbe.ZoomX[0]) / courbe.PixelDomain) + Bordure); }
function val2y(courbe, valy) {	return ( ((courbe.ZoomY[1] - valy) / courbe.PixelRange) + Bordure + LegendStateBordure); }


//////////////// Fonctions standart ///////////////
function bang()
{
	doLineOutput(f[front]);
}
bang.immediate = 1;

function msg_float(v)
{
	interp(f[front], v);
}
msg_float.immediate = 1;

function list()
{
	ArgsParser(f[front], "list", arguments);
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
	if ( (paintFunctionsNeedsRedraw + paintTextNeedsRedraw) == 2)
		askForDrawingAll();
	else if (paintTextNeedsRedraw)
		drawText();
	else if (paintFunctionsNeedsRedraw)
		askForDrawFunctions();
}

function line(v)
{
	LineValue = v;
	drawAll();
}

function onresize(w,h)
{
	box.size(ejies.clip(w, 100, 2048),ejies.clip(h, 50, 2048));
	AllPixel2Machin();
	ValRecalculate();
	drawAll();
}


//////////////// Fonctions Internes ///////////////
function LectureInspector()
{
	// Note: this is not used anymore in favor of embedmessage
	if (LectureInspectorFlag)
		return;
	
	var i, j;
	var idx = 1; // jsarguments[0] == ej.function.js
	if (jsarguments.length > 2) {
		NbCourbes = jsarguments[idx++];

		init();	// création des courbes

		if (jsarguments.length != (11 + NbCourbes*18) ) {
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

function doLineOutput(courbe)
{
	var tmpArray = new Array();
	var i, idx;
	
	if ( ! courbe.np)
		return;		// si pas de point... pas de line... pas de bras... pas de chocolat...
	
	courbe.NextFrom = 0;
	
	idx=0;
	if(OutputMode) {//ajout Alexis
		tmpArray[idx++] = courbe.pa[0].valy;
		tmpArray[idx++] = 0;
		if (isCurveMode)	tmpArray[idx++] = 1;
		for (i = 1; i < courbe.np; i++) {
			tmpArray[idx++] = courbe.pa[i].valy;
			tmpArray[idx++] = courbe.pa[i].valx - courbe.pa[i-1].valx;
			if (isCurveMode)	tmpArray[idx++] = courbe.pa[i].curve;
			if (courbe.pa[i].sustain) {
				courbe.NextFrom = i;
				break;
			}
		}
	} else {
		for (i = 1; i < courbe.np; i++) {
			tmpArray[idx++] = courbe.pa[i].valy;
			tmpArray[idx++] = courbe.pa[i].valx - courbe.pa[i-1].valx;
			if (isCurveMode)	tmpArray[idx++] = courbe.pa[i].curve;
			if (courbe.pa[i].sustain) {
				courbe.NextFrom = i;
				break;
			}
		}
		outlet(LINE_OUTLET, courbe.name, courbe.pa[0].valy);
	}

	if (tmpArray.length > 1)
		outlet(LINE_OUTLET, courbe.name, tmpArray);
}
doLineOutput.local = 1;

function interp(courbe, v)
{
	var i, a;
	
	// less than one point... abort!
	if (courbe.np < 1)
		return;
	
	// 1 point output the Y value.
	if (courbe.np < 2) {
		outlet(INTERP_OUTLET, courbe.name, courbe.pa[0].valy);
		return;
	}
	
	if (v < courbe.pa[0].valx) {	// v est plus petit que le premier point
		outlet(INTERP_OUTLET, courbe.name, courbe.pa[0].valy);
		return;
	}

	if (v > courbe.pa[courbe.np - 1].valx) {	// v est plus grand que le dernier point
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
	
	if (isCurveMode) { 
		if(Math.abs(courbe.pa[a+1].curve) < 0.001) { // almost linear
			outlet(INTERP_OUTLET, courbe.name, ((v - courbe.pa[a].valx) / tmpDomain) * tmpRange + courbe.pa[a].valy);
		} else {	
			// curves
			var hp; //h(p) = (((p + 1e-20) * 1.2) ** .41) * .91.
			var fp; //f(p) = h(p) / (1 - h(p))
			var gp; //g(x, p) = (exp(f(p) * x) - 1) / (exp(f(p)) - 1)
			var gx;
			var curve = courbe.pa[a+1].curve;
			
			if(curve < 0.) {
				gx = (courbe.pa[a+1].valx - v) / tmpDomain;
				
				hp = Math.pow((1e-20 - curve) * 1.2, 0.41) * 0.91;
				fp = hp / (1. - hp);
				gp = (Math.exp(fp * gx) - 1.) / (Math.exp(fp) - 1.);
				
				outlet(INTERP_OUTLET, courbe.name, courbe.pa[a+1].valy - gp * tmpRange);
	
			} else {
				gx = (v - courbe.pa[a].valx) / tmpDomain;
				
				hp = Math.pow((curve + 1e-20) * 1.2, 0.41) * 0.91;
				fp = hp / (1. - hp);
				gp = (Math.exp(fp * gx) - 1.) / (Math.exp(fp) - 1.);
				
				outlet(INTERP_OUTLET, courbe.name, gp * tmpRange + courbe.pa[a].valy);
			}
		}
	} else {
		outlet(INTERP_OUTLET, courbe.name, ((v - courbe.pa[a].valx) / tmpDomain) * tmpRange + courbe.pa[a].valy);
	}
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

	if (isCurveMode) {
		for (i = 1; i < (Math.floor((liste.length - 1) / 3) * 3); i += 3) {
			if(LimitNP && courbe.np < MAX_CURVE_NP) {
				courbe.pa[courbe.np++] = new Point( val2x(courbe, liste[i]), val2y(courbe, liste[i+1]), liste[i], liste[i+1], liste[i+2]); // added curve MR
			}
		}
	} else {
		for (i = 1; i < (Math.floor((liste.length - 1) / 2) * 2); i += 2) {
			courbe.pa[courbe.np++] = new Point( val2x(courbe, liste[i]), val2y(courbe, liste[i+1]), liste[i], liste[i+1], 0);
		}
	}
	
	sortingPoints(courbe);
	calcFunctionCurves(courbe); 			// added MR
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
	
	if (isCurveMode) {
		for (var i = 0; i < ((arguments.length - 1) / 4); i++) {
			courbe.pa[i] = new Point(	val2x(courbe, arguments[i*4+1]),
										val2y(courbe, arguments[i*4+2]),
										arguments[i*4+1],
										arguments[i*4+2],
										arguments[i*4+3] // added MR
									);
			courbe.pa[i].fix = (arguments[i*4+4] & 1) == 1;
			courbe.pa[i].sustain = (arguments[i*4+4] & 2) == 2;
		}
	} else {
		for (var i = 0; i < ((arguments.length - 1) / 3); i++) {
			courbe.pa[i] = new Point(	val2x(courbe, arguments[i*3+1]),
										val2y(courbe, arguments[i*3+2]),
										arguments[i*3+1],
										arguments[i*3+2]
									);
			courbe.pa[i].fix = (arguments[i*3+3] & 1) == 1;
			courbe.pa[i].sustain = (arguments[i*3+3] & 2) == 2;
		}
	}
	courbe.np = courbe.pa.length;

	calcFunctionCurves(courbe); 			// added MR
	askForNotify();
	askForDrawingAll();
}

function sync()
{
	if (arguments.length == 0) {
		outlet(DUMP_OUTLET, "nbfunctions", f.length);
		outlet(DUMP_OUTLET, "mode", isCurveMode);
	
		for (var c = 0; c < f.length; c++) {
			outlet(DUMP_OUTLET, getSyncCourbe(c));
	
			if (f[c].np > 0)
				outlet(DUMP_OUTLET, getSyncPoints(c));
			else
				outlet(DUMP_OUTLET, f[c].name, "clear");
		}
	} else
		sync2send(arguments[0]);
}

function sync2send(sendName)
{
	messnamed(sendName, "nbfunctions", f.length);
	messnamed(sendName, "mode", isCurveMode);

	for (var c = 0; c < f.length; c++) {
		g.syncThings = getSyncCourbe(c);
		g.sendnamed(sendName, "syncThings");

		if (f[c].np > 0) {
			g.syncThings = getSyncPoints(c);
			g.sendnamed(sendName, "syncThings");
		} else {
			g.syncThings = [ f[c].name, "clear" ];
			g.sendnamed(sendName, "syncThings");
		}
	}
}
sync2send.local = 1;

function synccurrent()
{
	if (arguments.length == 0) {
		outlet(DUMP_OUTLET, "mode", isCurveMode);
		outlet(DUMP_OUTLET, getSyncCourbe(front));
		
		if (f[front].np > 0)
			outlet(DUMP_OUTLET, getSyncPoints(front));
		else
			outlet(DUMP_OUTLET, "clear");
	
	} else 
		syncCurrent2Send(arguments[0]);
}

function syncCurrent2Send(sendName)
{
	messnamed(sendName, "mode", isCurveMode);
	g.syngThings = getSyncCourbe(front);
	g.sendnamed(sendName, "syncThings");
	
	if (f[front].np > 0) {
		g.syncThings = getSyncPoints(front);
		g.sendnamed(sendName, "syncThings");
	} else {
		messnamed(sendName, "clear");
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
	var tmp = new Array((f[courbeIdx].np * (isCurveMode ? 4 : 3)) + 2);
	var idx = 0;
	tmp[idx++] = "syncpoints";
	tmp[idx++] = courbeIdx; // the first thing is the ID of the function
	
	for (var i = 0; i < f[courbeIdx].np; i++) {
		tmp[idx++] = f[courbeIdx].pa[i].valx;
		tmp[idx++] = f[courbeIdx].pa[i].valy;
		if (isCurveMode)	tmp[idx++] = f[courbeIdx].pa[i].curve; // added MR
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

	calcFunctionCurves(courbe); 			// added MR
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
		var i;
		for (i = 0; i < ReadDialogObjectRef.length; i++)
			this.patcher.remove(ReadDialogObjectRef[i]);
	}, this);
		
	tskDel.schedule(100);
	
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
		calcFunctionCurves(courbe); 			// added MR
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

	calcFunctionCurves(courbe); 			// added MR
	DoNotify();
	askForDrawFunctions();
}
MySmooth.local = 1;

function pixel2machin(courbe)
{
	courbe.PixelDomain = (courbe.ZoomX[1] - courbe.ZoomX[0]) / ((this.box.rect[2]-this.box.rect[0])-(Bordure*2));
	courbe.PixelRange = (courbe.ZoomY[1] - courbe.ZoomY[0]) / ((this.box.rect[3]-this.box.rect[1])-LegendStateBordure-((Bordure*2)));
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

function AddOnePoint(courbe, x, y, curve)
{
	var tmp = courbe.np;	// si tmp n'est pas modifié c'est que c'est la plus grande valeur...
	var i;
	
	if (isCurveMode && LimitNP && tmp >= MAX_CURVE_NP) return -1; // don't add points if more points than curve~ return -1 for the mousing functions

	if (isCurveMode) {
		if(LimitNP && tmp >= MAX_CURVE_NP) return -1; // don't add points if more points than curve~ return -1 for the mousing functions
	}

	if (courbe.np == 0) {	// cas particulier quand il n'y a pas de point dans la courbe
		if (isCurveMode)
			courbe.pa[0] = new Point(x,y, x2val(courbe, x), y2val(courbe, y), curve);
		else		
			courbe.pa[0] = new Point(x,y, x2val(courbe, x), y2val(courbe, y));
		tmp = 0;
		
		courbe.np++;
	}
	else {
		for (i = 0; i < courbe.np; i++) {
			if (courbe.pa[i].x > x) {
				tmp = i;
				break;
			}
		}
		
		// insère un point
		if (isCurveMode)
			courbe.pa.splice(tmp, 0, new Point(x,y, x2val(courbe, x), y2val(courbe, y), curve) );	// insère un point
		else
			courbe.pa.splice(tmp, 0, new Point(x,y, x2val(courbe, x), y2val(courbe, y)) );

		courbe.np++;	// on incrémente car il y a un point supplémentaire dans la courbe
		
		if (isCurveMode) {
			calcOneCurve(courbe, tmp-1, tmp); // added - MR
			calcOneCurve(courbe, tmp, tmp+1); // added - MR
		}
		
	}

	return tmp;		// valeur de retour utilisée comme seleected point
}
AddOnePoint.local = 1;

function DeletePoint(courbe, lequel)
{
 	if (! courbe.pa[lequel].fix) {
		courbe.pa.splice(lequel, 1);
		courbe.np--;
		
		if (isCurveMode)
			calcOneCurve(courbe, lequel-1, lequel); // added - MR
	}
}
DeletePoint.local = 1;

function MovePoint(courbe, lequel, newx, newy, curve)
{
	var dx = 0;
	
	if (lequel >= courbe.np) {
		ejies.error(this, "no point", lequel,"in function", courbe.name);
		return;
	}

//	courbe.pa[lequel].valx = newx;
	courbe.pa[lequel].valy = newy;					
//	courbe.pa[lequel].x = val2x(courbe, newx);
	courbe.pa[lequel].y = val2y(courbe, newy);

	// only change curve if it's a valid value - allowing a dummy value e.g. 999 to leave it alone
	if(curve >= CURVE_MIN && curve <= CURVE_MAX)
		courbe.pa[lequel].curve = curve;
	
	if(MoveMode == 1) {
		if(lequel > 0 && newx < courbe.pa[lequel-1].valx) 
			newx = courbe.pa[lequel-1].valx;
		else if(lequel < (courbe.np-1) && newx > courbe.pa[lequel+1].valx) 
			newx = courbe.pa[lequel+1].valx;
		
		courbe.pa[lequel].valx = newx;
		courbe.pa[lequel].x = val2x(courbe, newx);
		
	} else if(MoveMode == 2 || MoveMode == 3) {
		
		if(lequel > 0 && newx < courbe.pa[lequel-1].valx) newx = courbe.pa[lequel-1].valx;
		
		dx = newx - courbe.pa[lequel].valx;
		
		if(MoveMode == 3) {			
						
			if(dx > (courbe.domain[1] - courbe.pa[courbe.np-1].valx)) {
				dx = courbe.domain[1] - courbe.pa[courbe.np-1].valx;
			}
		}
		
		if(dx != 0) {
			
			for(var i = lequel; i < courbe.np; i++) {
				courbe.pa[i].valx = ejies.clip(dx+courbe.pa[i].valx, courbe.domain[0], courbe.domain[1]);
				courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
			}
		}
		
	} else {
		courbe.pa[lequel].valx = newx;
		courbe.pa[lequel].x = val2x(courbe, newx);
	}
	
	if(courbe.np == 1) {
		//only one point
		//..
		;
	}
	else if(lequel == 0 && courbe.pa[lequel].valx <= courbe.pa[lequel+1].valx) {
		//first point and it still is
		if(MoveMode == 0 || MoveMode == 1)
			calcOneCurve(courbe, lequel, lequel+1); 		// added - MR
		else if(MoveMode == 2 || MoveMode == 3)
			offsetNCurves(courbe, lequel, courbe.np-1, dx);
			
	}
	else if(lequel == (courbe.np-1) && courbe.pa[lequel].valx >= courbe.pa[lequel-1].valx){
		//last point and it still is
		calcOneCurve(courbe, lequel-1, lequel); // added - MR		
	}
	else if(courbe.pa[lequel].valx >= courbe.pa[lequel-1].valx && courbe.pa[lequel].valx <= courbe.pa[lequel+1].valx)  {
		// no need to sort - the order hasn't changed
		
		if(MoveMode == 0 || MoveMode == 1) {
			calcOneCurve(courbe, lequel-1, lequel); 		// added - MR
			calcOneCurve(courbe, lequel, lequel+1); 		// added - MR
		}
		else if(MoveMode == 2 || MoveMode == 3)
		{
			calcOneCurve(courbe, lequel-1, lequel); 		// added - MR
			offsetNCurves(courbe, lequel, courbe.np-1, dx);
		}
	}

	sortingPoints(courbe);	// il faut maintenant remettre tous les points dans l'ordre
	calcFunctionCurves(courbe);
	ApplyAutoSustain(); // moved in here - no need to do it if points aren't re-ordered
	
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

function ArgsParser(courbe, msg, a) 
{
/* 	var tmpReturn = -1; */
/* 	var NeedDraw = 0;	// pour savoir si on doit réafficher */
	var NeedNotify = -1;	// pour savoir si on doit mettre à jour psto

	if ( typeof(a[0]) == "number") {
	// en fonction du nombre d'arguments 1 (interpolationX-Y) 2 (AddPoint) 3 (MovePoint)
		switch (a.length) {
			case 1: interp(courbe, a[0]); break;
			case 2: AddOnePoint(courbe, val2x(courbe, a[0]), val2y(courbe, a[1]), DEFAULT_CURVE); askForDrawFunctions(); break;
			case 3: MovePoint(courbe, a[0], a[1], a[2], DEFAULT_CURVE); askForDrawFunctions(); break;
			case 4: MovePoint(courbe, a[0], a[1], a[2], a[3]); askForDrawFunctions(); break;
			default: ejies.error(this, "too many arguments for message", msg); break;
		}
		return 0;	// sort de la fonction
	}

	switch (a[0]) {
		case "bang":		doLineOutput(courbe); break;
		case "clear":		a.length == 1 ? MyClear(courbe) : MyClear(courbe, a); break;
		case "clearsustain":	MyClearSustain(courbe); break;
		case "dump":		a.length == 2 ? MyDump(courbe, a[1]) : MyDump(courbe); break;
		case "listdump":	a.length == 2 ? MyListDump(courbe, a[1]) : MyListDump(courbe); break;
		case "dumpmatrix": 	a.length == 2 ? MyDumpMatrix(courbe, a[1]) : MyDumpMatrix(courbe); break;
		case "jit_matrix":	setPointsFromMatrix(courbe, a[1]); break;
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
		case "gridstep":	if (a.length == 2) { MyGridStep_x(courbe, a[1]); }; break;
		case "gridstep_x":	if (a.length == 2) { MyGridStep_x(courbe, a[1]); }; break;
		case "gridstep_y":	if (a.length == 2) { MyGridStep_y(courbe, a[1]); }; break;
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
		case "getgridstep_x":	getgridstep_x(courbe); break;
		case "getgridstep_y":	getgridstep_y(courbe); break;
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
		doLineOutput(courbe);
		return;
	}
	
	for (i = (courbe.NextFrom + 1), idx = 0; i < courbe.np; i++) {
		tmpArray[idx++] = courbe.pa[i].valy;
		tmpArray[idx++] = courbe.pa[i].valx - courbe.pa[i-1].valx;
		
		if (isCurveMode)
			tmpArray[idx++] = courbe.pa[i].curve; // added curve - MR

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
	calcFunctionCurves(courbe); // added - MR
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

function MyGridStep_x(courbe, v)
{
	if (typeof(v) == "number" && v > 0) {
		if (((courbe.ZoomX[1] - courbe.ZoomX[0]) / v) < ((this.box.rect[2]-this.box.rect[0])-(Bordure*2) / 4) ) { /* très arbitraire tout ça */
			courbe.grid_x = v;
			DoNotify();
			if (GridMode)
				askForDrawFunctions();
		}
	} else
		ejies.error(this, "bad argument for message gridstep_x");
}
MyGridStep_x.local = 1;

function MyGridStep_y(courbe, v)
{
	if (typeof(v) == "number" && v > 0) {
		if (((courbe.ZoomY[1] - courbe.ZoomY[0]) / v) < (this.box.rect[3] - this.box.rect[1]) / 4) { /* très arbitraire tout ça */
			courbe.grid_y = v;
			DoNotify();
			if (GridMode)
				askForDrawFunctions();
		}
	} else
		ejies.error(this, "bad argument for message gridstep_y");
}
MyGridStep_y.local = 1;

function MyDump(courbe, sendname)
{
/* 	var tmpF = courbe; */
	var i, str;
	
	if (! courbe.np)
		return;

	if (arguments.length == 1) {
		if (isCurveMode) {
			for (i = 0; i < courbe.np; i++)
				outlet(DUMP_OUTLET, courbe.name, courbe.pa[i].valx, courbe.pa[i].valy, courbe.pa[i].curve);
		} else {
			for (i = 0; i < courbe.np; i++)
				outlet(DUMP_OUTLET, courbe.name, courbe.pa[i].valx, courbe.pa[i].valy);
		}
		
		return;
	}
	//else -> on envoie vers un send
	for (i = 0; i < courbe.np; i++) {
		if (isCurveMode)
			g.dump = [ courbe.name, courbe.pa[i].valx, courbe.pa[i].valy, courbe.pa[i].curve ];
		else
			g.dump = [ courbe.name, courbe.pa[i].valx, courbe.pa[i].valy ];
			
		g.sendnamed(sendname,"dump");
	}
}
MyDump.local = 1;

function checkInputMatrix(input)
{
	var isOk = true;

	if (input.dim.length < 2 || input.dim.length > 3) {
		post(input.dim.length);
		post();
		ejies.error(this, "support only 2/3 dim matrix");
		isOk = false;
	}
	if (input.planecount.length > 1) {
		ejies.error(this, "support only 1 plane matrix");
		isOk = false;
	}
	return isOk;
}
checkInputMatrix.local = 1;

function setPointsFromMatrix(courbe, matrixName)
{
	var myMatrix = new JitterMatrix(matrixName);

	if (checkInputMatrix(myMatrix)) {
		courbe.np = 0;
	
		if (isCurveMode && myMatrix.dim[0] == 3) {
			for (var i = 0; i < myMatrix.dim[1]; i++)
				courbe.pa[courbe.np++] = new Point(
					val2x(courbe, myMatrix.getcell(0, i)[0]), 
					val2y(courbe, myMatrix.getcell(1, i)[0]), 
					myMatrix.getcell(0, i)[0], 
					myMatrix.getcell(1, i)[0],
					myMatrix.getcell(2, i)[0]
				);
		} else {
			for (var i = 0; i < myMatrix.dim[1]; i++)
				courbe.pa[courbe.np++] = new Point(
				val2x(courbe, myMatrix.getcell(0, i)[0]),
				val2y(courbe, myMatrix.getcell(1, i)[0]),
				myMatrix.getcell(0, i)[0],
				myMatrix.getcell(1, i)[0]);
		}
		
		sortingPoints(courbe);
		DoNotify();
		askForDrawFunctions();
	}
}
setPointsFromMatrix.local = 1;

function MyDumpMatrix(courbe, sendname)
{
	var p;

	if (! courbe.np)
		return;

	if (isCurveMode) {
		var myMatrix = new JitterMatrix(1, "float32", 3, courbe.np);
		
		for (p = 0; p < courbe.np; p++) {
			myMatrix.setcell2d(0, p, courbe.pa[p].valx);
			myMatrix.setcell2d(1, p, courbe.pa[p].valy);
			myMatrix.setcell2d(2, p, courbe.pa[p].curve); // added MR
		}
		
	} else {
		var myMatrix = new JitterMatrix(1, "float32", 2, courbe.np);
	
		for (p = 0; p < courbe.np; p++) {
			myMatrix.setcell2d(0, p, courbe.pa[p].valx);
			myMatrix.setcell2d(1, p, courbe.pa[p].valy);
		}
	}
	
	if (arguments.length  == 1)
		outlet(DUMP_OUTLET, courbe.name, "jit_matrix", myMatrix.name);
	else
		messnamed(sendname, courbe.name, "jit_matrix", myMatrix.name);
}
MyDumpMatrix.local = 1;

function MyListDump(courbe, sendname)
{
/* 	var tmpF = courbe; */
	var tmpArray = new Array();
	var i, idx;
	
	if (! courbe.np)
		return;

	if (isCurveMode) {
		for (i = 0, idx = 0; i < courbe.np; i++) {
			tmpArray[idx++] = courbe.pa[i].valx;
			tmpArray[idx++] = courbe.pa[i].valy;
			tmpArray[idx++] = courbe.pa[i].curve; // added - MR
		}
	} else {
		for (i = 0, idx = 0; i < courbe.np; i++) {
			tmpArray[idx++] = courbe.pa[i].valx;
			tmpArray[idx++] = courbe.pa[i].valy;
		}
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

function MyFlip(courbe)
{
	var tmpX, tmpY, tmpSustain, tmpFix;
	
	// swap points so there's no need to reorder after (avoid the "same x value" problem for the ordering)
	for (var i = 0; i < Math.round(courbe.np / 2); i++) {
		if (i == courbe.np - i - 1) { // odd number of points (the middle stay at the middle position)
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[i].valx;
			courbe.pa[i].valy = (courbe.range[0] + courbe.range[1]) - courbe.pa[i].valy;
		} else {
			tmpX = courbe.pa[i].valx;
			tmpY = courbe.pa[i].valy;
			tmpSustain = courbe.pa[i].sustain;
			tmpFix = courbe.pa[i].fix;
			
			courbe.pa[i].valx = (courbe.domain[0] + courbe.domain[1]) - courbe.pa[courbe.np - i - 1].valx;
			courbe.pa[i].valy = (courbe.range[0] + courbe.range[1]) - courbe.pa[courbe.np - i - 1].valy;
			
			courbe.pa[i].sustain = courbe.pa[courbe.np - i - 1].sustain;
			courbe.pa[i].fix = courbe.pa[courbe.np - i - 1].fix;
			
			courbe.pa[courbe.np - i - 1].valx = (courbe.domain[0] + courbe.domain[1]) - tmpX;
			courbe.pa[courbe.np - i - 1].valy = (courbe.range[0] + courbe.range[1]) - tmpY;
			
			courbe.pa[courbe.np - i - 1].sustain = tmpSustain;
			courbe.pa[courbe.np - i - 1].fix = tmpFix;
		}
	}
	
	// copy the curve values
	// curve value is always stored starting at the second index
	if (isCurveMode && courbe.np > 1) {
		var tmpCurve = new Array(courbe.np-1);
		
		// make the copy of the original curve values
		for (var i=1; i < courbe.np; i++) {
			tmpCurve[i-1] = courbe.pa[i].curve;
		}
		
		// store the new one in reverse mode (j--), and inverse the sign of the curve
		courbe.pa[0].curve = 0;
		for (var i=1, j = courbe.np-2; i < courbe.np; i++, j--) {
			courbe.pa[i].curve = -(tmpCurve[j]);	// inverse the sign
		}
	}

	ApplyAutoSustain();
	
	ValRecalculate();
	calcFunctionCurves(courbe); 	// added - MR
	askForDrawFunctions();
	askForNotify();
}
MyFlip.local = 1;

function MyFlipX(courbe)
{
	var tmpX, tmpY, tmpCurve, tmpSustain, tmpFix;
	
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
	
	// copy the curve values
	// curve value is always stored starting at the second index
	if (isCurveMode && courbe.np > 1) {
		var tmpCurve = new Array(courbe.np-1);
		
		// make the copy of the original curve values
		for (var i=1; i < courbe.np; i++) {
			tmpCurve[i-1] = courbe.pa[i].curve;
		}
		
		// store the new one in reverse mode (j--), and inverse the sign of the curve
		courbe.pa[0].curve = 0;
		for (var i=1, j = courbe.np-2; i < courbe.np; i++, j--) {
			courbe.pa[i].curve = -(tmpCurve[j]);	// inverse the sign
		}
	}

	ApplyAutoSustain();

	calcFunctionCurves(courbe); 	// added - MR
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

	calcFunctionCurves(courbe);
	askForDrawFunctions();
	askForNotify();
}
MyFlipY.local = 1;

function MyNormalizeX(courbe)
{
	if (courbe.np < 2)
		return;

	var min = courbe.domain[1];
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

// added for the MoveModes MR
function MyNormalizeXZoomOut(courbe)
{
	if (courbe.np < 2)
		return;

	var min = courbe.domain[1];
	var max = courbe.domain[0];
	var i;
	
	for (i = 0 ; i < courbe.np; i++) {
		if (courbe.pa[i].valx < min)
			min = courbe.pa[i].valx;
		if (courbe.pa[i].valx > max)
			max = courbe.pa[i].valx;
	}
	
	// only normalize if our points are beyond our domain
	if (max > courbe.domain[1] || min < courbe.domain[0]) {
		ApplyNormalizeX(courbe, min, max);
		DoNotify();
		askForDrawFunctions();
	}
}
MyNormalizeXZoomOut.local = 1;

function ApplyNormalizeX(courbe, min, max)
{
	// method used in MyNormalize and MyNormalizeX
	var range = (courbe.domain[1] - courbe.domain[0]) / (max - min);
	var offset = 0 - min;

	for (var i = 0; i < courbe.np; i++) {
		courbe.pa[i].valx = (courbe.pa[i].valx + offset) * range - (0 - courbe.domain[0]);
		courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
	}
	
	calcFunctionCurves(courbe);
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

	for (var i = 0; i < courbe.np; i++) {
		courbe.pa[i].valy = (courbe.pa[i].valy + offset) * range - (0 - courbe.range[0]);
		courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
	}

	calcFunctionCurves(courbe); 	// added - MR
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
		ApplyNormalizeX(courbe, minX, maxX);	// points have the same Y min/max position so process only a normalize on X
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
		
		calcFunctionCurves(courbe); 	// added - MR
	}
	DoNotify();
	askForDrawFunctions();
}
MyNormalize.local = 1;


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
	if ( (paintFunctionsNeedsRedraw + paintTextNeedsRedraw) == 2)
		askForDrawingAll();
	else if (paintTextNeedsRedraw)
		drawText();
	else if (paintFunctionsNeedsRedraw)
		askForDrawFunctions();
}

function addpoints()
{
	MyAddPoints(f[front], arrayfromargs(messagename, arguments));
}

function args4insp()
{
	// Shouldn't be modified anymore, it's not used since 1.52 in favor of embedmessage
	ejies.error(this, "since 1.52 the parameters are embed with the patcher. Use the inspector insteed.");
}

function setattr_autosustain(v)
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

function setattr_autocursor(v)
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
	
	if (typeof(arguments[0]) == "string") {
		var tmp = f.length;
		f[tmp] = new Courbe(arguments[0]);
		NbCourbes++;
		pixel2machin(f[tmp]);
		getname();		// mise à jour du menu
	} else
		ejies.error(this, "function name must be a symbol");
}

function insertfunction()
{
	if (arguments.length != 1) {
		ejies.error(this, "missing argument (name) for message insertfunction");
		return;
	}
	
	if (typeof(arguments[0]) == "string") {
		f.splice(front, 0, new Courbe(arguments[0]));
		NbCourbes++;
		pixel2machin(f[front]);
		getname();		// mise à jour du menu
		askForDrawingAll();		// mise à jour de l'affichage, car c'est la courbe courrante
	} else
		ejies.error(this, "function name must be a symbol");
}

function deletefunction()
{
	var c;
	var which;

	if (NbCourbes == 1)
		return;				// si une seule courbe on ne peut pas supprimer
	
	if (!arguments.length)
		which = front;
	else {
		if (typeof(arguments[0]) != "string") {
			ejies.error(this, "function name must be a symbol");	
			return;
		}
		for (c = 0; c < NbCourbes; c++) {
			if (f[c].name == arguments[0]) {
				which = c;
				break;
			}
		}
	}
	
	if (which == undefined) {
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

function setattr_bordersync(v)
{
	if (v == 0 || v == 1)
		BorderSyncState = v;
	else
		ejies.error(this, "bordersync doesn't understand", v);
}

function setattr_outputmode(v)//ajout Alexis
{
	if (v == 0 || v == 1)
		OutputMode = v;
	else
		ejies.error(this, "outputmode doesn't understand", v);
}

function setattr_clickadd(v)
{
	if (v == 0 || v == 1)
		ClickAdd = v;
	else
		ejies.error(this, "clickadd doesn't understand", v);
}

function setattr_clickmove(v)
{
	if (v == 0 || v == 1)
		ClickMove = v;
	else
		ejies.error(this, "clickmove doesn't understand", v);
}

function setattr_clicksustain(v)
{
	if (v == 0 || v == 1)
		ClickSustain= v;
	else
		ejies.error(this, "clicksustain doesn't understand", v);
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
		MyDumpMatrix(f[front], arguments[0]);
	} else
		MyDumpMatrix(f[front]);
}

function listdump()
{
	// il faut tester le nombre d'argument à cause de argsparser()
	if (arguments.length)
		MyListDump(f[front], arguments[0]);
	else
		MyListDump(f[front]);
}

function jit_matrix(matrixName)
{
	if (arguments.length == 0)
		ejies.error(this, "missing arguments for messagae jit_matrix")
	else if (arguments.length == 1)
		setPointsFromMatrix(f[front], matrixName);
	else
		ejies.error(this,"extra arguments for messagae jit_matrix")
}

// this is an alias... it looks like I screwed up when transforming nbfunctions into an attribute... the name was improperly set to nbfunction
function nbfunctions(v)
{
	setattr_nbfunctions(v);
}

function setattr_nbfunctions(v)
{
	// si on a le même nombre de courbe, on ne fait rien
	// ce qui permet de garder les couleurs par exemple.
	// ajout des courbes, si nécessaire
	if (v < NbCourbes) {
		while (f.length > v) {
			f.splice(f.length - 1, 1);
			NbCourbes--;
		}
	} else if (v > NbCourbes) {
		while (f.length < v) {
			f[NbCourbes] = new Courbe("function" + (NbCourbes - 1));
 			pixel2machin(f[NbCourbes]);
 			NbCourbes++;
		}
	}

	// make sure the function in front really exists, otherwise display the first one
	if (front >= NbCourbes)
		front = 0;
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

function setattr_grid(v)
{
	if (v >= 0 && v <= 3) {
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

function setattr_notifyrecalled(v)
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

function setattr_snap2grid(v)
{
	if (v >= 0 && v <= 3)
		Snap2GridState = v;
	else
		ejies.error(this, "snap2grid doesn't understand", v);
}

function gridstep(v)
{
	MyGridStep_x(f[front], v);
}

function gridstep_x(v)
{
	MyGridStep_x(f[front], v);
}

function gridstep_y(v)
{
	MyGridStep_y(f[front], v);
}

function setattr_hiddenpoint(v)
{
	if (v == 0 || v == 1) {
		HiddenPointDisplay = v;
		askForDrawFunctions();
	} else
		ejies.error(this, "hiddenpoint doesn't understand", v);
}

function setattr_legend(v)
{
	if (v != 0 && v != 1) {
		perror("legend doesn't understand", v);
		return;
	}
	
	LegendState = v;
	LegendStateBordure = 12 * v;		// 12 pixels la légende...
	AllPixel2Machin();
	ValRecalculate();
	askForDrawingAll();
}

function setattr_ghost(v)
{
	if (v < 0 && v > 100)
		ejies.error(this, "ghost percentage between 0 and 100 % expected", v);
	else {
		Ghostness = v * 0.01;
		askForDrawFunctions();
	}
}

function setattr_timedisplay(v)
{
	if (v == 0 || v == 1)
		TimeFlag = v;
	else
		ejies.error(this, "timedisplay doesn't understand", v);
}

function setattr_mousereport(v)
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

function brgb() { SetColor(f[front], "brgb", arguments); askForDrawFunctions(); }
function frgb() { SetColor(f[front], "frgb", arguments); askForDrawFunctions(); }
function rgb2() { SetColor(f[front], "rgb2", arguments); askForDrawFunctions(); }
function rgb3() { SetColor(f[front], "rgb3", arguments); askForDrawFunctions(); }
function rgb4() { SetColor(f[front], "rgb4", arguments); askForDrawingAll(); }
function rgb5() { SetColor(f[front], "rgb5", arguments); askForDrawFunctions(); }
function rgb6() { SetColor(f[front], "rgb6", arguments); askForDrawingAll(); }

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
	
	calcFunctionCurves(tmpF); 	// added - MR (BUG updated "courbe->tmpF" 20070907)
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
	askForDrawingAll();
}

function resetall()
{
	NotifyEnable = 0;
	LectureInspector();			// lecture des arguments
	defaults();					// Applique les couleurs et paramètres pas défaut
	AllPixel2Machin();			// calcule le rapport pixel/temps/range
	//fsaa(fsaaValue);
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
	
	setattr_legend(1);	// il y a aussi recalcul du facteur multiplicateur
	GridMode = 0;
	Snap2GridState = 0;
	HiddenPointDisplay = 0;
	OutputMode = 0;//ajout Alexis
	ClickAdd = 1;
	ClickMove = 1;
	ClickSustain = 1;
	AutoSustain = 0;
	CursorChange = 1;
	BorderSyncState = 0;
	Ghostness = 0.2;
	NotifyRecalledState = 0;
	MouseReportState = 0;
	numCurvePoints = 12;
	MoveMode = 0; // added MR
	
	for (c = 0; c < NbCourbes; c++) {
		f[c].brgb =[0.8,0.8,0.8];
		f[c].frgb =[0.32,0.32,0.32];
		f[c].rgb2 =[0.42,0.42,0.42];
		f[c].rgb3 =[1,0.,0.];
		f[c].rgb4 =[0.2,0.2,0.2];
		f[c].rgb5 =[0.5,0.5,0.5];
	}
	
	askForDrawingAll();	// si c'est utilisé dans la fonction save(), draw est désactivé automatiquement (RedrawEnable = 0);
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
	// add a final argument to mouse dump which indicates whether option is held down and 
	// the preceding value is the curve to be edited on click-drag
	var OldIdlePoint = IdlePoint;
	var pa = f[front]["pa"];
	var np = f[front].np;
	var MousePoint;
	var i;
	
	IdlePoint = -1;
	SelectedCurve = -1;
	
	if (AllowEdit == 0 || f[front].display == 0)
		return;

	y = yOffset(y);
	
	if(isCurveMode && option) {
		DisplayCursor(9)
		
		for(var i= 1; i < np; i++) {
			if(x < pa[i].x) {
				// check to see if y is between the prev.y and curr.y
				var y0 = pa[i].y;
				var y1 = pa[i-1].y;
				
				if(y0 < y1)
					if(y >= y0 && y <= y1) SelectedCurve = i;
				else
					if(y >= y1 && y <= y0) SelectedCurve = i;
								
				break;
			}
		}
		
		MousePoint = SelectedCurve;
	}
	else
	{
		for(i=0; i< np; i++) {
			var dist = Math.sqrt((x - pa[i].x)*(x - pa[i].x) + (y - pa[i].y) * (y - pa[i].y));	// calculate disance from the point
			if (dist <= (PointSize*0.5)) {
				if (ClickMove == 1)
					DisplayCursor(10);
			
				IdlePoint = i;
				
				if (IdlePoint != OldIdlePoint)	// que quand c'est différent...
					break;			
			}
		}
		
		MousePoint = IdlePoint;
	}
	
	if (MouseReportState)
		outlet(DUMPOUT, "mouseidle", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
										ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
										but, IdlePoint);

	if (IdlePoint == -1 && shift == 1 && ! option)
		DisplayCursor(1);
	else if (IdlePoint == -1 && shift == 0 && ClickAdd == 1 && ! option)
		DisplayCursor(6);
	
	if (IdlePoint != OldIdlePoint) {	// que quand c'est différent...
		if (IdlePoint == -1)
			askForDrawText();
		else {
			slowDrawingText.cancel();
			drawText();
		}
	}
}

function onidleout()
{
	DisplayCursor(1);
}

function yOffset(y)
{
	return y ;
}


function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	// added a final argument to mouse dump which indicates whether option is held down and 
	// the preceding value is the curve to be edited on drag
	var pa = f[front]["pa"];
	var np = f[front].np;
	var MousePoint;
	var i;
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	prevy = y;
	
	//y = yOffset(y);
	
	if (AllowEdit == 0 || f[front].display == 0) {
		onidle(x, y);
		return;
	}
	
	SelectedPoint = -2;
	x = ejies.clip(x - 2, Bordure, width - Bordure);
	y = ejies.clip(y - 2, Bordure + LegendStateBordure, height - Bordure);

	
	if (option && np > 1) {
			SelectedCurve = 0; // we had the option key down when we clicked 0 is not a vaild curve index
		
		for(i=1; i < np; i++) {
			if(x < pa[i].x) {
				// check to see if y is between the prev.y and curr.y
				var y0 = pa[i].y;
				var y1 = pa[i-1].y;
				
				if(y0 < y1) {
					if(y >= (y0-Tolerance) && y <= (y1+Tolerance)) SelectedCurve = i;
				} else {
					if(y >= (y1-Tolerance) && y <= (y0+Tolerance)) SelectedCurve = i;
				}
			
				EditedWithMouse.state++;
				break;
			}
		}
		
		MousePoint = SelectedCurve;
	} else {
		if (IdlePoint != -1) {
			SelectedPoint = IdlePoint;
			if (cmd && ClickSustain) {
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
			if (Snap2GridState & 1)
				x = val2x(f[front], Math.round((x2val(f[front], x) - f[front].domain[0]) / f[front].grid_x) * f[front].grid_x + f[front].domain[0]);
			if (Snap2GridState & 2)
				y = val2y(f[front], Math.round((y2val(f[front], y) - f[front].range[0]) / f[front].grid_y) * f[front].grid_y + f[front].range[0]);
				
			if (isCurveMode)
				SelectedPoint = AddOnePoint(f[front], x, y, DEFAULT_CURVE);
			else
				SelectedPoint = AddOnePoint(f[front], x, y);
			
			ApplyAutoSustain();
			EditedWithMouse.state++;
			DoNotify();
			drawAll();
			onidle(x,y);
		}
		
		MousePoint = SelectedPoint;
	}

	if (MouseReportState) {
		if (isCurveMode) {
			outlet(DUMPOUT, "mouse",	ejies.clip(x2val(f[front], x), 
										f[front].domain[0], f[front].domain[1]),
										ejies.clip(y2val(f[front], y),
										f[front].range[0],
										f[front].range[1]),
										but,
										SelectedPoint);
		} else {
			outlet(DUMPOUT, "mouse",	ejies.clip(x2val(f[front], x),
										f[front].domain[0],
										f[front].domain[1]),
										ejies.clip(y2val(f[front], y),
										f[front].range[0],
										f[front].range[1]),
										but,
										MousePoint,
										SelectedCurve >= 0);
		}
	}
}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var borderthing = -1;
	var i;
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	if (AllowEdit == 0 || f[front].display == 0)
		return;
	
	// TODO: optimize that mess
	if (isCurveMode) {
		if(SelectedCurve >= 0) {
			//option key must have been down when we clicked
			var curr, prev;
			
			if ( but == 0 ) {
				EditedWithMouse();	// quand c'est delete c'est fait dans onidle()
				SelectedCurve = -1;	// si on a relâché c'est qu'il n'y a plus de points sélectionnés.
				onidle(x,y, 0);		// tout pareil...
				return;
			}
			
			if(SelectedCurve >= 1) {
				// valid curve index
				curr = f[front]["pa"][SelectedCurve];
				prev = f[front]["pa"][SelectedCurve-1];
				var dy
				
				DisplayCursor(0);
				
				if(prev.y < curr.y)
					dy = prevy - y;
				else
					dy = y - prevy;
					
				if(shift) // option-shift-drag for fine tuning
					curr.curve += dy * 0.001;
				else
					curr.curve += dy * 0.02;
				
				curr.curve = ejies.clip(curr.curve, CURVE_MIN, CURVE_MAX);
				
				if(Math.abs(curr.curve) < 0.001) 
					curr.curve = 0.; 
				else
					calcOneCurve(f[front], SelectedCurve-1, SelectedCurve);
					
				prevy = y;
				
				EditedWithMouse.state++;
				UpdateDisplay();
			}
			
			if (MouseReportState)
					outlet(DUMPOUT, "mouse", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
												ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
												but, SelectedCurve, 1, curr.curve);
		}
		else
		{
			var dx;
			
			if ( but == 0 ||  SelectedPoint < 0) {
				EditedWithMouse();	// quand c'est delete c'est fait dans onidle()
				SelectedPoint = -2;	// si on a relâché c'est qu'il n'y a plus de points sélectionnés.
				onidle(x,y, 0);		// tout pareil...
				return;
			}
			
		//	y = yOffset(y); // ne pas le mettre avant sinon onidle ne reçoit pas les bons coordonnées y
		
		if (SelectedPoint < f[front].np) {
			if (f[front]["pa"][SelectedPoint].fix)
				return;
				
			if (Snap2GridState & 1)
				x = val2x(f[front], Math.round((x2val(f[front], x) - f[front].domain[0]) / f[front].grid_x) * f[front].grid_x + f[front].domain[0]);
			if (Snap2GridState & 2)
				y = val2y(f[front], Math.round((y2val(f[front], y) - f[front].range[0]) / f[front].grid_y) * f[front].grid_y + f[front].range[0]);
			
			x = ejies.clip(x, Bordure, width - Bordure);
			y = ejies.clip(y, Bordure + LegendStateBordure, height - Bordure);
		
				if ( BorderSyncState == 1 && f[front].np > 2 && ( SelectedPoint == 0 || SelectedPoint == (f[front].np - 1 ) )) {
					SelectedPoint == 0 ? borderthing = (f[front].np - 1) : borderthing = 0;
				}
	
				if (f[front]["np"] > 1) {
	
					if (SelectedPoint == 0) {
						x = ejies.clip(x, 0, f[front]["pa"][SelectedPoint+1].x );  
					} else if (SelectedPoint > 0 && SelectedPoint < (f[front]["np"] - 1)) {
						x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, f[front]["pa"][SelectedPoint+1].x);
					} else if (SelectedPoint == (f[front]["np"] - 1) ) {
						x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, width);
					}
				}
				
				EditedWithMouse.state++;
				
				if(MoveMode >= 2 && MoveMode <= 6) {
			
					if(SelectedPoint > 0 && x < f[front]["pa"][SelectedPoint-1].x) x = f[front]["pa"][SelectedPoint-1].x;
							
					dx = x2val(f[front], x) - f[front]["pa"][SelectedPoint].valx;
					
					if(MoveMode == 3) {			
							
						if(dx > (f[front].domain[1] - f[front]["pa"][f[front].np-1].valx)) {
							dx = f[front].domain[1] - f[front]["pa"][f[front].np-1].valx;
						}
					}
			
					if(dx != 0) {
						for(i = SelectedPoint; i < f[front].np; i++) {
							if(MoveMode >= 4 && MoveMode <= 6)
								f[front]["pa"][i].valx = dx+f[front].pa[i].valx;
							else
								f[front]["pa"][i].valx = ejies.clip(dx+f[front].pa[i].valx, f[front].domain[0], f[front].domain[1]);
							
							f[front]["pa"][i].x = val2x(f[front], f[front].pa[i].valx);
						}
					}
					
				} else {
					f[front]["pa"][SelectedPoint].x = x;
					f[front]["pa"][SelectedPoint].valx = x2val(f[front], x);
				}
				
				f[front]["pa"][SelectedPoint].y = y;
				f[front]["pa"][SelectedPoint].valy = y2val(f[front], y);
				
				if(MoveMode == 5) MyNormalizeXZoomOut(f[front]);
				else if(MoveMode == 6) MyNormalizeX(f[front]);
				
				calcFunctionCurves(f[front]); // need to get the logic above working instead of this
				
				if (borderthing != -1) {
					f[front]["pa"][borderthing].y = y;
					f[front]["pa"][borderthing].valy = y2val(f[front], y);
				}
				
				UpdateDisplay();
						
			}
			
			if (MouseReportState)
				outlet(DUMPOUT, "mouse", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
											ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
											but, SelectedPoint, 0);
		}
	
	} else {
	
		if ( but == 0 ||  SelectedPoint < 0) {
			EditedWithMouse();	// quand c'est delete c'est fait dans onidle()
			SelectedPoint = -2;	// si on a relâché c'est qu'il n'y a plus de points sélectionnés.
			onidle(x,y, 0);		// tout pareil...
			return;
		}
		
	/* 	y = yOffset(y); // ne pas le mettre avant sinon onidle ne reçoit pas les bons coordonnées y */
	
		if (MouseReportState)
			outlet(DUMPOUT, "mouse", 	ejies.clip(x2val(f[front], x), f[front].domain[0], f[front].domain[1]),
										ejies.clip(y2val(f[front], y), f[front].range[0], f[front].range[1]),
										but, SelectedPoint);
	
		if (SelectedPoint < f[front].np) {
			if (f[front]["pa"][SelectedPoint].fix)
				return;
				
			if (Snap2GridState & 1)
				x = val2x(f[front], Math.round((x2val(f[front], x) - f[front].domain[0]) / f[front].grid_x) * f[front].grid_x + f[front].domain[0]);
			if (Snap2GridState & 2)
				y = val2y(f[front], Math.round((y2val(f[front], y) - f[front].range[0]) / f[front].grid_y) * f[front].grid_y + f[front].range[0]);
			
			x = ejies.clip(x, Bordure, width - Bordure);
			y = ejies.clip(y, Bordure + LegendStateBordure, height - Bordure);
		
			if ( BorderSyncState == 1 && f[front].np > 2 && ( SelectedPoint == 0 || SelectedPoint == (f[front].np - 1 ) )) {
				SelectedPoint == 0 ? borderthing = (f[front].np - 1) : borderthing = 0;
			}
	
			if (f[front]["np"] > 1) {
	
				if (SelectedPoint == 0) {
					x = ejies.clip(x, 0, f[front]["pa"][SelectedPoint+1].x );  
				} else if (SelectedPoint > 0 && SelectedPoint < (f[front]["np"] - 1)) {
					x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, f[front]["pa"][SelectedPoint+1].x);
				} else if (SelectedPoint == (f[front]["np"] - 1) ) {
					x = ejies.clip(x, f[front]["pa"][SelectedPoint-1].x, width);
				}
			}
			
			EditedWithMouse.state++;
			
			if(MoveMode >= 2 && MoveMode <= 6) {
		
				if(SelectedPoint > 0 && x < f[front]["pa"][SelectedPoint-1].x) x = f[front]["pa"][SelectedPoint-1].x;
						
				dx = x2val(f[front], x) - f[front]["pa"][SelectedPoint].valx;
				
				if(MoveMode == 3) {			
						
					if(dx > (f[front].domain[1] - f[front]["pa"][f[front].np-1].valx)) {
						dx = f[front].domain[1] - f[front]["pa"][f[front].np-1].valx;
					}
				}
		
				if(dx != 0) {
					for(i = SelectedPoint; i < f[front].np; i++) {
						if(MoveMode >= 4 && MoveMode <= 6)
							f[front]["pa"][i].valx = dx+f[front].pa[i].valx;
						else
							f[front]["pa"][i].valx = ejies.clip(dx+f[front].pa[i].valx, f[front].domain[0], f[front].domain[1]);
						
						f[front]["pa"][i].x = val2x(f[front], f[front].pa[i].valx);
					}
				}
				
			} else {
				f[front]["pa"][SelectedPoint].x = x;
				f[front]["pa"][SelectedPoint].valx = x2val(f[front], x);
			}
			
			f[front]["pa"][SelectedPoint].y = y;
			f[front]["pa"][SelectedPoint].valy = y2val(f[front], y);
			
			if(MoveMode == 5) MyNormalizeXZoomOut(f[front]);
			else if(MoveMode == 6) MyNormalizeX(f[front]);
			
			calcFunctionCurves(f[front]); // need to get the logic above working instead of this

			if (borderthing != -1) {
				f[front]["pa"][borderthing].y = y;
				f[front]["pa"][borderthing].valy = y2val(f[front], y);
			}
			
			UpdateDisplay();
		}
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
	outlet(DUMPOUT, tmpF.name, "gridstep", tmpF.grid_x); /* not really consistent it's just for compatibility reason */
}	

function getgridstep_x(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "gridstep_x", tmpF.grid_x);
}

function getgridstep_y(courbe)
{
	var tmpF = frontOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "gridstep_y", tmpF.grid_y);
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
function getattr_legend() { outlet(DUMPOUT, "legend", LegendState); return LegendState; }
function getattr_grid() { outlet(DUMPOUT, "grid", GridMode); return GridMode; }
function getattr_snap2grid() { outlet(DUMPOUT, "snap2grid", Snap2GridState); return Snap2GridState; }
function getattr_hiddenpoint() { outlet(DUMPOUT, "hiddenpointdisplay", HiddenPointDisplay); return HiddenPointDisplay; }
function getattr_outputmode() { outlet(DUMPOUT, "outputmode", OutputMode); return OutputMode; }//ajout Alexis
function getattr_clickadd() { outlet(DUMPOUT, "clickadd", ClickAdd); return ClickAdd; }
function getattr_clickmove() { outlet(DUMPOUT, "clickmove", ClickMove); return ClickMove; }
function getattr_clicksustain() { outlet(DUMPOUT, "clicksustain", ClickSustain); return ClickSustain; }
function getattr_autosustain() {	outlet(DUMPOUT, "autosustain", AutoSustain); return AutoSustain; }
function getattr_timedisplay() { outlet(DUMPOUT, "timedisplay", TimeFlag); return TimeFlag; }
function getattr_autocursor() { outlet(DUMPOUT, "autocursor", CursorChange); return CursorChange; }
function getattr_bordersync() { outlet(DUMPOUT, "bordersync", BorderSyncState); return BorderSyncState; }
function getattr_ghost() { outlet(DUMPOUT, "ghost", Math.round(Ghostness * 100) ); return Math.round(Ghostness * 100); }
function getattr_notifyrecalled() { outlet(DUMPOUT, "notifyrecalled", NotifyRecalledState ); return NotifyRecalledState ; }
function getattr_mousereport() { outlet(DUMPOUT, "mousereport", MouseReportState ); return MouseReportState ; }

function getattr_nbfunctions() { outlet(DUMPOUT, "nbfunctions", NbCourbes); return NbCourbes; }

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

	isCurveMode = FunctionVersionCheck == 6 ? 1 : 0;
		
	if ( FunctionVersionCheck < 1 && FunctionVersionCheck > 6 ) {
		ejies.error(this, "bad version number - interpolation aborted");
		return;
	}

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
		
		f[i].grid_x = arguments[idx++];
		if (FunctionVersionCheck >= 4) /* pas de grille en y */
			f[i].grid_y = arguments[idx++];
			
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
			if (isCurveMode)
				f[i]["pa"][p].curve = arguments[idx++]; // added MR
			f[i]["pa"][p].sustain = arguments[idx] & 2 ? 1 : 0; // pas d'incrémentation
			f[i]["pa"][p].fix = arguments[idx++] & 1;	// elle est faite ici.
		}
	}

 	AllPixel2Machin();
	ValRecalculate();
	RedrawEnable = 1;
	AllowEdit = 1;
	PattrInterpError.flag = 0;
	calcCurves();				// added MR
	UpdateDisplay();
	
	if (NotifyRecalledState)
		outlet(DUMPOUT, "recalled");
}

function getvalueof()
{
	var i, j, p;
	var tmpData = new Array();
	var idx = 0;
	
	//versioning to allow for future changes (technoui style...)
	tmpData[idx++] = FUNCTIONVERSION + isCurveMode;
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
		tmpData[idx++] = f[i].grid_x;
		tmpData[idx++] = f[i].grid_y;

		for (p = 0; p < f[i].np; p++) {
			// on stocke un minimum de chose pour pouvoir mettre plus de points
			tmpData[idx++] = f[i]["pa"][p].valx;
			tmpData[idx++] = f[i]["pa"][p].valy;
			if (isCurveMode) tmpData[idx++] = f[i]["pa"][p].curve;
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
/* 	embedmessage("legend", LegendState); */
/* 	embedmessage("grid", GridMode); */
/* 	embedmessage("snap2grid", Snap2GridState); */
/* 	embedmessage("hiddenpoint", HiddenPointDisplay); */
/* 	embedmessage("clickadd", ClickAdd); */
/* 	embedmessage("clickmove", ClickMove); */
/* 	embedmessage("clicksustain", ClickSustain); */
/* 	embedmessage("autosustain", AutoSustain); */
/* 	embedmessage("timedisplay", TimeFlag); */
/* 	embedmessage("autocursor", CursorChange); */
/* 	embedmessage("bordersync", BorderSyncState); */
/* 	embedmessage("ghost", Math.round(Ghostness * 100)); */
/* 	embedmessage("notifyrecalled", NotifyRecalledState); */
/* 	embedmessage("mousereport", MouseReportState); */
/* 	embedmessage("numcurvepoints", numCurvePoints); 	// added MR */
/* 	embedmessage("movemode", MoveMode);					// added MR */
/* 	embedmessage("mode", isCurveMode); */
	
	
	for (i = 0; i < NbCourbes; i++) {
		embedmessage("SetColor", i, "brgb", Math.round(f[i].brgb[0] * 255), Math.round(f[i].brgb[1] * 255), Math.round(f[i].brgb[2] * 255) );
		embedmessage("SetColor", i, "frgb", Math.round(f[i].frgb[0] * 255), Math.round(f[i].frgb[1] * 255), Math.round(f[i].frgb[2] * 255) );
		embedmessage("SetColor", i, "rgb2", Math.round(f[i].rgb2[0] * 255), Math.round(f[i].rgb2[1] * 255), Math.round(f[i].rgb2[2] * 255) );
		embedmessage("SetColor", i, "rgb3", Math.round(f[i].rgb3[0] * 255), Math.round(f[i].rgb3[1] * 255), Math.round(f[i].rgb3[2] * 255) );
		embedmessage("SetColor", i, "rgb4", Math.round(f[i].rgb4[0] * 255), Math.round(f[i].rgb4[1] * 255), Math.round(f[i].rgb4[2] * 255) );
		embedmessage("SetColor", i, "rgb5", Math.round(f[i].rgb5[0] * 255), Math.round(f[i].rgb5[1] * 255), Math.round(f[i].rgb5[2] * 255) );
		embedmessage("SetColor", i, "rgb6", Math.round(f[i].rgb6[0] * 255), Math.round(f[i].rgb6[1] * 255), Math.round(f[i].rgb6[2] * 255) );
	}
	
	embedmessage("fsaa", fsaaValue);
	embedmessage("redrawon");	// refresh de l'affichage après la lecture des arguments
}

function CreateNFunctions(v)
{
	RedrawEnable = 0;
	NbCourbes = arguments[0];
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
	cp[idx++] = f[c].ZoomX[0];
	cp[idx++] = f[c].ZoomX[1];
	cp[idx++] = f[c].ZoomY[0];
	cp[idx++] = f[c].ZoomY[1];
	cp[idx++] = f[c].grid_x;
	cp[idx++] = f[c].grid_y;
	cp[idx++] = f[c].display;

	for (p = 0; p < f[c].np; p++) {
		cp[idx++] = f[c]["pa"][p].x;
		cp[idx++] = f[c]["pa"][p].y;
		cp[idx++] = f[c]["pa"][p].valx;
		cp[idx++] = f[c]["pa"][p].valy;
		cp[idx++] = f[c]["pa"][p].sustain
		cp[idx++] = f[c]["pa"][p].fix;
		cp[idx++] = f[c]["pa"][p].curve;
	}
}

// TODO: needs to add the version number so we can copy/paste from different modes
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
	courbe.ZoomX[0] = cp[idx++];
	courbe.ZoomX[1] = cp[idx++];
	courbe.ZoomY[0] = cp[idx++];
	courbe.ZoomY[1] = cp[idx++];
	courbe.grid_x = cp[idx++];
	courbe.grid_y = cp[idx++];
	courbe.display = cp[idx++];
	
	for (p = 0; p < courbe.np; p++) {
		courbe["pa"][p].x = cp[idx++];
		courbe["pa"][p].y = cp[idx++];
		courbe["pa"][p].valx = cp[idx++];
		courbe["pa"][p].valy = cp[idx++];
		courbe["pa"][p].sustain = cp[idx++];
		courbe["pa"][p].fix = cp[idx++];
		courbe["pa"][p].curve = cp[idx++];
	}
	
	pixel2machin(courbe);
	ValRecalculate();
	calcCurves();
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
	f[front].grid_x = cp[idx++];
	f[front].grid_y = cp[idx++];
	f[front].display = cp[idx++];
	
	for (p = 0; p < f[front].np; p++) {
		f[front]["pa"][p] = new Point(cp[idx], cp[idx+1], cp[idx+2], cp[idx+3]);
		idx += 4;
		f[front]["pa"][p].sustain = cp[idx++];
		f[front]["pa"][p].fix = cp[idx++];
	}		

	MyThings2Zoom(f[front]);
	pixel2machin(f[front]);

	getname();								// mise à jour du menu
	calcFunctionCurves(f[front]);			// added MR
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

		isCurveMode = FunctionVersionCheck == 6 ? 1 : 0;

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
		while ( fichier.position < fichier.eof && c < NbCourbes) {
			tmpLine = LectureNextLigne(fichier);
			if (tmpLine == "")
				break;
			tmpLine = tmpLine.split(" ");

			idx = 0;

			var p, j;
			var NeedUpdate = 0;
			f[c].name = tmpLine[idx++];

			// some people loves to put spaces in names...
			while ( isNaN(parseFloat(tmpLine[idx])) )
				f[c].name += " " + tmpLine[idx++];
			
			// depuis la version 1.52 domaine contient deux limites.
			if (FunctionVersionCheck == 1)
				f[c].domain[0] = 0;
			else
				f[c].domain[0] = parseFloat(tmpLine[idx++]);

			f[c].domain[1] = parseFloat(tmpLine[idx++]);
			
			f[c].range[0] = parseFloat(tmpLine[idx++]);
			f[c].range[1] = parseFloat(tmpLine[idx++]);

			MyThings2Zoom(f[c]);
			
			if (FunctionVersionCheck != 3) {
				f[c].grid_x = parseFloat(tmpLine[idx++]);
				if (FunctionVersionCheck >= 4) /* in format 4 and higher, there's a horizontal grid */
					f[c].grid_y = parseFloat(tmpLine[idx++]);
					
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
				for (j=0; j < 3; j++) { f[c].rgb6[j] = tmpLine[idx++] / 255; }
			}

			for (p = 0; p < f[c].np; p++) {
				idx = 0;
				tmpLine = LectureNextLigne(fichier);
				tmpLine = tmpLine.split(" ");
				// check the number of items: 4 when there's curve
				if (! (tmpLine.length == 3 || tmpLine.length == 4)) {
					ejies.error(this, "bad file contents");
					break;
				}
				f[c]["pa"][p].valx = parseFloat(tmpLine[idx++]);
				f[c]["pa"][p].valy = parseFloat(tmpLine[idx++]);
				f[c]["pa"][p].curve = isCurveMode ? parseFloat(tmpLine[idx++]) : 0;
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
		calcCurves();					// added MR
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
		tmpStr += (FUNCTIONVERSION + isCurveMode) + sep;
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
			tmpStr += f[i].grid_x + sep;
			tmpStr += f[i].grid_y + sep;
			tmpStr += f[i].display;
			fichier.writeline(tmpStr);		

			tmpStr = "";
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].brgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].frgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb2[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb3[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb4[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb5[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(f[i].rgb6[j] * 255) + sep; }
			fichier.writeline(tmpStr);

			for (p = 0; p < f[i].np; p++) {
				tmpStr = "";
				tmpStr += f[i]["pa"][p].valx + sep;
				tmpStr += f[i]["pa"][p].valy + sep;
				if (isCurveMode) tmpStr += f[i]["pa"][p].curve + sep; // added - MR
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

function setattr_mode(v)
{
	isCurveMode = v ? 1 : 0;
	
	if (isCurveMode)
		setoutletassist(LINE_OUTLET, "points in curve~ format");
	else
		setoutletassist(LINE_OUTLET, "points in line~ format");

	calcCurves();
	askForDrawFunctions();
}

function getattr_mode()
{
	outlet(DUMPOUT, "mode", isCurveMode);
	return isCurveMode;
}

function setattr_numcurvepoints(num)
{
	numCurvePoints = num > 1 ? num : 1;
		
	calcCurves();

	DoNotify();
	drawFunctions();
}

function getattr_numcurvepoints()
{
	outlet(DUMPOUT, "numcurvepoints", numCurvePoints);
	return numCurvePoints;
}

resetall();

/* autowatch = 1; */
/* post("compiled...\n"); */
