/*
 *	ej.getejiesversion by Emmanuel Jourdan, e--j dev Ñ 05 2007
 *
 *	$Revision: 1.3 $
 *	$Date: 2007/05/30 14:35:42 $
 */

package ej;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Returns the current installed version and the current available version (Internet connection).
 * @author jourdan
 * @see ej
 */
public class getejiesversion extends ejies {
	private static final String[] INLET_ASSIST = new String[] { "bang"};
	private static final String[] OUTLET_ASSIST = new String[]{ "Current available version", "Current installed version" };

	/**
	 * create a getejiesversion object
	 */
	public getejiesversion()	{
		declareIO(1, 1);
		
		createInfoOutlet(false);
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	/**
	 * returns installed version number and current available version
	 */
	public void bang()  {
		Thread t = new Thread (new Runnable() {
			public void run() {
		      	try {
		      		String tmp;
		      		URL url = new URL("http://www.e--j.com/ejies/current.txt");
		      		BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
		      		if ((tmp = br.readLine()) != null)
		    			outlet(0, tmp);
				} catch (MalformedURLException e) {
				} catch (IOException e) {
					post("¥ warning: Unable to get the version number from ej's website. Check your internet connection.");
					outlet(0, "need internet");
				}
            }
        } );
        t.start(); 
   }
}