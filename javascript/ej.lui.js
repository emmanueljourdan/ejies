/*
	ej.lui.js by Emmanuel Jourdan, e--j dev — 09 2004
	lui means Load jsUI...

	$Revision: 1.9 $
	$Date: 2008/03/10 11:41:00 $
 */

// global code
inlets = 1;
outlets = 1;
setinletassist(0, "Forget me please :-)");
setoutletassist(0, "version number");


if ( jsarguments[1] ) {
	if (jsarguments[1] != "noUI")
		wait_and_process();
} else
	ejies.error(this, "missing argument!");

if (max.version < 455)
	ejies.error(this, "MaxMSP 4.5.5 or higher is required.");

function wait_and_process()
{
	tsk = new Task(replace_js_by_jsui, this);
	tsk.interval = 200;
	tsk.repeat(1, 50);
}

function replace_js_by_jsui()
{
	// create "unique" name
	var TempEjLuiJs = "ej.lui-";
	var TempDate = new Date();
	TempEjLuiJs += TempDate.getUTCDay() + 1;
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
	// ceci est utilisé dans ejies-overview
	outlet(0, ejies.VersNum);
}

function testinstallation()
{
	var fichier = new File("C74:/jsextensions/ejies-jsextensions.js", "read"); 
	if (fichier.isopen) {
		fichier.close();
		return;
	}
	
	post("• WARNING Ejies are not properly installed!\n");
	post("Make sure the ejies-jsextensions.js is installed in the \"C74:/jsextensions\" folder!\n");
}

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");