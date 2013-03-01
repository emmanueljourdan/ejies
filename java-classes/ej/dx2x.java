/*
 *	ej.x2x by Emmanuel Jourdan, e--j dev Ñ 08 2005
 *	the famous dx->x
 *
 *	$Revision: 1.4 $
 *	$Date: 2006/11/02 17:28:37 $
 */

package ej;
import com.cycling74.max.*;

/**
 * take a list of intervals and generate a new list with a new origin
 * @author jourdan
 * @see ej.x2dx
 * @see ej
 * @version $Revision: 1.4 $
 */
public class dx2x extends ejies {
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
	 * @param i if the value arrives in the rightmost inlet, it specify the origin. 
	 * <BR><i>if the value arrives in the leftmost inlet, it specify the first interval <b>(not the normal use)</b> </i>
	 */
	public void inlet(int i) {
		inlet((float) i);
	}

	/**
	 * specify the origin of the serie 
	 * @param f if the value arrives in the rightmost inlet, it specify the origin. 
	 * <BR><i>if the value arrives in the leftmost inlet, it specify the first interval <b>(not the normal use)</b> </i>
	 */
	public void inlet(float f) {
		switch(getInlet()) {
		case 0:
			intervals = new double[] { f };
			calcule();
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