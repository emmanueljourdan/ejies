/*
 *	ejies Java externals by Emmanuel Jourdan, Ircam Ñ 12 2005
 *
 *	$Revision: 1.8 $
 *	$Date: 2006/08/08 14:46:10 $
 */

package ej;

import com.cycling74.max.*;
import java.util.regex.*;
import java.io.*;

public abstract class ej extends MaxObject
{
	private static boolean printedMessage;
	private static String theMessage = "ejies Java externals by Emmanuel Jourdan, Ircam";
	
	public ej() {
		if (printedMessage == false) {
			dblclick();
			printedMessage = true;
		}
	}
	
	public void dblclick() {
		// c'est super amusant, on peut faire un double clic...
		post(theMessage);
		findVersion();
	}

	private void findVersion() {
		/*
		 il faut chercher ceci :
		 VersNum = "1.56b3"; 
		 VersDate = "(04/2006)";
		 */
		
		String theFile = MaxSystem.locateFile("ejies-jsextensions.js");
		String versionNumber = null;
		String versionDate = null;
	
		BufferedReader inputFile = null;
		try {   
			inputFile = new BufferedReader(new FileReader(theFile));
			String line = null;
			Pattern pVers = Pattern.compile(".*VersNum = \\\"(.*)\\\".*");
			Pattern pDate = Pattern.compile(".*VersDate = \\\"\\((\\d*/\\d*).*"); 
			Matcher mVers, mDate;
	
			while((line = inputFile.readLine()) != null) {
				mVers = pVers.matcher(line);
				mDate = pDate.matcher(line);
				
				if (mVers.matches()) {
					versionNumber = mVers.replaceAll("$1");
				} else if (mDate.matches()) {
					versionDate = mDate.replaceAll("$1");
					break;    // normalement la date est aprs le numbŽro de version
				}
			}
		} catch (Exception e) { /* l'utilisateur s'en fiche */ } 
		finally {
			try {
				if (inputFile != null)
					inputFile.close();
			}
			catch (IOException e) { /* pareil */ }
		}
	
		if (versionNumber != null && versionDate != null)
			post("    version " + versionNumber + "   ---   " + versionDate);
	}

	/*
	 * Tools
	 */
	public boolean isNumber(Atom a) {
		if (a.isInt() || a.isFloat())
			return true;
		else
			return false;
	}
	
	// faster to debug... accept anything
	public void post(boolean b) {
		if (b)
			super.post("true");
		else
			super.post("false");
	}
	
	public void post(long l) {
		super.post(l + "");
	}
	
	public void post(double d) {
		super.post(d + "");
	}
	
	public void post(Atom[] a) {
		super.post(a.toString());
	}
	
	public void post(double[] d) {
		String tmp;
		if (d.length > 1) {
			tmp = d[0] + "";
			for (int i = 1; i < d.length; i++) {
				tmp += " " + d[i];
			}
			post(tmp);
		}
	}
}
