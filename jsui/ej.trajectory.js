/*
	ej.trajectory.js by Emmanuel Jourdan, e--j dev
*/

autowatch = 1;
border = 0;                     // disable jsui's border
outlets = 2;

// mgraphics initialization
mgraphics.init();               // initialize mgraphics
mgraphics.relative_coords = 0;  // coordinate system: x, y, width height
mgraphics.autofill = 0;         // we want to fill the paths ourself

// CONST
const OUTLET_DUMPOUT = 1;

// darwing variables
var CENTER_POINT_SIZE = 12.0;
var POINT_SIZE = 6.0;
var bgcolor = [ 0.9, 0.9, 0.9, 1.];
var bordercolor = [ 0.3, 0.3, 0.3, 1.];
var linecolor = [ 0.3, 0.3, 0.3, 1.];
var pointcolor = [ 0.9, 0.4, 0.4, 1.];
var bordersize = 2;

var circlesValues = [ 1. ];		// the circles to display (in "meter")
var points = new Array();	// the points
var hps = new Array();		// HPs
var idlePoint = -1;		// index of the point the mouse is over
var movingPoint = -1;	// index of the point your are moving
var durationPoint = -1;
var letters = [ "x", "y", "z"];
var zoomFactor = 1.0;
var lastMouse = new Array(2);		// used to calculate delta

function Point(x, y, z)
{
	this.x = x;
	this.y = y;
	this.z = z;
	this.duration = 1.;

	this.getDist = function() {
		var x = this.x;
		var y = this.y;
		return Math.sqrt(x * x + y * y);
	}

	this.getAz = function() {
		var x = this.x;
		var y = this.y;
		var az = (Math.atan2(y, x) + Math.PI / 2.) / Math.PI * 180.0
		return az > 180 ? az - 360 : az;
	}

	this.setAzDist = function(az, dist) {
		var radians = (az - 90.) / 180. * Math.PI;
		this.x = dist * Math.cos(radians);
		this.y = dist * Math.sin(radians);
	}


	this.getXToScreen = function(width, zoomFactor) {
		var x = this.x * zoomFactor;
		return (x * width * 0.5 + width * 0.5);
	}

	this.getYToScreen = function(height, zoomFactor) {
		var y = this.y * zoomFactor;
		return (y * height * 0.5 + height * 0.5);
	}

	this.doMirrorX = function() {
		this.x = -this.x;
	}

	this.doMirrorY = function() {
		this.y = -this.y;
	}
}

function bang()
{
	mgraphics.redraw();
}

function zoom(f)
{
	zoomFactor = f;
	redraw();
}

function set_hp()
{
	hps = new Array();
	for (var i = 0; i < arguments.length; i++) {
		hps[i] = new Point(0., 0.);
		hps[i].setAzDist(arguments[i], 1.);
	}

	redraw();
}

function circles()
{
	circlesValues = arrayfromargs(arguments);
	redraw();
}

function offset_x(v)
{
	for (var i = 0; i < points.length; i++) {
		points[i].x += v;
	}
	redraw();
}

function offset_y(v)
{
	for (var i = 0; i < points.length; i++) {
		points[i].y += v;
	}
	redraw();
}

function scale(v)
{
	var a = new Array();

	for (var i = 0; i < points.length; i++) {
		a[0] = points[i].getAz();
		a[1] = points[i].getDist();

		points[i].setAzDist(a[0], a[1] * v);
	}
	redraw();
}

function rotate(v)
{
	var a = new Array();

	for (var i = 0; i < points.length; i++) {
		a[0] = points[i].getAz();
		a[1] = points[i].getDist();

		points[i].setAzDist(a[0]+v, a[1]);
	}
	redraw();
}

function mirror_x()
{
	for (var i = 0; i < points.length; i++) {
		points[i].doMirrorX()
	}

	redraw();
}

