/*
 *	ejies Java externals by Emmanuel Jourdan, Ircam Ñ 12 2005
 *
 *	$Revision: 1.2 $
 *	$Date: 2006/01/09 18:39:52 $
 */

package ej;
import com.cycling74.max.*;

/** 
* ListProcessor - a shell for list processing classes
* 
* created on 6-Apr-2004
* @author bbn 
*/

public abstract class ej extends MaxObject
{
	private static boolean printedMessage;
	
	ej() {
		if (printedMessage == false) {
			post("ejies Java externals by Emmanuel Jourdan, Ircam");
			printedMessage = true;
		}
	}
}