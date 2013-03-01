/*
	ej.route.js by Emmanuel Jourdan, e--j dev - 09 2004
	route data types (work for signal)

	$Revision: 1.5 $
	$Date: 2008/03/10 11:41:00 $
 */

// global code
inlets = 1;
outlets = 6;
setinletassist(0,"data type to be tested");
setoutletassist(0,"bang");
setoutletassist(1,"int");
setoutletassist(2,"float");
setoutletassist(3,"list");
setoutletassist(4,"symbol");
setoutletassist(5,"signal~ (dac must be on)");

function bang()
{
	outlet(0, messagename);
}
bang.immediate = 1;

function msg_int(v)
{
	outlet(1, v);
}
msg_int.immediate = 1;

function msg_float(v)
{
	outlet(2, v);
}
msg_float.immediate = 1;

function list()
{
	outlet(3, arrayfromargs(messagename, arguments));
}
list.immediate = 1;

function signal()
{
	outlet(5, arrayfromargs(messagename, arguments));
}

// this must be symbol
function anything()
{
	outlet(4, arrayfromargs(messagename, arguments));
}
anything.immediate = 1;

// Pour la compilation automatique
// autowatch = 1;
// post("Compiled...\n");

