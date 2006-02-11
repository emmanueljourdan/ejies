/*
 *	ejies Java externals by Emmanuel Jourdan, Ircam Ñ 12 2005
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/02/11 19:32:13 $
 */

package ej;
import com.cycling74.max.*;

public abstract class ej extends MaxObject
{
	private static boolean printedMessage;
	private static String theMessage = "ejies Java externals by Emmanuel Jourdan, Ircam";
	
	public void ej() {
		if (printedMessage == false) {
			post(theMessage);
			printedMessage = true;
		}
	}
	
	public void dblclick() {
		// c'est super amusant, on peut faire un double clic...
		post(theMessage);
	}
}