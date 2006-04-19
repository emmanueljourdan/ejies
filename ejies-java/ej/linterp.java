/*
 *	ej.linterp by Emmanuel Jourdan, Ircam — 04 2005
 *	simple list interpolator
 *
 *
 *	$Revision: 1.5 $
 *	$Date: 2006/04/19 17:49:11 $
 */

package ej;

import com.cycling74.max.*;

public class linterp extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "interpolation factor (0. = A -> 1. = B)", "List A", "List B" };
	private static final String[] INLET_ASSIST_QUAD = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D" };
	private static final String[] INLET_ASSIST_CUBE = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D", "List E", "List F", "List G", "List H" };
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated list"};	

	private float interpFactor[] = new float[]{ 0f };
	private float[] a;
	private float[] b;
	private float[] c;
	private float[] d;
	private float[] e;
	private float[] f;
	private float[] g;
	private float[] h;
	private float[] resultat;

	private byte mode = 0;
	private boolean autotrigger = false;
	
	public linterp(String args)	{
		if (args.equals("quad")) {
			this.mode = 1;
			declareTypedIO("lllll", "l");
		} else if (args.equals("cube")) {
			this.mode = 2;
			declareTypedIO("lllllllll", "l");
		} else {
			this.mode = 0; // mais on le savait déjà
			declareTypedIO("fll", "l");
		}
		
		declareAttribute("autotrigger");
		createInfoOutlet(false);
		
		checkInletAssistance(); // choix de l'assistance en fonction du mode...
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void checkInletAssistance() {
		switch (mode) {
			case 0:
				setInletAssist(INLET_ASSIST);
				break;
			case  1:
				setInletAssist(INLET_ASSIST_QUAD);
				break;
			case 2:
				setInletAssist(INLET_ASSIST_CUBE);
				break;
		}
	}
	
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				interpFactor = new float[] { f, f, f };
				calcule();
				return;// car c'est déclenché aussi à la fin de la méthode
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
		
		if (autotrigger) calcule();
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				if (mode > 0) {
					setInterpFactor(args);
					calcule();
					return;
				} else {
					error("no list expected here (in this mode)");
					setInterpFactor(args);
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
			case 5:
				e = args;
				break;
			case 6:
				f = args;
				break;
			case 7:
				g = args;
				break;
			case 8:
				h = args;
				break;
		}
		
		if (autotrigger) calcule();
	}
	
	private void setInterpFactor(float[] args) {
		/*
		 * on met toujours trois éléments ans le tableau
		 * comme ça on a pas de problème quand on change de mode...
		 */
		switch (args.length) {
			case 1:
				interpFactor = new float[]{ args[0], args[0], args[0] };
				break;
			case 2:
				interpFactor = new float[]{ args[0], args[1], 0f};
				break;
			default:
				interpFactor = new float[]{ args[0], args[1], args[2] };
		}
	}
	
	private void calcule() {
		int i;
		
		if (mode == 0) {
			if (a != null && b != null) {
				resultat = new float[Math.min(a.length, b.length)];
				
				for (i = 0; i < resultat.length; i++)
					resultat[i] = b[i] * interpFactor[0] + (1 - interpFactor[0]) * a[i];
			}
		} else if (mode == 1) {
			if (a != null && b != null && c != null && d != null) {
				resultat = new float[Math.min(Math.min(a.length, b.length), Math.min(c.length, d.length))];

				for (i = 0; i < resultat.length; i++) {
					resultat[i] =
						a[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) + 
						b[i] * interpFactor[0] * (1 - interpFactor[1]) +
						c[i] * (1 - interpFactor[0]) * interpFactor[1] +
						d[i] * interpFactor[0] * interpFactor[1];
					
				}
			}
		} else {
			if (a != null && b != null && c != null && d != null &&	e != null && f != null && g != null && h != null) {
				resultat = new float[Math.min(
											  Math.min(Math.min(a.length, b.length), Math.min(c.length, d.length)),
											  Math.min(Math.min(e.length, f.length), Math.min(g.length, h.length))
											  )];

				for (i = 0; i < resultat.length; i++) {
					resultat[i] =
						a[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * (1 - interpFactor[2]) + 
						b[i] * interpFactor[0] * (1 - interpFactor[1]) * (1 - interpFactor[2]) +
						c[i] * (1 - interpFactor[0]) * interpFactor[1] * (1 - interpFactor[2]) +
						d[i] * interpFactor[0] * interpFactor[1] * (1 - interpFactor[2]) +
						e[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * interpFactor[2] + 
						f[i] * interpFactor[0] * (1 - interpFactor[1]) * interpFactor[2] +
						g[i] * (1 - interpFactor[0]) * interpFactor[1] * interpFactor[2] +
						h[i] * interpFactor[0] * interpFactor[1] * interpFactor[2];
				}
			}
				
		}

		outlet(0, resultat);
	}
}