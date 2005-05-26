/*
	ej.lui.js by Emmanuel Jourdan, Ircam Ñ 09 2004
	lui means Load jsUI...
 */

// global code
var ejies = new EjiesUtils();
inlets = 1;
outlets = 1;
setinletassist(0, "Forget me please :-)");
setoutletassist(0, "version number");


if ( jsarguments[1] ) {
	if (jsarguments[1] != "noUI")
		wait_and_process();
} else
	post("¥ error: ej.lui.js: missing argument!\n");

if (max.version < 454)
	post("¥ error: ej.lui.js required MaxMSP 4.5.4 or higher.");

function wait_and_process()
{
	tsk = new Task(replace_js_by_jsui, this);
	tsk.interval = 200;
	tsk.repeat(1, 50);
}

function replace_js_by_jsui()
{
	// create "unique" name
	var TempEjLuiJs = "temp-";
	var TempDate = new Date();
	TempEjLuiJs += TempDate.getUTCFullYear();
	TempEjLuiJs += TempDate.getUTCDay();
	TempEjLuiJs += TempDate.getUTCHours();
	TempEjLuiJs += TempDate.getUTCMinutes();
	TempEjLuiJs += TempDate.getUTCSeconds();
	
	this.box.varname = TempEjLuiJs;
	
	if (tsk.iterations == 1) {
		this.patcher.script("replace", TempEjLuiJs, "user", "jsui", box.rect[0],box.rect[1],64, 64, 1, 0, 0, jsarguments[1]);
	}
}

function getversion()
{
	// ceci est utilisŽ dans ejies-overview
	outlet(0, ejies.VersNum);
}

function testinstallation()
{
	var fichier = new File("C74:/jsextensions/ejies-jsextensions.js", "read"); 
	if (fichier.isopen) {
		fichier.close();
		return;
	}
	
	post("WARNING: Ejies are not properly installed!\n");
	post("Make sure the ejies-extensions.js is installed in the \"C74:/jsextensions\" folder!\n");
}

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");