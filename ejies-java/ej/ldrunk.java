/*
 *	ej.ldrunk by Emmanuel Jourdan, Ircam Ñ 04 2005
 *	drunk for list
 *
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/17 18:39:29 $
 */

package ej;

import com.cycling74.max.*;

public class ldrunk extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "clean list", "Random range (float/list)", "Step size" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Drunked"};	

	private float[] range = new float[]{ 0, 127 };
	private float step = 0;
	private float[] resultat = new float[0];
	
	public ldrunk(float maxRange, float stepSize) {
		this(0, maxRange, stepSize);
	}
	
	public ldrunk(float minRange, float maxRange, float stepSize)	{
		declareTypedIO("aff", "l");
		createInfoOutlet(true);
		
		setRange(new float[]{ minRange, maxRange });
		this.step = stepSize;
		
		declareAttribute("range", null, "setRange");
		declareAttribute("step");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void bang() {
		if (resultat.length > 0)
			doRandom();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				resultat = new float[]{ f };
				doRandom();
				break;
			case 1:
				setRange(new float[]{ 0 , Math.abs(f) });
				break;
			case 2:
				step = Math.abs(f);
				break;
		}
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				resultat = args;
				doRandom();
				break;
			case 1:
				setRange(args);
				break;
			default:
				error("ej.ldrunk: step size inlet expects int/float");
		}
	}
	
	public void set(float[] args) {
		if (getInlet() == 0) {
			resultat = args;
		}
	}
	
	private void setRange(float[] args) {
		if (args.length > 1) {
			range[0] = Math.min(args[0], args[1]);
			range[1] = Math.max(args[0], args[1]);
		}
	}
	
	private void doRandom() {
		// + ou - step size sur chaque valeur...
		for (int i = 0; i < resultat.length; i++) 
			resultat[i] = (float) Math.min(range[1], Math.max(range[0], resultat[i] + ((Math.random() * 2 - 1) * step)));
		
		outlet(0, resultat);
	}
}