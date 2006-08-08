/*
 *	ej.lquant by Emmanuel Jourdan, Ircam Ñ 08 2005
 *	Quantize a list
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/08/08 14:54:28 $
 */

package ej;
import com.cycling74.max.*;

public class lquant extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List to be quantized", "Quantzing list"};
	private static final String[] OUTLET_ASSIST = new String[]{ "Quantized list"};	

	private double[] resultat = new double[0];
	private double[] quantFactors;
	private double smallestInterval, smallestVal, interval, rounded;
	private boolean isErrorDisplayed = false;
	
	public lquant() {
		this(new double[] { 1. });
	}
	
	public lquant(double[] args) {
		declareTypedIO("al", "l");
		createInfoOutlet(false);
		
		quantFactors = args;
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				resultat = new double[] { f };
				calcule();
				break;
			case 1:
				quantFactors = new double[] { f };
				break;
		}
	}

	public void list(double[] args) {
		switch (getInlet()) {
			case 0:
				resultat = args;
				calcule();
				break;
			case 1:
				quantFactors = args;
				break;
		}
	}
	
	public void set(double[] args) {
		switch (getInlet()) {
		case 0:
			resultat = args; break;
		case 1:
			quantFactors = args; break;
		}
	}
	
	public void getquant() {
		post("ici");
		post(quantFactors);
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.lquant: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	synchronized private void calcule() {
		for (int i = 0; i < resultat.length; i++) {
			resultat[i] = calculNearest(resultat[i]);
		}
		
		outlet(0, resultat);
	}
	
	synchronized private double calculNearest(double val) {
		smallestInterval = Double.POSITIVE_INFINITY;
		smallestVal = val;
		
		for (int i = 0; i < quantFactors.length; i++) {
			if (quantFactors[i] != 0) {
				rounded = quantFactors[i] == 1 ? val : doRounding(val, 1 / quantFactors[i]);
	
				interval = Math.abs(val - rounded);
				if (Math.abs(val - rounded) < smallestInterval) {
					smallestVal = rounded;
					smallestInterval = interval;
				}
			} else {
				if (! isErrorDisplayed) {
					error("ej.lquant: quantisation with 0? What's the hell do you expect?");
					isErrorDisplayed = true;
				}
			}
		}

		return smallestVal;
	}
	
	private double doRounding(double val, double roundingVal) {
		return (Math.round(val*roundingVal) / roundingVal);
	}
}