//
//  ejies.java
//  
//
//  Created by Emmanuel Jourdan on 28/12/05.
//  Copyright 2005 Ircam. All rights reserved.
//

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