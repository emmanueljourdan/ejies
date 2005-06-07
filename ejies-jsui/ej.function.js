/* 
	ej.function.js by Emmanuel Jourdan, Ircam - 03 2005
	multi bpf editor (compatible with Max standart function GUI)

*/

// global code
var ejies = new EjiesUtils();						// lien vers ejiesUtils.js

const FUNCTIONVERSION = 2;	// Depuis ejies version 1.52 le numéro de version est 2 (à cause du domain qui a 2 bornes).
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

var g = new Global("ej.function");	// utilisé par dump & listdump
g["function"] = 0;					// init
g["copy"] = new Array();			// Utilisé pour le copier-coller
g["copycolors"] = new Array();		// Utilisé pour le copier-coller des couleurs
var NbCourbes = 2;
var fctns = new Array();
var Tolerance = 4;
var Bordure = 4;
var LegendBordure = 12;
var BoxWidth = box.rect[2] - box.rect[0];
var BoxHeight = box.rect[3] - box.rect[1] ;
var PixelDomain;
var PixelRange;
var current;
var Legend;
var GridMode;
var Snap2GridState;
var HiddenPointDisplay;
var ClickAdd;
var ClickMove;
var AutoSustain;
var IdleMode = 0;
var SelectedPoint = -2;
var IdlePoint = -1;
var RedrawEnable;
var AllowEdit = 1;
var TimeFlag = 0;
var OpendialogPrepend = 0;
var DisplayOneTime;
var LectureInspectorFlag = 0;

RedrawEnable = 0;	// désactivation de l'affichage pendant l'initialisation

if (max.version < 455)
	perror("MaxMSP 4.5.5 or higher is required.");

if (box.rect[2] - box.rect[0] == 64 && box.rect[3] - box.rect[1] == 64) {
	// numbox a été créée à partie de jsui : dimensions = 64*64
	init();
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
	this.rgb2 =[0.33,0.33,0.33];// Couleur des traits
	this.rgb3 =[1,0.,0.];		// Couleur sustain
	this.rgb4 =[0.2,0.2,0.2];	// couleur texte
	this.rgb5 =[0.5,0.5,0.5];	// Couleur grille
	this.display = 1;			// display while inactive ?
	this.GridStep = 100;		// tout est dans lenom
	this.PixelDomain;			// ...
	this.PixelRange;			// ...
	this.NextFrom = 0;			// utilisé pour le message next
}


function init()
{
	var c;
	
	for (c = 0; c < NbCourbes; c++) {
		fctns[c] = new Courbe("function" + c);
	}
	
	// suppression des éventuelles courbes en trop (par resetall)
	while (fctns.length > NbCourbes) {
		fctns.splice(fctns.length - 1, 1);
	}
}


//////////////// Fonctions Affichage ///////////////
function draw()
{
	if (! RedrawEnable)
		return;
	
	var c, i, j;
	var tmpF = fctns[current]; // ça prend moins de place

	with (sketch) {
		// on efface tout
		glclearcolor(tmpF.brgb);
		glclear();
		gldisable("lighting");

		// dessine la grille
		if ( GridMode ) {
			glcolor(tmpF["rgb5"], 0.2);
			
			for (j = 0; j < (((tmpF.ZoomX[1] - tmpF.ZoomX[0]) / tmpF.GridStep)+1); j++) {
			linesegment( screentoworld(val2x(tmpF, j*tmpF.GridStep), val2y(tmpF, tmpF.range[0]-Bordure) ),
				screentoworld( val2x(tmpF, j*tmpF.GridStep), val2y(tmpF, tmpF.range[1]) ) );
			}
		}
	
		for (c = 0; c < NbCourbes; c++) {
			if (fctns[c].np > 0) {

				// dessine les segments
				if ( fctns[c].display ) {
					glcolor(fctns[c]["rgb2"], ((c == current) * 0.5) + 0.2);
							
					moveto(screentoworld(fctns[c]["pa"][0].x,fctns[c]["pa"][0].y ));
					
					for (i = 0; i < (fctns[c].np - 1); i++) {
						lineto(screentoworld(fctns[c]["pa"][i+1].x,fctns[c]["pa"][i+1].y ));
					}
				}
				
				// dessine les points de la courbe active ou de toutes les courbes si HiddenPointDisplay est activé
				if ( fctns[c].display && ((c == current) || HiddenPointDisplay) ) {
					// dessine les points
					glcolor(fctns[c]["frgb"], ((c == current) * 0.5) + 0.2);
	
					for (i = 0; i < fctns[c].np; i++) {							
						moveto(screentoworld(fctns[c]["pa"][i].x,fctns[c]["pa"][i].y ));
						
						if ( fctns[c]["pa"][i].sustain) {
							glcolor(fctns[c]["rgb3"], ((c == current) * 0.5) + 0.2);
							circle(5/BoxHeight); // 5 pixels le point...
							glcolor(fctns[c]["frgb"], ((c == current) * 0.5) + 0.2);
						}
						else
							circle(5/BoxHeight); // 5 pixels le point...
					}
				}
				
			}

		}

		if ( Legend ) {
			// Nom de la Courbe
			moveto((BoxWidth - Bordure)/BoxHeight,(BoxHeight - LegendBordure - Bordure)/BoxHeight);
			font("Arial");
			fontsize(11);
			textalign("right","center");
			glcolor(tmpF.rgb4);
			
			if ( BoxWidth < 130 && (SelectedPoint >= 0  || IdlePoint >= 0) ) { ;} //
			else {
				if (tmpF.display)
					text(tmpF.name);
				else
					text("("+tmpF.name+")");
			}
	
			if (tmpF.np > 0 && (SelectedPoint >= 0  || IdlePoint >= 0)) {
				var WhichPoint = (SelectedPoint >=0 ) ? SelectedPoint : IdlePoint ;

				if ( WhichPoint < tmpF.np) {
					var sep = " ";
					if (tmpF.pa[WhichPoint].fix)
						sep = "=";

					fontsize(10);
					textalign("left","center");
					moveto(-(BoxWidth - Bordure)/BoxHeight,(BoxHeight - LegendBordure - Bordure)/BoxHeight);
					if (TimeFlag)
						text("X" + sep + MyDomain2String(tmpF["pa"][WhichPoint].valx) + " Y" + sep + tmpF["pa"][WhichPoint].valy.toFixed(2));
					else
						text("X" + sep + tmpF["pa"][WhichPoint].valx.toFixed(2) + " Y" + sep + tmpF["pa"][WhichPoint].valy.toFixed(2));
				}
			}
		}
	}
/* 	post("draw operation completed\n"); */
	refresh();
}


//////////////// Fonctions magiques ///////////////
function x2val(courbe, x) { return ((( x - Bordure)) * courbe.PixelDomain + courbe.ZoomX[0]); }
function y2val(courbe, y) {	return (courbe.ZoomY[1] - ((y  - Bordure - LegendBordure) * courbe.PixelRange)); }
function val2x(courbe, valx) {	return (( (valx - courbe.ZoomX[0]) / courbe.PixelDomain) + Bordure); }
function val2y(courbe, valy) {	return ( ((courbe.ZoomY[1] - valy) / courbe.PixelRange) + Bordure + LegendBordure); }


//////////////// Fonctions standart ///////////////
function bang()
{
	line(fctns[current]);
}
bang.immediate = 1;

function msg_float(v)
{
	Interpolation(fctns[current], v);
}
msg_float.immediate = 1;

function list()
{
	ArgsParser(fctns[current], "list", arguments)
	UpdateDisplay();
}

function anything()
{
	var c;
	var NeedUpdate = -1;
	
	for (c = 0; c < NbCourbes; c++) {
		if ( messagename == fctns[c].name ) {
			NeedUpdate = ArgsParser(fctns[c], messagename, arguments);
			break;
		}
	}
		
	if (NeedUpdate == -1) {	// si -1 c'est que ça ne correspond pas à un nom de function
		perror("doesn't understand", messagename);
		return;
	}

	if (NeedUpdate & 2 == 2)
		notifyclients();
	if (NeedUpdate & 1 == 1)
		redrawon();
}