function mirror_y()
{
	for (var i = 0; i < points.length; i++) {
		points[i].doMirrorY()
	}

	redraw();
}

function duration_add(v)
{
	// do not change the duration of the first point
	for (var i = 1; i < points.length; i++) {
		points[i].AddToDuration(v);
	}

	redraw();
}

function time()
{
	for (var i = 0; i < Math.min(arguments.length, points.length - 1); i++) {
		points[i+1].duration = arguments[i];
	}

	redraw();
}

function paint()
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	with (mgraphics) {
		// background
		set_source_rgba(bgcolor);
		rectangle_rounded(bordersize * 0.5, bordersize * 0.5, width - bordersize, height - bordersize, 10.,10.);
		set_line_width(bordersize);
		fill_preserve();
		set_source_rgba(bordercolor);
		stroke();

		// axis
		set_source_rgba(bordercolor[0], bordercolor[1], bordercolor[2], bordercolor[3] * 0.1);
		move_to(0., 0.);
		line_to(width, height);
		move_to(width, 0.);
		line_to(0., height);
		move_to(width * 0.5, 0.);
		line_to(width * 0.5, height);
		move_to(0, height * 0.5);
		line_to(width, height * 0.5);
		stroke();

		// circles
		var fontsize = 12.0 * zoomFactor;
		if (fontsize < 10.0)
			fontsize = 10.0;
		for (var i = 0; i < circlesValues.length; i++) {
			var circleSize = zoomFactor * circlesValues[i];
			set_line_width(1.);
			ellipse(width * 0.5 - (width * circleSize * 0.5), height * 0.5 - (height * circleSize * 0.5), width * circleSize, height * circleSize);
			if (circlesValues[i] == 1) {
				set_source_rgba(bordercolor[0], bordercolor[1], bordercolor[2], bordercolor[3] * 0.05);
				fill();
			} else {
				set_source_rgba(bordercolor[0], bordercolor[1], bordercolor[2], bordercolor[3] * 0.1);
				stroke();
			}

			set_source_rgb(0.5, 0.5, 0.5, 0.5);
			select_font_face("Lato", "normal", "normal");
			set_font_size(fontsize);
			move_to(width * 0.5 + (width * circleSize * 0.5) - fontsize * 0.5, height * 0.5 + fontsize*0.5);
			show_text(circlesValues[i].toString());
		}

		// display HPs
		set_source_rgba(0., 0.4, 0.6, 0.8);
		for (var i = 0; i < hps.length; i++) {
			var pointSize = POINT_SIZE * 1.;
			ellipse(hps[i].getXToScreen(width, zoomFactor) - pointSize * 0.5, hps[i].getYToScreen(height, zoomFactor) - pointSize * 0.5, pointSize, pointSize);
			fill();

		}


		// lines between points
		set_source_rgba(linecolor);
		for (var i = 0; i < points.length; i++) {
			if (i == 0) {
				move_to(points[i].getXToScreen(width, zoomFactor), points[i].getYToScreen(height, zoomFactor));
			} else {
				line_to(points[i].getXToScreen(width, zoomFactor), points[i].getYToScreen(height, zoomFactor));
			}
		}
		stroke();

		// paint points
		for (var i = 0; i < points.length; i++) {
			var pointSize = POINT_SIZE * points[i].duration;
			if (idlePoint == i)
				set_source_rgba(pointcolor);
			else
				set_source_rgba(linecolor);
			ellipse(points[i].getXToScreen(width, zoomFactor) - pointSize * 0.5, points[i].getYToScreen(height, zoomFactor) - pointSize * 0.5, pointSize, pointSize);
			fill();
		}

		if (idlePoint != -1) {
			set_source_rgb(0.1, 0.1, 0.1);
			select_font_face("Lato", "normal", "normal");
			set_font_size(12.0);
			move_to(points[idlePoint].getXToScreen(width, zoomFactor) + (points[idlePoint].x > 0.7 ? -100 : 10), points[idlePoint].getYToScreen(height, zoomFactor));
			if (idlePoint == 0) {
				show_text(Math.round(points[idlePoint].getAz()) + "° " + points[idlePoint].getDist().toFixed(3));
			} else {
				show_text(Math.round(points[idlePoint].getAz()) + "° " + points[idlePoint].getDist().toFixed(3) + " " + points[idlePoint].duration.toFixed(2) + "s");
			}
		}
	}
}

