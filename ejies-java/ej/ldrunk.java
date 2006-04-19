/*
 *	ej.ldrunk by Emmanuel Jourdan, Ircam Ñ 04 2005
 *	drunk for list
 *
 *
 *	$Revision: 1.4 $
 *	$Date: 2006/04/19 14:13:32 $
 */

package ej;

import com.cycling74.max.*;

public class ldrunk extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "clean list", "Random range (float/list)", "random step (± step / 2)", "probability of random (%)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Drunked list"};	

	private float[] range = new float[]{ 0, 127 };
	private float step = 0;
	private float proba = 100;
	private float realProba = 1f;
	private boolean ignore0 = false;
	private float[] resultat = new float[0];
	
	public ldrunk(float maxRange, float stepSize) {
		this(0f, maxRange, stepSize, 100f);
	}

	public ldrunk(float minRange, float maxRange, float stepSize)	{
		this(minRange, maxRange, stepSize, 100f);
	}

	public ldrunk(float minRange, float maxRange, float stepSize, float proba)	{
		declareTypedIO("alff", "l");
		createInfoOutlet(true);
		
		setRange(new float[]{ minRange, maxRange });
		setStep(stepSize);
		setProba(proba);
		
		declareAttribute("range", null, "setRange");
		declareAttribute("step", null, "setStep");
		declareAttribute("proba", null, "setProba");
		declareAttribute("ignore0");
		
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
				setStep(f);
				break;
			case 3:
				setProba(f);
				break;
		}
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				resultat = args;
//				doRandom();
				break;
			case 1:
				setRange(args);
				break;
			default:
				error("ej.ldrunk: this inlet expects int/float");
		}
	}
		
	private void setRange(float[] args) {
		if (args.length > 1) {
			range[0] = Math.min(args[0], args[1]);
			range[1] = Math.max(args[0], args[1]);
			setStep(step);
		} else {
			setRange(new float[]{ 0 , Math.abs(args[0]) });
		}
	}
	
	private void setStep(float f) {
		step = Math.max(0f, Math.min(f, range[1] - range[0]));
	}
	
	private void setProba(float f) {
		proba = Math.max(0f, Math.min(f, 100f));
		realProba = proba * 0.01f;
	}
	
	private void doRandom() {
		// ± (step size / 2) sur chaque valeur...
		for (int i = 0; i < resultat.length; i++) {
			if (ignore0) {
				if (resultat[i] != 0f)
					makeAlea(i);
			} else
				makeAlea(i);
		}
		
		outlet(0, resultat);
	}

	private void makeAlea(int i) {
		if (Math.random() < realProba) {
			resultat[i] = resultat[i] + (float) ((Math.random() - 0.5) * step);
			
			// repliement si c'est en dehors du range
			if (resultat[i] < range[0])
				resultat[i] = Math.min((range[0] - resultat[i]) + range[0], range[1]);
			else if (resultat[i] > range[1])
				resultat[i] = Math.max((range[1] - resultat[i]) + range[1], range[0]);
		}
	}
	
}