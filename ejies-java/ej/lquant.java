/*
 *	ej.lquant by Emmanuel Jourdan, Ircam Ñ 08 2005
 *	Quantize a list
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/08/11 11:06:21 $
 */

package ej;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;

import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

public class lquant extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List to be quantized", "Quantzing list"};
	private static final String[] OUTLET_ASSIST = new String[]{ "Quantized list"};	

	private float[] resultat = new float[0];
	private float[] quantFactors;
	private double smallestInterval, rounded, interval;
	private float smallestVal;
	private boolean isErrorDisplayed = false;
	private String buf_name = null;
	private int outputmode = 0;
	
	
	public lquant() {
		this(new float[] { 1f });
	}
	
	public lquant(float[] args) {
		declareTypedIO("al", "l");
		createInfoOutlet(false);
		
		setQuantFactors(args);

		declareAttribute("outputmode", null, "setMode");
		declareAttribute("buf_name");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void setMode(int i) {
		if (i >= 0 && i <= 2)
			outputmode = i;
		else
			outputmode = 0;
	}
	
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				resultat = new float[] { f };
				calcule();
				break;
			case 1:
				quantFactors = new float[] { Math.abs(f) };
				break;
		}
	}

	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				resultat = args;
				calcule();
				break;
			case 1:
				setQuantFactors(args);
				break;
		}
	}
	
	public void set(float[] args) {
		switch (getInlet()) {
		case 0:
			resultat = args; break;
		case 1:
			setQuantFactors(args); break;
		}
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.lquant: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	synchronized private void calcule() {
		for (int i = 0; i < resultat.length; i++) {
			resultat[i] = calculNearest(resultat[i]);
		}
		
		doOutput();
	}
	
	synchronized private float calculNearest(float val) {
		smallestInterval = Double.POSITIVE_INFINITY;
		smallestVal = val;
		
		for (int i = 0; i < quantFactors.length; i++) {
			if (quantFactors[i] != 0) {
				rounded = quantFactors[i] == 1 ? val : doRounding(val, 1 / quantFactors[i]);
	
				interval = Math.abs(val - rounded);
				if (Math.abs(val - rounded) < smallestInterval) {
					smallestVal = (float) rounded;
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
	

	/**
	 * Find the 
	 * @param args <code>array</code> to be optimized
	 */
	private void setQuantFactors(float[] args) {
		Arrays.sort(args);
		Atom[] tmp = Atom.newAtom(args);
		int i, j;

		j = 0;
		while( j < tmp.length) {
			i = j + 1;
			while(i < tmp.length) {
				if (((tmp[i].toFloat() / tmp[j].toFloat()) % 1.) == 0.)
					tmp = Atom.removeOne(tmp, i);
				else
					i++;
			}
			j++;
		}
		quantFactors = Atom.toFloat(tmp);
	}
	
	private double doRounding(double val, double roundingVal) {
		return (Math.round(val*roundingVal) / roundingVal);
	}
	
	private void doOutput() {
		switch (outputmode) {
			case  0:
				outlet(0, resultat); break;
			case  1:
				writeToBuffer(); break;
			case 2:
				outlet(0, resultat); writeToBuffer(); break;
		}
	}
	
	private void writeToBuffer() {
		if (buf_name != null && resultat.length > 0) {
			MSPBuffer.poke(buf_name, resultat);
		}
	}
}