function onresize(w,h)
{
	box.size(ejies.clip(w, 100, 1024),ejies.clip(h, 50, 1024));	// taille minimum 100*50
	BoxWidth = box.rect[2] - box.rect[0];
	BoxHeight = box.rect[3] - box.rect[1] ;
	AllPixel2Machin();
	ValRecalculate();
	draw();
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
			perror("bad number of arguments in the inspector");
			return;
		}
		Legend = jsarguments[idx++];
		GridMode = jsarguments[idx++];
		Snap2GridState = jsarguments[idx++];
		HiddenPointDisplay = jsarguments[idx++];
		ClickAdd = jsarguments[idx++];
		ClickMove = jsarguments[idx++];
		AutoSustain = jsarguments[idx++];
		TimeFlag = jsarguments[idx++];
		
		for (i = 0; i < NbCourbes; i++) {
			for (j=0; j < 3; j++) { fctns[i].brgb[j] = jsarguments[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[i].frgb[j] = jsarguments[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[i].rgb2[j] = jsarguments[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[i].rgb3[j] = jsarguments[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[i].rgb4[j] = jsarguments[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[i].rgb5[j] = jsarguments[idx++] / 255; }
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
	notifyclients();
	draw();
}
UpdateDisplay.local = 1;

function LectureNextLigne(f)
{
	// ignore les lignes qui contiennt mois de 4 caractères ou //
	var tmp = new String();

	do {
		tmp = f.readline();
	} while	(tmp.length < 4 || (tmp.search("//") != -1));

	return tmp;
}
LectureNextLigne.local = 1;

function EditedWithMouse()
{
	if (EditedWithMouse.state)
		outlet(BANG_OUTLET, "bang");
	
	EditedWithMouse.state = 0;
	notifyclients();
}
EditedWithMouse.local = 1;

function DisplayCursor(v)
{
	if (this.box.ignoreclick == 0 && CursorChange == 0)		// Si la boîte est ignore click ou on ne change pas le cursor
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
		perror("interpolation isn't possible (different number of function)");
	else
		perror("interpolation isn't possible (different number of points)");

	PattrInterpError.flag = 1;
}
PattrInterpError.local = 1;

function PattrTooMany(v)
{
	if (v >= 2048) {
		if (PattrTooMany.flag) {
			perror("too many functions/points... pattr won't work...");
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
	var tmpF = courbe;

	var tmpArray = new Array();
	var i, idx;
	
	if ( ! tmpF.np)
		return;		// si pas de point... pas de line... pas de bras... pas de chocolat...
	
	tmpF.NextFrom = 0;

	for (i = 1, idx = 0; i < tmpF.np; i++) {
		tmpArray[idx++] = tmpF.pa[i].valy;
		tmpArray[idx++] = tmpF.pa[i].valx - tmpF.pa[i-1].valx;
		if (tmpF.pa[i].sustain) {
			tmpF.NextFrom = i;
			break;
		}
	}
	
	outlet(LINE_OUTLET, tmpF.name, tmpF.pa[0].valy);
	outlet(LINE_OUTLET, tmpF.name, tmpArray);
}
line.local = 1;

function Interpolation(courbe, v)
{
	var tmpF = courbe;
	var i, a, tmpRange, tmpDomain;
	
	if ( tmpF.np < 2 )
		return;
	
	if ( v < tmpF.pa[0].valx ) {	// v est plus petit que le premier point
		outlet(INTERP_OUTLET, tmpF.name, tmpF.pa[0].valy);
		return;
	}

	if ( v > tmpF.pa[tmpF.np - 1].valx ) {	// v est plus grand que le dernier point
		outlet(INTERP_OUTLET, tmpF.name, tmpF.pa[tmpF.np - 1].valy);
		return;
	}
	
	for (i = 0, a = 0; i < tmpF.np; i++) {
		if (v > tmpF.pa[i].valx)
			a = i;
		else
			break;
	}

	tmpRange = tmpF.pa[a+1].valy - tmpF.pa[a].valy;
	tmpDomain = tmpF.pa[a+1].valx - tmpF.pa[a].valx;
	
	outlet(INTERP_OUTLET, tmpF.name, ((v - tmpF.pa[a].valx) / tmpDomain) * tmpRange + tmpF.pa[a].valy);
}
Interpolation.local = 1;

function ValRecalculate()
{
	// recalcule la position en fonction des valeurs
	var c,i;
	
	for (c = 0; c < NbCourbes; c++) {
		for (i = 0; i < fctns[c].np; i++) {
			fctns[c]["pa"][i].x = val2x(fctns[c], fctns[c]["pa"][i].valx);
			fctns[c]["pa"][i].y = val2y(fctns[c], fctns[c]["pa"][i].valy);
		}
	}
}
ValRecalculate.local = 1;

function ApplyAutoSustain()
{
	var i, c;
	if ( AutoSustain ) {
		for (c = 0; c < NbCourbes; c++) {
			for (i = 0; i < fctns[c].np; i++) {
				if (fctns[c].np < 3)
					break;

				if (i == fctns[c].np - 2)
					fctns[c].pa[i].sustain = 1;
				else
					fctns[c].pa[i].sustain = 0;
			}
		}
	}
}
ApplyAutoSustain.local = 1;

function MyDomain(start, stop, courbe)
{
	var i;

	courbe.domain[0] = start;
	courbe.domain[1] = stop;

	MyDomain2Zoom(courbe);
	pixel2machin(courbe);
	
	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].x = val2x(courbe, courbe.pa[i].valx);
	}
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
	var i;
	
	courbe.domain[0] = start;
	courbe.domain[1] = stop;

	MyDomain2Zoom(courbe);
	pixel2machin(courbe);
	
	for (i = 0; i < courbe.np; i++) {
		courbe.pa[i].valx = x2val(courbe, courbe.pa[i].x);
	}

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
		perror("before pasting colors, you have to copy something");
		return;
	}
	
	for (j=0; j < 3; j++) { courbe.brgb[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.frgb[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb2[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb3[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb4[j] = cp[idx++]; }
	for (j=0; j < 3; j++) { courbe.rgb5[j] = cp[idx++]; }
}
MyPasteColors.local = 1;

function WriteDialog()
{
	// open a standart dialog box to save the file
	var savedialog, prepend;
	savedialog = this.patcher.newdefault(box.rect[0], box.rect[1] - 50, "savedialog", "TEXT");
	prepend = this.patcher.newdefault(box.rect[0], box.rect[1] - 25, "prepend", "write");
	savedialog.varname = "temp-savedialog";
	prepend.varname = "temp-prepend";
	savedialog.hidden = 1;
	prepend.hidden = 1;
	
	// pour connecter en hidden, il faut que la fonction soit nommée
	if (! this.box.varname)
		this.box.varname = "tmp-function";

	this.patcher.script("hidden", "connect", "temp-savedialog", 0, "temp-prepend", 0);
	this.patcher.script("hidden", "connect", "temp-prepend", 0, this.box.varname, 0);
	
	// dénommage de la fonction si elle s'appelle tmp-function
	if (this.box.varname == "tmp-function")
		this.box.varname = "";

	savedialog.message("bang");
	this.patcher.script("delete", "temp-savedialog");
	this.patcher.script("delete", "temp-prepend");
}
WriteDialog.local = 1;

function ReadDialog()
{
	var opendialog, prepend, prepend2;
	opendialog = this.patcher.newdefault(box.rect[0], box.rect[1] - 50, "opendialog", "TEXT");
	prepend = this.patcher.newdefault(box.rect[0], box.rect[1] - 25, "prepend", "read");
	prepend2 = this.patcher.newdefault(box.rect[0] + 50, box.rect[1] - 25, "prepend", "DeleteReadThings");
	opendialog.varname = "temp-opendialog";
	prepend.varname = "temp-prepend";
	prepend2.varname = "temp-prepend2";
	opendialog.hidden = 1;
	prepend.hidden = 1;
	prepend2.hidden = 1;

	// pour connecter en hidden, il faut que la fonction soit nommée
	if (! this.box.varname)
		this.box.varname = "tmp-function";

	this.patcher.script("hidden", "connect", "temp-opendialog", 0, "temp-prepend", 0);
	this.patcher.script("hidden", "connect", "temp-prepend", 0, this.box.varname, 0);
	this.patcher.script("hidden", "connect", "temp-opendialog", 1, "temp-prepend2", 0);
	this.patcher.script("hidden", "connect", "temp-prepend2", 0, this.box.varname, 0);
	
	OpendialogPrepend = 1;
	
	
	// dénommage de la fonction si elle s'appelle tmp-function
	if (this.box.varname == "tmp-function")
		this.box.varname = "";

	opendialog.message("bang");
}
ReadDialog.local = 1;

function DeleteReadThings()
{
	// pour l'opération de suppression quand on vient de read...
	// pour une raison qui m'échappe...
	// il faut délayer...
	tsk = new Task(function() { if ( ! tsk.running) { this.patcher.script("delete", "temp-opendialog"); this.patcher.script("delete", "temp-prepend"); this.patcher.script("delete", "temp-prepend2"); } }, this);
	tsk.interval = 100;
	tsk.repeat(1);
	
	OpendialogPrepend = 0;	// réinitialisation du flag
}

function MyRemoveDuplicate(courbe)
{
	var i, flag;
	
	do
	{
		flag = 0;
		for (i = 1; i < (courbe.np - 1); i++) {
			// suppression du point du milieu s'il est encadré par 2 valeurs identiques
			if ( courbe.pa[i-1].valy == courbe.pa[i].valy && courbe.pa[i+1].valy == courbe.pa[i-1].valy) {
				DeletePoint(courbe, i);
				flag = 1;
			}
		}
	} while (flag)
}
MyRemoveDuplicate.local = 1;

function MySmooth(courbe)
{
	var i;
	
	for (i = 1; i < (courbe.np - 1); i++) {
		courbe.pa[i].valy = courbe.pa[i-1].valy*0.2 + courbe.pa[i].valy*0.6 + courbe.pa[i+1].valy*0.2;
		courbe.pa[i].y = val2y(courbe, courbe.pa[i].valy);
	}
}
MySmooth.local = 1;

function pixel2machin(courbe)
{
	courbe.PixelDomain = (courbe.ZoomX[1] - courbe.ZoomX[0]) / (BoxWidth-(Bordure*2));
	courbe.PixelRange = (courbe.ZoomY[1] - courbe.ZoomY[0]) / (BoxHeight-((Bordure*2) + LegendBordure));
/* 	MyPointsInside(courbe); */
}
pixel2machin.local = 1.;

function AllPixel2Machin()
{
	var c;
	for (c = 0; c < NbCourbes; c++) {
		pixel2machin(fctns[c]);
	}
}
AllPixel2Machin.local = 1;

function AddPoint(courbe, x, y)
{
	var tmp = courbe.np;	// si tmp n'est pas modifié c'est que c'est la plus grande valeur...
	var i;

	if (courbe.np == 0) {	// cas particulier quand il n'y a pas de point dans la courbe
		courbe.pa[0] = new Point(x,y, x2val(courbe, x), y2val(courbe, y));
		tmp = 0;
	}
	else {
		for (i = 0; i < courbe.np; i++) {
			if (courbe.pa[i].x >= x) {
				tmp = i;
				break;
			}
		}
		courbe.pa.splice(tmp, 0, new Point(x,y, x2val(courbe, x), y2val(courbe, y)) );	// insère un point
	}
	
	courbe.np++;	// on incrémente car il y a un point supplémentaire dans la courbe

	return tmp;		// valeur de retour utilisée comme seleected point
}
AddPoint.local = 1;

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
		perror("no point", lequel,"in function", courbe.name);
		return;
	}
	courbe.pa[lequel].valx = newx;
	courbe.pa[lequel].valy = newy;					
	courbe.pa[lequel].x = val2x(courbe, newx);
	courbe.pa[lequel].y = val2y(courbe, newy);

	SortBulle(courbe);	// il faut maintenant remettre tous les points dans l'ordre
	ApplyAutoSustain();
}
MovePoint.local = 1;

function SwitchCurrent(sens)
{
		if( sens )		// avec shift on tourne dans l'autre sens
			current = (current - 1 + NbCourbes) % NbCourbes;
		else
			current = (current + 1) % NbCourbes;
		
		outlet(DUMPOUT, "display", current);
		draw();
}
SwitchCurrent.local = 1;

function CurrentOrArgument(c, a, combien)
{
	if ( a.length > combien)
		return c;
	else
		return fctns[current];
}
CurrentOrArgument.local = 1;

function SortBulle(courbe)
{
	// la méthode bulle pour mettre dans l'ordre... :-)
	var i, bulle;
	var max = courbe.np - 2;
	var tmp = new Point();
	
	do {
		bulle = 0;
		
		for (i=0; i <= max; i++) {
			if ( courbe.pa[i].x > courbe.pa[i+1].x ) {
				tmp = courbe.pa[i];
				courbe.pa[i] = courbe.pa[i+1];
				courbe.pa[i+1] = tmp;
				bulle = 1;
			}
		}
	} while (bulle);
	
	ApplyAutoSustain();
}
SortBulle.local = 1;

function RedrawOrNot(v)
{
	if (v != RedrawOrNot.LastValue) {
		RedrawOrNot.LastValue = v;
		v == -1 ? WaitALittleBit() : draw() ; // si pas de point sélectionné on attend un peu avant de faire draw()
	}
}
RedrawOrNot.local = 1;

function ArgsParser(courbe, msg, a) 
{
	// en fonction du nombre d'arguments 1 (interpolationX-Y) 2 (AddPoint) 3 (MovePoint)
	var tmpReturn = -1;
	var NeedDraw = 0;	// pour savoir si on doit
	var NeedNotify = 0;

	if ( typeof(a[0]) == "number") {

		switch (a.length) {
			case 1: Interpolation(courbe, a[0]); break;
			case 2: AddPoint(courbe, val2x(courbe, a[0]), val2y(courbe, a[1])); NeedDraw++; NeedNotify++; break;
			case 3: MovePoint(courbe, a[0], a[1], a[2]); NeedDraw++; NeedNotify++; break;
			default: perror("too many arguments for message", msg); break;
		}
		return ( (NeedNotify > 0 ? 2 : 0) + (NeedDraw > 0 ? 1 : 0) );	// sort de la fonction
	}

	switch (a[0]) {
		case "bang":		line(courbe); tmpReturn++; break;
		case "clear":		redrawoff(); MyClear(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "clearsustain":	redrawoff(); MyClearSustain(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "dump":		a.length == 2 ? MyDump(courbe, a[1]) : MyDump(courbe); tmpReturn++; break;
		case "listdump":	a.length == 2 ? MyListDump(courbe, a[1]) : MyListDump(courbe); tmpReturn++; break;
		case "fix":			if (a.length == 3) { FixPoint(courbe, a[1], a[2]); } ; NeedNotify++; tmpReturn++; break;
		case "unfix":		MyUnfix(courbe); NeedNotify++; tmpReturn++; break;
		case "name":		redrawoff(); if (a.length == 2) { MyName(courbe, a[1]);} ; getname(); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "next":		MyNext(courbe); tmpReturn++; break;
		case "nth":			if (a.length == 2) { MyNth(a[1], courbe); } ; tmpReturn++; break;
		case "sustain":		redrawoff(); if (a.length == 3) { MySustain(a[1], a[2], courbe); } ; NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "domain":
							redrawoff(); 
							if (a.length == 2)
								MyDomain(0, a[1], courbe);
							else if (a.length == 3)
								MyDomain(a[1], a[2], courbe);
							else
								perror("bad argument(s) for message domain"); 
							NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "setdomain":	
							redrawoff(); 
							if (a.length == 2)
								MySetDomain(0, a[1], courbe);
							else if (a.length == 3)
								MySetDomain(a[1], a[2], courbe);
							else
								perror("bad argument(s) for message setdomain"); 
							NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "range":		redrawoff(); if (a.length == 3) { range(a[1], a[2], courbe);};  NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "setrange":	redrawoff(); if (a.length == 3) { setrange(a[1], a[2], courbe);} ; NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "zoom_x":		redrawoff(); zoom_x(a[1], a[2], courbe); NeedDraw++; tmpReturn++; break;
		case "zoom_y":		redrawoff(); zoom_y(a[1], a[2], courbe); NeedDraw++; tmpReturn++; break;
		case "zoomout":		redrawoff(); MyZoomOut(courbe); NeedDraw++; tmpReturn++; break;
		case "autodomain":	redrawoff(); MyAutoDomain(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "autorange":	redrawoff(); MyAutoRange(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "removeduplicate": 	redrawoff(); MyRemoveDuplicate(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "smooth":		redrawoff(); MySmooth(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "gridstep":	redrawoff(); if (a.length == 2) { MyGridStep(courbe, a[1]); }; NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "brgb":		redrawoff(); SetColor(courbe, "brgb", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;
		case "frgb":		redrawoff(); SetColor(courbe, "frgb", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;
		case "rgb2":		redrawoff(); SetColor(courbe, "rgb2", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;
		case "rgb3":		redrawoff(); SetColor(courbe, "rgb3", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;
		case "rgb4":		redrawoff(); SetColor(courbe, "rgb4", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;
		case "rgb5":		redrawoff(); SetColor(courbe, "rgb5", a[1], a[2], a[3]); NeedDraw++; tmpReturn++; break;

		case "pastefunction":	redrawoff(); MyPasteFunction(courbe); NeedDraw++; NeedNotify++; tmpReturn++; break;
		case "pastecolors":	redrawoff(); MyPasteColors(courbe); NeedDraw++; tmpReturn++; break;

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
									perror("bad arguments for message all");
									DisplayOneTime = 0;
								}
							} else
								perror("doesn't understand", msg);
							tmpReturn++;
							break;
	}
	
	if (tmpReturn == -1)
		return -1;
	else
		return ( (NeedNotify > 0 ? 2 : 0) + (NeedDraw > 0 ? 1 : 0) );
}
ArgsParser.local = 1;

function WaitALittleBit()
{
	// attend 750ms avant de redessiner
	tsk = new Task(function() { if (! tsk.running) { draw(); } }, this);
	tsk.interval = 750;
	tsk.repeat(1);
}
WaitALittleBit.local = 1;

function FixPoint(courbe, WhichPoint, state)
{
	if ( (state == 0 || state == 1 ) && (WhichPoint >= 0 && WhichPoint < courbe.np) )
		courbe.pa[WhichPoint].fix = state;
	else
		perror("bad argument for message fix");
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
		if (point >= 0 && point < courbe.np)
			courbe.pa[point].sustain = state;
		else
			perror("no point", point, "(sustain operation aborted)" );
	} else
		perror("bad arguments for message sustain");
}
MySustain.local = 1;

function MyClear(courbe)
{
	courbe.pa.splice(0, courbe.np - 1);
	courbe.np = 0;
}
MyClear.local = 1;

function MyClearSustain(courbe)
{
	var i;
	for (i = 0; i < courbe.np; i++)
		courbe.pa[i].sustain = 0;
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
		if ( ((courbe.ZoomX[1] - courbe.ZoomX[0]) / v) < (BoxWidth-(Bordure*2) / 4) )
			courbe.GridStep = v;
	} else
		perror("bad argument for message gridstep");
}
MyGridStep.local = 1;


function MyDump(courbe, sendname)
{
	var tmpF = courbe;
	var i, str;
	
	if (! tmpF.np)
		return;

	if (arguments.length == 1) {
		for (i = 0; i < tmpF.np; i++) {
			outlet(DUMP_OUTLET, tmpF.name, tmpF.pa[i].valx, tmpF.pa[i].valy);
		}
		return;
	}
	//else -> on envoie vers un send
	for (i = 0; i < tmpF.np; i++) {
		str = tmpF.name + " " + tmpF.pa[i].valx.toFixed(6) + " " + tmpF.pa[i].valy.toFixed(6);
		g.dump = str.split(" ");	// String -> Array
		g.sendnamed(sendname,"dump");
	}
}
MyDump.local = 1;

function MyListDump(courbe, sendname)
{
	var tmpF = courbe;
	var tmpArray = new Array();
	var i, idx, str;
	
	if (! tmpF.np)
		return;
	
	for (i = 0, idx = 0; i < tmpF.np; i++) {
		tmpArray[idx++] = tmpF.pa[i].valx;
		tmpArray[idx++] = tmpF.pa[i].valy;
	}

	if (arguments.length == 1) {
		outlet(DUMP_OUTLET, tmpF.name, tmpArray);
		return;
	}
	//else -> on envoie vers un send
	str = tmpF.name;
	for (i = 0; i < tmpArray.length; i++) {
		str += " " + tmpArray[i].toFixed(6);
	}
	g.listdump = str.split(" ");	// String -> Array
	g.sendnamed(sendname,"listdump");
}
MyListDump.local = 1;

function MyName(courbe, name)
{
	courbe.name = name;
}
MyName.local = 1;

function perror()
{
	ejies.scriptname = "ej.function.js";
	ejies.perror(arguments);
}
perror.local = 1;

function SetColor(intOrcourbe, which, a, b, c)
{
	// which : quelle couleur (string), a arguments (Array)
	var tmpA = new Array();
	var courbe = new Object();
	
	if (typeof(intOrcourbe) == "number")
		courbe = fctns[intOrcourbe];
	else
		courbe = intOrcourbe;
		
	if (arguments.length == 5)
		tmpA = [a,b,c];
	else
		tmpA = a;
	
	if (tmpA.length == 3 && (typeof(tmpA[0]) == "number") && (typeof(tmpA[1]) == "number") && (typeof(tmpA[2]) == "number") )
		courbe[which] = MyColor2Float(tmpA[0], tmpA[1], tmpA[2]);
	else
		perror("bad arguments for message", which);
}
//SetColor.local = 1;

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
	var i, NeedDraw, NeedNotify, tmp;
	NeedNotify = 0;
	NeedDraw = 0;
	DisplayOneTime = 1;
	
	for (i = 0, tmp = 0; i < NbCourbes; i++) {
		tmp = ArgsParser(fctns[i], "all" , arguments, "\n");
		if (NeedNotify == 0)
			NeedNotify = tmp & 2 > 0 ? 1 : 0;
		if (NeedDraw == 0)
			NeedDraw = tmp & 1 > 0 ? 1 : 0;
	}

	if (NeedNotify)
		notifyclients();
	if (NeedDraw)
		redrawon();
}

function args4insp()
{
	var i, j;
	var idx = 0;
	var tmpArray = new Array();
	tmpArray[idx++] = "args4insp";
	
	tmpArray[idx++] = NbCourbes;
	tmpArray[idx++] = Legend;
	tmpArray[idx++] = GridMode;
	tmpArray[idx++] = Snap2GridState;
	tmpArray[idx++] = HiddenPointDisplay;
	tmpArray[idx++] = ClickAdd;
	tmpArray[idx++] = ClickMove;
	tmpArray[idx++] = AutoSustain;
	tmpArray[idx++] = TimeFlag;

	for (i = 0; i < NbCourbes; i++) {
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].brgb[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].frgb[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].rgb2[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].rgb3[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].rgb4[j] * 255); }
		for (j=0; j < 3; j++) { tmpArray[idx++] = Math.round(fctns[i].rgb5[j] * 255); }
	}

	outlet(DUMPOUT, tmpArray);
}

function autosustain(v)
{
	if (v != 0 && v != 1) {
		perror("autosustain doesn't understand", v);
		return;
	}
	AutoSustain = v;
}

function autorange()
{
	MyAutoRange(fctns[current]);
	UpdateDisplay();
}

function autodomain()
{
	MyAutoDomain(fctns[current]);
	UpdateDisplay();
}

function autocursor(v)
{
	if (v != 0 && v != 1) {
		perror("autocursor doesn't understand", v);
		return;
	}
	CursorChange = v;
}

function addfunction()
{
	if (arguments.length != 1) {
		perror("missing argument (name) for message addfunction");
		return;
	}
	
	var tmp = fctns.length;
	
	fctns[tmp] = new Courbe(arguments[0]);
	NbCourbes++;
	pixel2machin(fctns[current]);
	getname();		// mise à jour du menu
}

function insertfunction()
{
	if (arguments.length != 1) {
		perror("missing argument (name) for message insertfunction");
		return;
	}

	fctns.splice(current, 0, new Courbe(arguments[0]));		
	NbCourbes++;
	pixel2machin(fctns[current]);
	getname();		// mise à jour du menu
	draw();			// mise à jour de l'affichage, car c'est la courbe courrante
}

function deletefunction()
{
	var c;
	var which = -1;

	if (NbCourbes == 1)
		return;				// si une seule courbe on ne peut pas supprimer
	
	if (! arguments.length)
		which = current;
	else {
		for (c = 0; c < NbCourbes; c++) {
			if (fctns[c].name == arguments[0]) {
				which = c;
				break;
			}
		}
	}
	
	if (which == -1) {
		perror(arguments[0], "bad function name (deletefunction aborted)");
		return;
	}
	
	fctns.splice(which, 1);
	NbCourbes--;
/* 	AllPixel2Machin(); */
	getname();
	
	if (which < fctns.length)
		current = which;
	else
		current = 0;

	outlet(DUMPOUT, "display", current);

	UpdateDisplay();
}

function clickadd(v)
{
	if (v != 0 && v != 1) {
		perror("clickadd doesn't understand", v);
		return;
	}
	ClickAdd = v;
}

function clickmove(v)
{
	if (v != 0 && v != 1) {
		perror("clickmove doesn't understand", v);
		return;
	}
	ClickMove = v;
}

function display()
{
	var c, tmp;
	
	if ( arguments.length != 1 ) {
		perror("missing argument for message display");
		return;
	}
	
	if (typeof(arguments[0]) == "number" && arguments[0] >= 0 && arguments[0] < NbCourbes)
		current = arguments[0];
	else {
		for (c = 0; c < NbCourbes; c++) {
			if (fctns[c].name == arguments[0]) {
				tmp = c;
				break;
			}
		}
		current = tmp;
	}
	
	draw();
}

function dump()
{
	if (arguments.length)
		MyDump(fctns[current], arguments[0]);
	else
		MyDump(fctns[current]);
}

function listdump()
{
	if (arguments.length)
		MyListDump(fctns[current], arguments[0]);
	else
		MyListDump(fctns[current]);
}

function clear()
{
	if (! arguments.length )
		MyClear(fctns[current]);
	else
		perror("extra arguments for message clear");
	
	UpdateDisplay();
}

function clearsustain()
{
	if (! arguments.length)
		MyClearSustain(fctns[current]);
	else
		perror("extra arguments for message clearsustain");

	UpdateDisplay();
}

function fix()
{
	if (arguments.length == 2)
		FixPoint(fctns[current], arguments[0], arguments[1]);
	else
		perror("bad arguments for message fix");
}

function unfix()
{
	if (arguments.length)
		perror("extra arguments for message unfix");
	else
		MyUnfix(fctns[current]);
}

function grid(v)
{
	if (v != 0 && v != 1) {
		perror("gridmode doesn't understand", v);
		return;
	}
	GridMode = v;

	draw();
}

function nth(v)
{
	if (typeof(v) == "number")
		MyNth(fctns[current], v);
	else
		perror("bad argument for message nth");
}

function active()
{
	// ne pas éditer si c'est invisible
	// quand la fonction n'est pas visible nom entre parenthèse	
	var tmpArray = arrayfromargs(messagename, arguments);
	var i;
	
	if (tmpArray.length > (NbCourbes + 1)) {
		perror("too many arguments for message active");
		return;
	}
	
	if (tmpArray.length == 2) {
		if (tmpArray[1] == 0 || tmpArray[1] == 1) {
			fctns[current].display = tmpArray[1];
			draw();
			return;
		} else
			perror("bad argument for message active");
	}

	for (i = 1; i < tmpArray.length; i++) {
		if (tmpArray[i] == 0 || tmpArray[i] == 1)
			fctns[i-1].display = tmpArray[i];
		else {
			perror("bad argument for message active");
			break;
		}
	}
	draw();
}

function snap2grid(v)
{
	if (v != 0 && v != 1) {
		perror("snap2grid doesn't understand", v);
		return;
	}
	Snap2GridState = v;

	draw();
}

function gridstep(v)
{
	MyGridStep(fctns[current], v);
	notifyclients();

	if (GridMode)
		draw();
}

function hiddenpoint(v)
{
	if (v != 0 && v != 1) {
		perror("hiddenpoint doesn't understand", v);
		return;
	}
	HiddenPointDisplay = v;
	draw();
}

function legend(v)
{
	if (v != 0 && v != 1) {
		perror("legend doesn't understand", v);
		return;
	}
	
	Legend = v;
	LegendBordure = 12 * v;		// 12 pixels la légende...
	AllPixel2Machin();
	ValRecalculate();
	draw();
}

function timedisplay(v)
{
	if (v != 0 && v != 1) {
		perror("timedisplay doesn't understand", v);
		return;
	}
	TimeFlag = v;
}

function name(name)
{
	MyName(fctns[current], name);
	UpdateDisplay();
	getname();
}

function next()
{
	if (! arguments.length)
		MyNext(fctns[current]);
	else
		perror("extra arguments for message next");
}
next.immediate = 1;

function sustain()
{
	if (arguments.length == 2) {
		MySustain(arguments[0], arguments[1], fctns[current]);
		UpdateDisplay();
	} else
		perror("bad arguments for message sustain");
}

function brgb() { SetColor(fctns[current], "brgb", arguments); draw(); }
function frgb() { SetColor(fctns[current], "frgb", arguments); draw(); }
function rgb2() { SetColor(fctns[current], "rgb2", arguments); draw(); }
function rgb3() { SetColor(fctns[current], "rgb3", arguments); draw(); }
function rgb4() { SetColor(fctns[current], "rgb4", arguments); draw(); }
function rgb5() { SetColor(fctns[current], "rgb5", arguments); draw(); }

function domain()
{
	switch (arguments.length) {
		case 1:
				MyDomain(0, arguments[0], fctns[current]);
				break;
		case 2:
				MyDomain(arguments[0], arguments[1], fctns[current]);
				break;
		default:
				perror("bad argument(s) for message domain");
				return;
	}

	UpdateDisplay();
}

function setdomain()
{
	switch (arguments.length) {
		case 1:
				MySetDomain(0, arguments[0], fctns[current]);
				break;
		case 2:
				MySetDomain(arguments[0], arguments[1], fctns[current]);
				break;
		default:
				perror("bad argument(s) for message setdomain");
				return;
	}
	
	notifyclients();	// pas besoin d'un draw ça ne change pas la position des points.
}

function range(a, b, courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 2);
	var i;
	
	if ( (b - a)  < 0) {
		perror("bad values for message range");
		return ;
	}
	
	tmpF.range = [a, b];
	MyRange2Zoom(tmpF);
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].y = val2y(tmpF, tmpF.pa[i].valy);
	}

	UpdateDisplay();
}

function setrange(a, b, courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 2);
	var i;

	if ( (b - a)  < 0) {
		perror("bad values for message setrange");
		return ;
	}
	
	tmpF.range = [a, b];
	MyRange2Zoom(tmpF);
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].valy = y2val(tmpF, tmpF.pa[i].y);
	}

	notifyclients();
}

function fswitch() { SwitchCurrent(); }

function redrawoff() { RedrawEnable = 0; }

function redrawon()
{
	RedrawEnable = 1;
	draw();
}

function resetall()
{
	LectureInspector();			// lecture des arguments
	defaults();					// Applique les couleurs et paramètres pas défaut
	AllPixel2Machin();			// calcule le rapport pixel/temps/range
	sketch.default2d();
	// initialisation de propriétés de variables
	EditedWithMouse.state = 0;	// flag initialisation
	PattrInterpError.flag = 0;
	PattrTooMany.flag = 1;
	current = 0;				// première courbe est la courbe actvie
	RedrawEnable = 1;
	UpdateDisplay();
}

function defaults()
{
	// utilisé pour la restauration des paramètres par défaut.
	var c;
	
	Legend = 1;
	GridMode = 0;
	Snap2GridState = 0;
	HiddenPointDisplay = 0;
	ClickAdd = 1;
	ClickMove = 1;
	AutoSustain = 0;
	CursorChange = 1;
	
	for (c = 0; c < NbCourbes; c++) {
		fctns[c].brgb =[0.8,0.8,0.8];
		fctns[c].frgb =[0.32,0.32,0.32];
		fctns[c].rgb2 =[0.33,0.33,0.33];
		fctns[c].rgb3 =[1,0.,0.];
		fctns[c].rgb4 =[0.2,0.2,0.2];
		fctns[c].rgb5 =[0.5,0.5,0.5];
	}
	
	draw();	// si c'est utilisé dans la fonction save(), draw est désactivé automatiquement (RedrawEnable = 0);
}

function removeduplicate()
{
	MyRemoveDuplicate(fctns[current]);
	UpdateDisplay();
}

function smooth()
{
	MySmooth(fctns[current]);
	UpdateDisplay();
}

function copycolors()
{
	var c, i, j, idx;
	var cp = g["copycolors"];
	idx = 0;
	c = -1;
	
	if (! arguments.length)
		c = current;
	else {
		for (i = 0; i < NbCourbes; i++) {
			if (fctns[i].name == arguments[0]) {
				c = i;
				break;
			}
		}
	}
	
	if (c == -1) {
		perror(arguments[0], "bad function name (copycolors aborted)");
		return;
	}

	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].brgb[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].frgb[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].rgb2[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].rgb3[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].rgb4[j]; }
	for (j=0; j < 3; j++) { cp[idx++] = fctns[c].rgb5[j]; }
}

function pastecolors()
{
	if (! arguments.length)
		MyPasteColors(fctns[current]);
	else
		perror("extra arguments for message pastecolors");
	
	draw();
}

function zoom_x(start, stop, courbe)
{
	var i;
	var tmpF = CurrentOrArgument(courbe, arguments, 2);
	
	if (arguments.length == 0) {
		start = 0;
		stop = 1;
	} else if (arguments.length == 1) {
		perror("missing argument for message zoom_x");
		return;
	}

	tmpF.ZoomX[0] = start * (tmpF.domain[1] - tmpF.domain[0]) + tmpF.domain[0];
	tmpF.ZoomX[1] = stop * (tmpF.domain[1] - tmpF.domain[0]) + tmpF.domain[0];
	pixel2machin(tmpF);
	
	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].x = val2x(tmpF, tmpF.pa[i].valx);
	}

	draw();
}

