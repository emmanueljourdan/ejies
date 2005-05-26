/*
	ejies-jsextensions.js by Emmanuel Jourdan, Ircam - 02 2005
	"shared library" used for the ejies JavaScripts
	Pour l'instant, ça ne sert à rien... mais à l'avenir... j'en ferai sans doute un usage intensif :-)
*/


function EjiesUtils()
{ 
	this.VersNum = "1.51";			// Version Number
	this.VersDate = "(04/2005)";	// Version release date

	// clip method
	this.clip = function(x, min, max)
	{
		return Math.min(Math.max(x,min),max);
	}
		
	return this;
}