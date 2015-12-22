/*
 *	ej.lquant by Emmanuel Jourdan, e--j dev Ñ 08 2005
 *	Quantize a list
 *
 *	$Revision: 1.6 $
 *	$Date: 2007/02/05 17:47:39 $
 */

package ej;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;

import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

/**
 * Quantize a list (aka rounding to the nearest subdivision).
 * @author jourdan
 * @see ej
 */
public class lquant extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "List to be quantized", "Quantzing list"};
	private static final String[] OUTLET_ASSIST = new String[]{ "Quantized list"};	

	private float[] resultat = new float[0];
	private float[] quantFactors;
	private double smallestInterval, rounded, interval;
	private float smallestVal;
	private boolean isErrorDisplayed = false;
	private String buf_name = null;
	private int outputmode = 0;
	private int channel = 1;
	
	/**
	 * Create a ej.lquant object with rounding default value (1.)
	 */
	public lquant() {
		this(new Atom[] { Atom.newAtom(1) } );
	}
	
	/**
	 * Create a lquant object with the defined value(s)
	 * @param args set the quantification list
	 */
	public lquant(Atom[] args) {
		declareTypedIO("al", "l");
		createInfoOutlet(false);
		
		setQuantFactors(Atom.toFloat(args));

		declareAttribute("outputmode", null, "setMode");
		declareAttribute("channel", null, "setChannel");
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
	
	private void setChannel(int i) {
		if (i >= 1) {	// no upper limit (MSPBuffer will clamp to the buffer channelcount)
			channel = i;
		} else
			error("bad channel number (index starts at 1)");
	}
	
	/**
	 * Re-Trigger the calculation.
	 */
	public void bang() {
		calcule();
	}
	
	/**
	 * Do something depending on the inlet number...
	 * @param i if the value arrives in the left inlet: quantize that value
	 * @param i if the falue arrives in the right inlet: set the new quantizing factors
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	
	/**
	 * Do something depending on the inlet number...
	 * @param f if the value arrives in the left inlet: quantize that value
	 * @param f if the falue arrives in the right inlet: set the new quantizing factors
	 */
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

	/**
	 * Calculate or set the quantizing factors, depending on the inlet number
	 * @param args if the list arrives in the left inlet: quantize that list
	 * @param args if the list arrives in the right inlet: set the new quantizing factors
	 */
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
	
	/**
	 * Define the list to be quantized, without triggering the calculation.
	 * @param args if the list arrives in the left inlet: store the list to be quantized
	 * @param args if the list arrives in the right inlet: set the new quantizing factors
	 */
	public void set(float[] args) {
		switch (getInlet()) {
		case 0:
			resultat = args; break;
		case 1:
			setQuantFactors(args); break;
		}
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.lquant: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
	
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
				rounded = doRounding(val, 1 / quantFactors[i]);
	
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
	
	// Optimize the quantisation factors to reduce the number of calculation. I'm particulary proud of that part...
	// cherche les plus grand communs dŽnominateurs
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
			MSPBuffer.poke(buf_name, channel, resultat);
		}
	}
}