function zoom_y(start, stop, courbe)
{
	var i;
	var tmpF = CurrentOrArgument(courbe, arguments, 2);
	
	if (arguments.length == 0) {
		start = 0;
		stop = 1;
	} else if (arguments.length == 1) {
		perror("missing argument for message zoom_y");
		return;
	}
	
	tmpF.ZoomY[0] = start * (tmpF.range[1] - tmpF.range[0]) + tmpF.range[0];
	tmpF.ZoomY[1] = stop * (tmpF.range[1] - tmpF.range[0]) + tmpF.range[0];
	pixel2machin(tmpF);

	for (i = 0; i < tmpF.np; i++) {
		tmpF.pa[i].y = val2y(tmpF, tmpF.pa[i].valy);
	}

	draw();
}

function zoomout()
{
	redrawoff();				// On ne passe dans cette fonction que quand elle est appelée depuis l'extérieur
	MyZoomOut(fctns[current]);
	redrawon();					// on ne réaffiche donc qu'à la sortie, une seule fois.
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
	
	if (AllowEdit == 0 || fctns[current].display == 0)
		return;

	for(i=0; i< fctns[current].np; i++) {

		if ( (Math.abs(x - fctns[current]["pa"][i].x) < Tolerance) && (Math.abs(y - fctns[current]["pa"][i].y) < Tolerance) ) {
			DisplayCursor(5);
			IdlePoint = i;

			if ( IdlePoint != OldIdlePoint) {	// que quand c'est différent...
				RedrawOrNot(IdlePoint);
				break;			
			}
		}
	}

	if (IdlePoint == -1 && shift == 0)
		DisplayCursor(6);
	
	RedrawOrNot(IdlePoint);
}

