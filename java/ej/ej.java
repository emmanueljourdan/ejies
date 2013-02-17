/*
 *	ejies Java externals by Emmanuel Jourdan, Ircam — 12 2005
 *
 *	$Revision: 1.14 $
 *	$Date: 2007/05/22 17:33:28 $
 */

package ej;

import com.cycling74.max.*;
import java.util.regex.*;
import java.io.*;

/**

 * @author jourdan
 * @see <a href="http://www.e--j.com">ejies</a>
 * @version $Revision: 1.14 $
 */
public abstract class ej extends MaxObject
{
	private static boolean printedMessage;
	private static String theMessage = "ejies Java externals by Emmanuel Jourdan, Ircam";

	/** print the ejies copyright message once */
	public ej() {
		if (printedMessage == false) {
			dblclick();
			printedMessage = true;
		}
	}
	
	/** display the copyright while you dblclick on a object from the ej package (with version number) */
	public void dblclick() {
		// c'est super amusant, on peut faire un double clic...
		post(theMessage);
		String[] tmp = findVersion();
		
		if (tmp[0] != null && tmp[1] != null)
			post("    version " + tmp[0] + "   ---   " + tmp[1]);

	}

	protected String[] findVersion() {
		/*
		 il faut chercher ceci :
		 VersNum = "1.56b3"; 
		 VersDate = "(04/2006)";
		 */
		
		String theFile = MaxSystem.locateFile("ejies-jsextensions.js");
		String[] versions = new String[2];
	
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
					versions[0] = mVers.replaceAll("$1");
				} else if (mDate.matches()) {
					versions[1] = mDate.replaceAll("$1");
					break;    // normalement la date est après le numbéro de version
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
		return versions;
	}

	/**
	 * test if an Atom is a number
	 * @param a
	 * @return <code>true</code> if it's a number; <code>false</code> otherwise
	 */
	public boolean isNumber(Atom a) {
		if (a.isInt() || a.isFloat())
			return true;
		// else
		return false;
	}

	// redefine with a correct error message
	protected void bang() {
   		error(getClass().getName() +": doesn't understand bang");
	}
	
	protected void inlet(int i) {
  		error(getClass().getName() +": doesn't understand int");
	}

	protected void inlet(float f) {
   		error(getClass().getName() +": doesn't understand float");
	}
	
	protected void list(Atom[] a) {
   		error(getClass().getName() +": doesn't understand list");
	}
	
    protected void anything(String message, Atom args[]) {
    	if (message.equals("list")) {
    		list(args);
    		return;
    	}
   		error(getClass().getName() +": doesn't understand \""+ message + "\"");
   }
	
	
	// faster to debug... accept anything
	/**
	 * redefinition to accept a boolean value as argument
	 * @param b boolean value
	 * */
	public void post(boolean b) {
		if (b)
			super.post("true");
		else
			super.post("false");
	}
	
	/**
	 * redefinition to accept a long as argument
	 * @param l long value
	 */
	public void post(long l) {
		super.post(l + "");
	}
	
	/**
	 * redifinition to accept a float/double value
	 * @param d float/double value
	 */
	public void post(double d) {
		super.post(d + "");
	}
	
	/**
	 * redefinition to accept an atom
	 * @param a the atom
	 */
	public void post(Atom a) {
		super.post(a.toString());
	}
	
	/**
	 * redefinition to accept an array of Atoms
	 * @param a array of atoms
	 */
	public void post(Atom[] a) {
		super.post(a.toString());
	}
	
	/**
	 * redefinition to accept an array of double
	 * @param d array of double
	 */
	public void post(double[] d) {
		String tmp;
		if (d.length > 0) {
			tmp = d[0] + "";
			for (int i = 1; i < d.length; i++) {
				tmp += " " + d[i];
			}
			post(tmp);
		}
	}
}
