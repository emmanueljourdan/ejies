/*
 *	ej.x2x by Emmanuel Jourdan, Ircam Ñ 08 2005
 *	the famous dx->x
 *
 *	$Revision: 1.2 $
 *	$Date: 2006/08/11 11:06:53 $
 */

package ej;
import com.cycling74.max.*;

/**
 * dx2x:
 * take a list of intervals and generate a new list with a new origin
 * @author jourdan
 * @version $Revision: 1.2 $
 * @see ej.x2dx
 * @see ej
 */
public class dx2x extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List of intervals", "origin" };
	private static final String[] OUTLET_ASSIST = new String[]{ "result"};	

	private double origine;
	private double[] intervals = new double[0];
	private double[] resultat = new double[0];
	
	/**
	 * create a dx2x object 
	 */
	public dx2x() {
		this(0);
	}
	
	/**
	 * create a dx2x object with specified origin
	 * @param f specify the origin value
	 */
	public dx2x(float f) {
		declareTypedIO("lf", "l");
		createInfoOutlet(false);
		
		origine = f;
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	/**
	 * re-trigger the calculation
	 */
	public void bang() {
		calcule();
	}
	
	/**
	 * specify the origin of the serie 
	 * @param f if the value arrives in the rightmost inlet, it specify the origin. 
	 * <i>if the value arrives in the leftmost inlet, it specify the first interval <b>(not the normal use)</b> </i>
	 */
	public void inlet(float f) {
		switch(getInlet()) {
		case 0:
			intervals = new double[] { f };
			break;
		case 1:
			origine = f;
			break;
		}
	}

	/**
	 * set the list of intervals, and trigger the calculation
	 * @param args the list of intervals
	 */
	public void list(double[] args) {
		switch(getInlet()) {
		case 0:
			intervals = args;
			calcule();
			break;
		case 1:
			origine = args[0];
			break;
		}
	}

	/**
	 * set the list of intervals whithout triggering the calculation
	 * @param args the list of intervals
	 */
	public void set(double[] args) {
		switch(getInlet()) {
		case 0:
			intervals = args;
			break;
		case 1:
			origine = args[0];
			break;
		}
	}
	
	private void calcule() {
		resultat = new double[intervals.length + 1];
		
		resultat[0] = origine;
		for (int i = 0; i < intervals.length; i++)
			resultat[i+1] = resultat[i] + intervals[i];
		
		outlet(0, resultat);
	}
}