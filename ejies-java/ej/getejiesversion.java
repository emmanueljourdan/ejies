/*
 *	ej.getejiesversion by Emmanuel Jourdan, Ircam Ñ 05 2007
 *
 *	$Revision: 1.2 $
 *	$Date: 2007/05/25 16:38:47 $
 */

package ej;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

import com.cycling74.max.*;

/**
 * Returns the current installed version and the current available version (Internet connection).
 * @author jourdan
 * @see ej
 */
public class getejiesversion extends ej {
	private static final String[] INLET_ASSIST = new String[] { "bang"};
	private static final String[] OUTLET_ASSIST = new String[]{ "Current installed version", "Current available version" };

	/**
	 * create a getejiesversion object
	 */
	public getejiesversion()	{
		declareIO(1, 2);
		
		createInfoOutlet(false);
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	/**
	 * returns installed version number and current available version
	 */
	public void bang()  {
		MaxSystem.deferLow(new Executable(){
			public void execute() {
		      	try {
		      		String tmp;
		      		URL url = new URL("http://www.e--j.com/ejies/current.txt");
		      		BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
		      		if ((tmp = br.readLine()) != null)
		    			outlet(1, tmp);
				} catch (MalformedURLException e) {
				} catch (IOException e) {
					post("¥ warning: Unable to get the version number from ej's website. Check your internet connection.");
					outlet(1, "need internet");
				}
		
				outlet(0, findVersion()[0]); // current installed version (defined in ej.class)
			}
		});
    }
}