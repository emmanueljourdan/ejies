/*
 *	ej.x2dx by Emmanuel Jourdan, Ircam Ñ 08 2005
 *	the famous x->dx
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/08/08 16:39:59 $
 */

package ej;
import com.cycling74.max.*;

public class x2dx extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List" };
	private static final String[] OUTLET_ASSIST = new String[]{ "intervals"};	

	private double[] input = new double[1];
	private double[] resultat = new double[0];
	
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
	
	public void inlet(float f) {
		error("ej.x2dx: needs at least a list of 2 values!");
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
		
	public void anything(String s, Atom[] args) {
		error("ej.x2dx: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calcule() {
		resultat = new double[input.length - 1];
		
		
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = input[i+1] - input[i];
		
		outlet(0, resultat);
	}
}