function clear()
{
	points = new Array();
	redraw();
}

function onresize(width, height)
{
	box.size(width, width);
}

function getPointIndex(x, y, width, height)
{
	for (var i = 0; i < points.length; i++) {
		var pointSize = POINT_SIZE * points[i].duration;
		if (pointSize < 5)
			pointSize = 5.;
		if (x >= (points[i].getXToScreen(width, zoomFactor) - pointSize * 0.5) && x <= (points[i].getXToScreen(width, zoomFactor) + pointSize * 0.5) && y >= (points[i].getYToScreen(height, zoomFactor) - pointSize * 0.5) && y <= (points[i].getYToScreen(height, zoomFactor) + pointSize * 0.5)) {
			return i;
		}
	}

	return -1;
}

function onidle(x, y, button, mod1, shift, caps, opt, mod2)
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	// x = ((((x / width) - 0.5) * 2) / zoomFactor ) * 0.5 + 0.5;
	// y = ((((y / height) - 0.5) * 2) / zoomFactor ) * 0.5 + 0.5;

	idlePoint =  getPointIndex(x, y, width, height);

	redraw();
}

function onclick(x, y, button, mod1, shift, caps, opt, mod2)
{
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	lastMouse.x = x;
	lastMouse.y = y;

	x = ((((x / width) * 2.) - 1) / zoomFactor );
	y = ((((y / height) * 2.) - 1) / zoomFactor );

	durationPoint = -1;
	if (idlePoint != -1) {
		if (opt) {
			if (idlePoint == 0) {
				durationPoint = -1;
			} else {
				durationPoint = idlePoint;	// ready to edit the sustain Length
			}
		} else if (shift) {
			points.splice(idlePoint, 1);	// remove the point
			idlePoint = -1;
		} else {
			movingPoint = idlePoint;
		}
	} else {
		points[points.length] = new Point(x, y);
		movingPoint = points.length - 1;
		idlePoint = points.length - 1;
	}

	redraw();
}

function onidleout(x, y, button, mod1, shift, caps, opt, mod2)
{
	idlePoint = -1;
}

function ondrag(x, y, button, mod1, shift, caps, opt, mod2)
{
	if (durationPoint != -1 && button && opt) {
		// calculate drag delta...
		var delta = lastMouse.y - y;
		lastMouse.y = y;

		points[durationPoint].AddToDuration(delta * 0.05);
		redraw();
	} else if (movingPoint != -1 && button) {
		var oldPoint = points[movingPoint];
		var width = this.box.rect[2] - this.box.rect[0];
		var height = this.box.rect[3] - this.box.rect[1];

		x = ((((x / width) - 0.5) * 2) / zoomFactor );
		y = ((((y / height) - 0.5) * 2) / zoomFactor );

		points[movingPoint] = new Point(x, y);
		points[movingPoint].duration = oldPoint.duration;
		redraw();
	} else {
		movingPoint = -1;
	}
}

function redraw()
{
	mgraphics.redraw();
}

function dump_to_dict()
{
    var d = new Dict();

    d.set("schema", "ej.trajectory");
    for (var i = 0; i < points.length; i++) {
        d.replace("points::"+ i + "::x", points[i].x);
        d.replace("points::"+ i + "::y", points[i].y);
        d.replace("points::"+ i + "::z", points[i].z);
    }
    outlet(OUTLET_DUMPOUT, "dictionary", d.name);
}