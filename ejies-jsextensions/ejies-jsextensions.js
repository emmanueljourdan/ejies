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
	this.VersNum = "1.55b4";			// Version Number
	this.VersDate = "(01/2006)";	// Version release date

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
	
		for (i = 0; i < a.length; i++) {
			string += " " + a[i];
		}
		string += "\n";
		
		post(string);
		return;
	}
		
	return this;
}