function onidleout()
{
	DisplayCursor(1);
}

function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var tmpF = fctns[current];

	if (AllowEdit == 0 || tmpF.display == 0) {
		onidle(x, y);
		return;
	}
	SelectedPoint = -2;
	x = ejies.clip(x - 2, Bordure, BoxWidth - Bordure);
	y = ejies.clip(y - 2, Bordure + LegendBordure, BoxHeight - Bordure);

	if (IdlePoint != -1) {
		SelectedPoint = IdlePoint;
		if (cmd) {
			tmpF.pa[SelectedPoint].sustain = 1 - tmpF.pa[SelectedPoint].sustain;
			EditedWithMouse.state++;
			UpdateDisplay();
			return ;
		}
		
		if (shift) {
			DeletePoint(tmpF, SelectedPoint);
			SelectedPoint = -1;
			ApplyAutoSustain();
			EditedWithMouse.state++;
			EditedWithMouse();
			notifyclients();
			onidle(x, y);	// pour ne pas afficher la position (puisqu'on y est)
			return;
		}
	}

	if (SelectedPoint != -2 && ClickMove == 0)	// ClickMove désactivé
		SelectedPoint = -1;

	// ajout d'un point
	if (cmd == 0 && shift == 0 && SelectedPoint == -2 && ClickAdd == 1) {
		if ( Snap2GridState )
			x = val2x(tmpF, Math.round(x2val(tmpF, x) / tmpF.GridStep) * tmpF.GridStep);
		SelectedPoint = AddPoint(tmpF, x, y);
		ApplyAutoSustain();
		EditedWithMouse.state++;
		notifyclients();
		onidle(x,y);
	}
}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var tmpF = fctns[current];

	if (AllowEdit == 0 || tmpF.display == 0)
		return;

	if ( but == 0 ||  SelectedPoint < 0) {
		EditedWithMouse();	// quand c'est delete c'est fait dans onidle()
		SelectedPoint = -2;	// si on a relâché c'est qu'il n'y a plus de points sélectionnés.
		onidle(x,y);		// tout pareil...
		draw();
		return;
	}
	
	if (SelectedPoint < tmpF.np) {
		if (tmpF["pa"][SelectedPoint].fix)
			return;
	
		if ( Snap2GridState )
			x = val2x(tmpF, Math.round(x2val(tmpF, x) / tmpF.GridStep) * tmpF.GridStep);
		
		x = ejies.clip(x, Bordure, BoxWidth - Bordure);
		y = ejies.clip(y, Bordure + LegendBordure, BoxHeight - Bordure);
	
		if (tmpF["np"] > 1) {

			if (SelectedPoint == 0)
				x = ejies.clip(x, Bordure, tmpF["pa"][SelectedPoint+1].x );  
	
			if (SelectedPoint > 0 && SelectedPoint < (tmpF["np"] - 1))
				x = ejies.clip(x, tmpF["pa"][SelectedPoint-1].x, tmpF["pa"][SelectedPoint+1].x);  
	
			if (SelectedPoint == (tmpF["np"] - 1) )
				x = ejies.clip(x, tmpF["pa"][SelectedPoint-1].x, BoxWidth - Bordure);  
		}

		EditedWithMouse.state++;		
		tmpF["pa"][SelectedPoint].x = x;
		tmpF["pa"][SelectedPoint].y = y;
		tmpF["pa"][SelectedPoint].valx = x2val(tmpF, x);
		tmpF["pa"][SelectedPoint].valy = y2val(tmpF, y);
		UpdateDisplay();
	}
}

function ondblclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	if (cmd)
		SwitchCurrent(shift);	// avec shift on tourne dans l'autre sens
}


//////////////// Get Things ///////////////
function getdisplay()
{
	outlet(DUMPOUT, "display", current);
}

function getdomain(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "domain", tmpF.domain);
}

function getrange(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "range", tmpF.range);
}

function getfix(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
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
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	var tmpData = new Array();
	var i;
	
	for (i = j = 0; i < tmpF.np; i++) {
		if ( tmpF.pa[i].sustain ) { tmpData[j++] = i; }
	}
	
	if (tmpData. length != 0) { outlet(DUMPOUT, tmpF.name, "sustain", tmpData); }
}

function getgridstep(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "gridstep", tmpF.GridStep);
}

function getbrgb() { GetColor(fctns[current], "brgb"); }
function getfrgb() { GetColor(fctns[current], "frgb"); }
function getrgb2() { GetColor(fctns[current], "rgb2"); }
function getrgb3() { GetColor(fctns[current], "rgb3"); }
function getrgb4() { GetColor(fctns[current], "rgb4"); }
function getrgb5() { GetColor(fctns[current], "rgb5"); }

function getnbpoints(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "nbpoints", tmpF.np);
}



/// get généraux ///
function getlegend() { outlet(DUMPOUT, "legend", Legend); }
function getgrid() { outlet(DUMPOUT, "grid", GridMode); }
function getsnap2grid() { outlet(DUMPOUT, "snap2grid", Snap2GridState); }
function gethiddenpoint() { outlet(DUMPOUT, "hiddenpointdisplay", HiddenPointDisplay); }
function getautosustain() {	outlet(DUMPOUT, "autosustain", AutoSustain); }
function getclickadd() { outlet(DUMPOUT, "clickadd", ClickAdd); }
function getclickmove() { outlet(DUMPOUT, "clickmove", ClickMove); }
function gettimedisplay() { outlet(DUMPOUT, "timedisplay", TimeFlag); }
function getnbfunctions() { outlet(DUMPOUT, "nbfunctions", NbCourbes); }
function getautocursor() { outlet(DUMPOUT, "autocursor", CursorChange); }

