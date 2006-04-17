/*
 *	ej.linterp by Emmanuel Jourdan, Ircam — 04 2005
 *	simple list interpolator
 *
 *
 *	$Revision: 1.2 $
 *	$Date: 2006/04/17 18:32:27 $
 */

package ej;

import com.cycling74.max.*;

public class linterp extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "interpolation factor (0. = A -> 1. = B)", "List A", "List B" };
	private static final String[] INLET_ASSIST_QUAD = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D" };
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated list"};	

	private float interpFactor[] = new float[]{ 0f };
	private float[] a;
	private float[] b;
	private float[] c;
	private float[] d;
	private float[] resultat;

	private boolean isQuad = false;
	
	public linterp(String args)	{
		if (args.equals("quad")) {
			this.isQuad = true;
			declareTypedIO("lllll", "l");
		} else {
			this.isQuad = false; // mais on le savait déjà
			declareTypedIO("fll", "l");
		}
		
		createInfoOutlet(false);
		
		checkInletAssistance();
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void checkInletAssistance() {
		if (isQuad)
			setInletAssist(INLET_ASSIST_QUAD);
		else
			setInletAssist(INLET_ASSIST);
	}
	
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				interpFactor = new float[] { f, f };
				calcule();
				break;
			case 1:
				a = new float[]{ f };
				break;
			case 2:
				b = new float[]{ f };
				break;
			case 3:
				c = new float[]{ f };
				break;
			case 4:
				d = new float[]{ f };
				break;
		}
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				if (isQuad) {
					interpFactor = args;
					calcule();
				} else {
					error("no list expected here");
					interpFactor = new float[]{ args[0] };
				}
				break;
			case 1:
				a = args;
				break;
			case 2:
				b = args;
				break;
			case 3:
				c = args;
				break;
			case 4:
				d = args;
				break;
		}
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.linterp: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
	
	private void calcule() {
		if (isQuad) {
			if (a != null && b != null && c != null && d != null) {
				resultat = new float[Math.min(Math.min(a.length, b.length), Math.min(c.length, d.length))];
			
				post(resultat.length + "");
				for (int i = 0; i < resultat.length; i++)
					resultat[i] = b[i] * interpFactor[0] + (1 - interpFactor[0]) * a[i] + d[i] * interpFactor[1] + (1 - interpFactor[1]) * c[i];
			}
		} else {
			if (a != null && b != null) {
				resultat = new float[Math.min(a.length, b.length)];

				for (int i = 0; i < resultat.length; i++)
					resultat[i] = b[i] * interpFactor[0] + (1 - interpFactor[0]) * a[i];
			}
		}

		outlet(0, resultat);
	}
}