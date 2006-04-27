/*
 *	ejies Java externals by Emmanuel Jourdan, Ircam Ñ 12 2005
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/27 16:55:25 $
 */

package ej;
import java.io.BufferedReader;	//utilisé pour la lecture du fichier
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

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
			// quelque chose suivi de VersNum = {backréférence}
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
					break;    // normalement la date est apr?s le numbŽro de version
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
		// else fait rien puisqu'on a déjà affiché la ligne ejies machin truc
	}
}