function getname()
{
	var c, tmpArray;
	outlet(DUMPOUT, "name", "clear");
	
	for (c = 0; c < NbCourbes; c++)
		outlet(DUMPOUT, "name", "append", fctns[c].name);
}

function getactive()
{
	var c, idx
	var tmpArray = new Array();
	
	for (c = 0, idx = 0; c < NbCourbes; c++) {
		tmpArray[idx++] = fctns[c].display;
	}
	outlet(DUMPOUT, "active", tmpArray);
}

function getzoom_x(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "zoom_x",	tmpF.ZoomX[0] / (tmpF.domain[1] - tmpF.domain[0]) - tmpF.domain[0],
											tmpF.ZoomX[1] / (tmpF.domain[1] - tmpF.domain[0]) - tmpF.domain[0]);
}

function getzoom_y(courbe)
{
	var tmpF = CurrentOrArgument(courbe, arguments, 0);
	outlet(DUMPOUT, tmpF.name, "zoom_y",	tmpF.ZoomY[0] / (tmpF.range[1] - tmpF.range[0]) - tmpF.range[0],
											tmpF.ZoomY[1] / (tmpF.range[1] - tmpF.range[0]) - tmpF.range[0]);
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
		fctns[OldNbCourbes] = new Courbe();
		MyThings2Zoom(fctns[OldNbCourbes]);
		pixel2machin(fctns[OldNbCourbes++]);
	}

	while (OldNbCourbes > NbCourbes) {
		fctns.splice(--OldNbCourbes, 1);
		// si la courbe qu'on vient de supprimer était la courbe courante... current = 0
		if (current >= NbCourbes)
			current = 0;
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
		fctns[i].name = arguments[idx++];

		// depuis la version 1.52 domaine contient deux limites.
		if (FunctionVersionCheck == 1 )
			fctns[i].domain[0] = 0;
		else
			fctns[i].domain[0] = parseFloat(arguments[idx++]);

		fctns[i].domain[1] = parseFloat(arguments[idx++]);

		fctns[i].range[0] = parseFloat(arguments[idx++]);
		fctns[i].range[1] = parseFloat(arguments[idx++]);

		MyThings2Zoom(fctns[i]);
		
		fctns[i].GridStep = arguments[idx++];
		
		OldNp = fctns[i].np;
		fctns[i].np = (arguments[i+2]);

		// création des points s'ils ne sont pas présents dans la courbe
		while (OldNp < fctns[i].np) {
			fctns[i]["pa"][OldNp++] = new Point();
		}

		// suppression des points n'existant plus dans la courbe
		while (OldNp > fctns[i].np) {
			fctns[i]["pa"].splice(--OldNp, 1);
		}

		for (p = 0; p < fctns[i].np; p++) {
			fctns[i]["pa"][p].valx = arguments[idx++];
			fctns[i]["pa"][p].valy = arguments[idx++];
			fctns[i]["pa"][p].sustain = arguments[idx] & 2 ? 1 : 0; // pas d'incrémentation
			fctns[i]["pa"][p].fix = arguments[idx++] & 1;	// elle est faite ici.
		}
	}

 	AllPixel2Machin();
	ValRecalculate();
	RedrawEnable = 1;
	AllowEdit = 1;
	PattrInterpError.flag = 0;
	UpdateDisplay();

	if ( FunctionVersionCheck < 1 && FunctionVersionCheck > 2 )
		perror("bad version number - interpolation aborted");
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
		tmpData[idx++] = fctns[i].np;
	}
	
	for (i = 0; i < NbCourbes; i++) {
		tmpData[idx++] = fctns[i].name;
		tmpData[idx++] = fctns[i].domain[0];
		tmpData[idx++] = fctns[i].domain[1];
		tmpData[idx++] = fctns[i].range[0];
		tmpData[idx++] = fctns[i].range[1];
		tmpData[idx++] = fctns[i].GridStep;

		for (p = 0; p < fctns[i].np; p++) {
			// on stocke un minimum de chose pour pouvoir mettre plus de points
			tmpData[idx++] = fctns[i]["pa"][p].valx;
			tmpData[idx++] = fctns[i]["pa"][p].valy;
			tmpData[idx++] = fctns[i]["pa"][p].sustain * 2 + fctns[i]["pa"][p].fix;	// en binaire ça prend moins de place
		}
	}

	PattrTooMany(tmpData.length);

	return tmpData;
}

