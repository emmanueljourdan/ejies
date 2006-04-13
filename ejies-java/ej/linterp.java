/*
 *	ej.linterp by Emmanuel Jourdan, Ircam Ñ 04 2005
 *	simple list interpolator
 *
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/13 13:23:59 $
 */

package ej;

import com.cycling74.max.*;

public class linterp extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "interpolation factor (0. = A -> 1. = B)", "List A", "List B" };
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated list"};	

	private float interpFactor = 0;
	private float[] a;
	private float[] b;
	private float[] resultat;
	
	public linterp()	{
		declareTypedIO("fll", "l");
		
		createInfoOutlet(true);
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				interpFactor = f;
				calcule();
				break;
			case 1:
				a = new float[]{ f };
				break;
			case 2:
				b = new float[]{ f };
				break;
		}
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				error("no list expected here");
				interpFactor = args[0];
				break;
			case 1:
				a = args;
				break;
			case 2:
				b = args;
				break;
		}
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.linterp: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calcule() {
		if (a != null && b != null) {
			resultat = new float[Math.min(a.length, b.length)];

			for (int i = 0; i < resultat.length; i++)
				resultat[i] = b[i] * interpFactor + (1 - interpFactor) * a[i];
			
			outlet(0, resultat);
		}
	}
}