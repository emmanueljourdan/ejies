/*
 *	ej.x2dx by Emmanuel Jourdan, e--j dev Ñ 08 2005
 *	the famous x->dx
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;
import com.cycling74.max.*;

/**
 * extract deltas from a list of values.
 * @author jourdan
 * @see ej
 * @version $Revision: 1.3 $
 */
public class x2dx extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "List" };
	private static final String[] OUTLET_ASSIST = new String[]{ "intervals"};	

	private double[] input = new double[1];
	private double[] resultat = new double[0];
	
	/**
	 * Create x2dx object.
	 * @param args
	 */
	public x2dx(Atom[] args) {
		declareTypedIO("l", "l");
		createInfoOutlet(false);
		
		if (args.length > 0)
			bail("ej.x2dx: no arguments expected!");
			
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	public void bang() {
		calcule();
	}
	
	public void list(double[] args) {
		input = args;
		calcule();
	}
	
	public void set(double[] args) {
		if (args.length < 2)
			error("ej.x2dx: needs at least a list of 2 values!");

		input = args;
	}
		
	private void calcule() {
		resultat = new double[input.length - 1];
		
		
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = input[i+1] - input[i];
		
		outlet(0, resultat);
	}
}