function save()
{
	var i;

	embedmessage("CreateNFunctions", NbCourbes);	// required for the number of color to save
	embedmessage("legend", Legend);
	embedmessage("grid", GridMode);
	embedmessage("snap2grid", Snap2GridState);
	embedmessage("hiddenpoint", HiddenPointDisplay);
	embedmessage("clickadd", ClickAdd);
	embedmessage("clickmove", ClickMove);
	embedmessage("autosustain", AutoSustain);
	embedmessage("timedisplay", TimeFlag);
	embedmessage("autocursor", CursorChange);
	
	for (i = 0; i < NbCourbes; i++) {
		embedmessage("SetColor", i, "brgb", Math.round(fctns[i].brgb[0] * 255), Math.round(fctns[i].brgb[1] * 255), Math.round(fctns[i].brgb[2] * 255) );
		embedmessage("SetColor", i, "frgb", Math.round(fctns[i].frgb[0] * 255), Math.round(fctns[i].frgb[1] * 255), Math.round(fctns[i].frgb[2] * 255) );
		embedmessage("SetColor", i, "rgb2", Math.round(fctns[i].rgb2[0] * 255), Math.round(fctns[i].rgb2[1] * 255), Math.round(fctns[i].rgb2[2] * 255) );
		embedmessage("SetColor", i, "rgb3", Math.round(fctns[i].rgb3[0] * 255), Math.round(fctns[i].rgb3[1] * 255), Math.round(fctns[i].rgb3[2] * 255) );
		embedmessage("SetColor", i, "rgb4", Math.round(fctns[i].rgb4[0] * 255), Math.round(fctns[i].rgb4[1] * 255), Math.round(fctns[i].rgb4[2] * 255) );
		embedmessage("SetColor", i, "rgb5", Math.round(fctns[i].rgb5[0] * 255), Math.round(fctns[i].rgb5[1] * 255), Math.round(fctns[i].rgb5[2] * 255) );
	}
	
	embedmessage("redrawon");	// refresh de l'affichage après la lecture des arguments
}

function CreateNFunctions(v)
{
	RedrawEnable = 0;
	NbCourbes = v;
	init();
	LectureInspectorFlag = 1;	// comme ça il n'y a pas de scan des arguments
}

