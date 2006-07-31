/*
	ejies-jsextensions.js by Emmanuel Jourdan, Ircam - 02 2005
	"shared library" used for the ejies JavaScripts
	Pour l'instant, ça ne sert à rien... mais à l'avenir... j'en ferai sans doute un usage intensif :-)
*/

var ejies = new EjiesUtils();
post("ejies", ejies.VersNum, ejies.VersDate);
post("\n     by Emmanuel Jourdan\, Ircam\n");

function EjiesUtils()
{ 
	this.VersNum = "1.56b11";		// Version Number
	this.VersDate = "(06/2006)";	// Version release date

	// clip method
	this.clip = function(x, min, max)
	{
		return Math.min(Math.max(x,min),max);
	}
	
/* 	perror: il faut mettre une fonction perror à l'intérieur de chaque */
	this.perror = function(a)
	{
		this.scriptname;
		
		var string = "• error: " + this.scriptname + ":";
		var i;
		post("nombre d'arguments pour la function perror : ", a.length, "\n");
		for (i = 0; i < a.length; i++) {
			string += " " + a[i];
		}
		string += "\n";
		
		post(string);
		return;
	}
		
	return this;
}

function error(x)
{
	var errorString = "• error: " + x.jsarguments[0] + ":";
	
	if (arguments.length > 2 && typeof(arguments[1]) == "string" && arguments[1].length == 1)
		errorString += " " + a;
	else {
		for (var i = 1; i < arguments.length; i++)
			errorString += " " + a[i];
	}
	
	post(errorString + "\n");
}

/*
 *	Attribute parsing
 */
function ej_attr_args_offset(a)
{
	var i;

	// walk and find first string starting with @
	// ignore first argument which is the script name
	for (i = 1; i < a.length; i++) {
		// String.prototype.isPrototypeOf(a[i]) doesn't work...
		if (a[i] && typeof(a[i]) == "string" && (a[i].toString().charAt(0)=="@")) {
			return i;
		}
	}
	return i;
}

// x argument is passed the "this" object
function ej_attr_args_process(x,a)
{
	var i;
	var attrname = null;
	var attrargs = null;
	var tmpString;
	var firstAttribute = ej_attr_args_offset(a);

	
	// walk and find strings starting with @
	// call functions with attr names followed by any arguments
	for (i = firstAttribute; i < a.length;i ++) {
		// Function.prototype.isPrototypeOf("this." + a[i]) doesn't work here either
		if (a[i] && typeof(a[i]) == "string" && Function.prototype.isPrototypeOf(x[a[i].slice(1)]) && (a[i].toString().charAt(0)=="@")) {

			// if there's a pending, execute with arguments, or give
			// an error if there's no corresponding setter function
			ej_attr_process_pending(x,attrname,attrargs);

			// grab new attrname, stripping '@'
			attrname = a[i].slice(1); // works because a[i] is a string
			
			// reset arguments
			attrargs = null;
		} else {
			// this is an attribute argument, store in our arguments array
			if (attrargs == null)
				attrargs = new Array();

			if (a[i].toString().charAt(0) != "@") {
				attrargs[attrargs.length] = a[i];
			} else {
				post("js: attribute " + a[i].slice(1) + " is not a valid attribtue argument\n");
				return;
			}
			
		}	
	}

	// process pending to handle last attribute argument
	ej_attr_process_pending(x,attrname,attrargs);

	// quite ugly, delete the attributes from the jsarguments array
	x.jsarguments.length = firstAttribute;
}

function ej_attr_process_pending(x,attrname,attrargs)
{
	if (attrname)
	{
		if (x[attrname] && Function.prototype.isPrototypeOf(x[attrname]))
		{
			// here you might need to do a little more work to determine the
			// way that you need to pass the attribute arguments. might requre
			// some trickiness or a brute force switch statement based on
			// attrargs.length or something, but should give you the basic idea.
			
			if (attrargs != null)
				x[attrname].apply(x, attrargs); // unroll the arguments
		} else {
			post("js: attribute " + attrname + " is not a valid attribtue argument\n");
		}
	}
}
