/*
 *	ej.x2x by Emmanuel Jourdan, Ircam Ñ 08 2005
 *	the famous dx->x
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/08/08 16:39:59 $
 */

package ej;
import com.cycling74.max.*;

public class dx2x extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List of intervals", "origin" };
	private static final String[] OUTLET_ASSIST = new String[]{ "result"};	

	private double origine;
	private double[] intervals = new double[0];
	private double[] resultat = new double[0];
	
	public dx2x() {
		this(0);
	}
	
	public dx2x(float f) {
		declareTypedIO("lf", "l");
		createInfoOutlet(false);
		
		origine = f;
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	public void bang() {
		calcule();
	}
	
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
		
	public void anything(String s, Atom[] args) {
		error("ej.x2dx: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calcule() {
		resultat = new double[intervals.length + 1];
		
		resultat[0] = origine;
		for (int i = 0; i < intervals.length; i++)
			resultat[i+1] = resultat[i] + intervals[i];
		
		outlet(0, resultat);
	}
}