function copyfunction()
{
	var i, c, p, idx;
	idx = 0;
	c = -1;

	if (! arguments.length)
		c = current;
	else {
		for (i = 0; i < NbCourbes; i++) {
			if (fctns[i].name == arguments[0]) {
				c = i;
				break;
			}
		}
	}
	
	if (c == -1) {
		perror(arguments[0], "bad function name (copyfunction aborted)");
		return;
	}

	var cp = g["copy"];	// c'est moins long
	cp.length = 0;	// "vide le presse papier"

	cp[idx++] = fctns[c].np;	
	cp[idx++] = fctns[c].name;
	cp[idx++] = fctns[c].domain[0];
	cp[idx++] = fctns[c].domain[1];
	cp[idx++] = fctns[c].range[0];
	cp[idx++] = fctns[c].range[1];
	cp[idx++] = fctns[c].GridStep;
	cp[idx++] = fctns[c].display;

	for (p = 0; p < fctns[c].np; p++) {
		cp[idx++] = fctns[c]["pa"][p].x;
		cp[idx++] = fctns[c]["pa"][p].y;
		cp[idx++] = fctns[c]["pa"][p].valx;
		cp[idx++] = fctns[c]["pa"][p].valy;
		cp[idx++] = fctns[c]["pa"][p].sustain
		cp[idx++] = fctns[c]["pa"][p].fix;
	}
}

function pastefunction()
{
	if (! arguments.length)
		MyPasteFunction(fctns[current]);
	else
		perror("extra arguments for message pastefunction");
	
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
		perror("before pasting, you have to copy something");
		return;
	}
		
	OldNp = fctns[current].np;
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
		perror("before inserting and pasting, you have to copy something");
		return;
	}
		
	// insertion de la nouvelle courbe (le nom est bidon, puisqu'on va le remplir après)
	fctns.splice(current, 0, new Courbe("tmpName"));
	NbCourbes++;

	fctns[current].np = cp[idx++];
	fctns[current].name = cp[idx++];
	fctns[current].domain[0] = cp[idx++];
	fctns[current].domain[1] = cp[idx++];
	fctns[current].range[0] = cp[idx++];
	fctns[current].range[1] = cp[idx++];	
	fctns[current].GridStep = cp[idx++];
	fctns[current].display = cp[idx++];
	
	for (p = 0; p < fctns[current].np; p++) {
		fctns[current]["pa"][p] = new Point(cp[idx], cp[idx+1], cp[idx+2], cp[idx+3]);
		idx += 4;
		fctns[current]["pa"][p].sustain = cp[idx++];
		fctns[current]["pa"][p].fix = cp[idx++];
	}		

	MyThings2Zoom(fctns[current]);
	pixel2machin(fctns[current]);

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
		perror("read filename is missing");
		return;
	}

	var fichier = new File(filename,"read"); 
	if (fichier.isopen) {
		var tmpLine = LectureNextLigne(fichier);
		if (tmpLine != "ej.function format") {
			perror("can't read this file format");
			return;
		}
		
		RedrawEnable = 0;
		AllowEdit = 0;
		
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
			fctns[OldNbCourbes] = new Courbe();
			MyThings2Zoom(fctns[OldNbCourbes]);
			pixel2machin(fctns[OldNbCourbes++]);
		}

		while (OldNbCourbes > NbCourbes) {		// suppression des courbes si nécessaire
			fctns.splice(--OldNbCourbes, 1);
			if (current >= NbCourbes)
				current = 0;
		}
		
		for (c = 0; c < NbCourbes; c++) {
			OldNp = fctns[c].np;
			fctns[c].np = parseFloat(tmpLine[idx++]);
			// création ou suppression de points
			while (OldNp < fctns[c].np) { fctns[c]["pa"][OldNp++] = new Point(); }
			while (OldNp > fctns[c].np) { fctns[c]["pa"].splice(--OldNp, 1); }
		}
	
		c = 0;
		while ( fichier.position < fichier.eof ) {
			tmpLine = LectureNextLigne(fichier);
			if (tmpLine == "")
				break;
			tmpLine = tmpLine.split(" ");

			idx = 0;

			var p;
			var NeedUpdate = 0;
			fctns[c].name = tmpLine[idx++];
			
			// depuis la version 1.52 domaine contient deux limites.
			if (FunctionVersionCheck == 1 )
				fctns[c].domain[0] = 0;
			else
				fctns[c].domain[0] = parseFloat(tmpLine[idx++]);

			fctns[c].domain[1] = parseFloat(tmpLine[idx++]);
			
			fctns[c].range[0] = parseFloat(tmpLine[idx++]);
			fctns[c].range[1] = parseFloat(tmpLine[idx++]);

			MyThings2Zoom(fctns[c]);
			
			fctns[c].GridStep = parseFloat(tmpLine[idx++]);
			fctns[c].display = parseFloat(tmpLine[idx++]);

			idx = 0;
			tmpLine = LectureNextLigne(fichier);
			tmpLine = tmpLine.split(" ");
			for (j=0; j < 3; j++) { fctns[c].brgb[j] = tmpLine[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[c].frgb[j] = tmpLine[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[c].rgb2[j] = tmpLine[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[c].rgb3[j] = tmpLine[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[c].rgb4[j] = tmpLine[idx++] / 255; }
			for (j=0; j < 3; j++) { fctns[c].rgb5[j] = tmpLine[idx++] / 255; }

			for (p = 0; p < fctns[c].np; p++) {
				idx = 0;
				tmpLine = LectureNextLigne(fichier);
				tmpLine = tmpLine.split(" ");
				if (tmpLine.length != 3) {
					perror("bad file contents");
					break;
				}
				fctns[c]["pa"][p].valx = parseFloat(tmpLine[idx++]);
				fctns[c]["pa"][p].valy = parseFloat(tmpLine[idx++]);
				fctns[c]["pa"][p].sustain = tmpLine[idx] & 2 ? 1 : 0; // pas d'incrémentation
				fctns[c]["pa"][p].fix = tmpLine[idx++] & 1;	// elle est faite ici.
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
		perror("could not read file: ", filename, "... don't ask why :-)\n");
		outlet(DUMPOUT, "read", filename, -1);
	}
	
	if (OpendialogPrepend) {
			DeleteReadThings();
	}
}

function write(filename)
{
	if (arguments.length == 0) {
		WriteDialog();
		return;
	}
	
	if (arguments.length > 2) {
		perror("too many arguments for message write");
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
			perror("bad arguments for message write");
	}
		
	var fichier = new File(filename,"write");
	if (fichier.isopen) {
		//versioning to allow for future changes (technoui style...)
		tmpStr += FUNCTIONVERSION + sep;
		tmpStr += NbCourbes;
		
		fichier.writeline("ej.function format");

		for (i = 0; i < NbCourbes; i++) {
			tmpStr += sep + fctns[i].np;
		}

		if (PrintComment) { fichier.writeline("// format version number, Nb functions, Nb points function 0, Nb points function 1..."); }
		fichier.writeline(tmpStr);

		for (i = 0; i < NbCourbes; i++) {
			fichier.writeline("");
			if (PrintComment) { fichier.writeline("// new function: name, domain, range min, range max, gridstep");	}
			tmpStr = "";
			tmpStr += fctns[i].name + sep;
			tmpStr += fctns[i].domain[0] + sep;
			tmpStr += fctns[i].domain[1] + sep;
			tmpStr += fctns[i].range[0] + sep;
			tmpStr += fctns[i].range[1] + sep;
			tmpStr += fctns[i].GridStep + sep;
			tmpStr += fctns[i].display;
			fichier.writeline(tmpStr);		

			tmpStr = "";
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].brgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].frgb[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].rgb2[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].rgb3[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].rgb4[j] * 255) + sep; }
			for (j=0; j < 3; j++) { tmpStr += Math.round(fctns[i].rgb5[j] * 255) + sep; }
			fichier.writeline(tmpStr);

			for (p = 0; p < fctns[i].np; p++) {
				tmpStr = "";
				tmpStr += fctns[i]["pa"][p].valx + sep;
				tmpStr += fctns[i]["pa"][p].valy + sep;
				tmpStr += fctns[i]["pa"][p].sustain * 2 + fctns[i]["pa"][p].fix;	// en binaire ça prend moins de place
				fichier.writeline(tmpStr);
			}
		}
		
		fichier.eof = fichier.position;
		fichier.close();
		outlet(DUMPOUT, "write", filename, "1");
	} else {
		perror("could not write file: ", filename, "... don't ask why :-)\n");
		outlet(DUMPOUT, "write", filename, "-1");
	}
}

resetall();

autowatch = 1;
post("compiled...\n");