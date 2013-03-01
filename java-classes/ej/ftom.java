/*
 *	ej.ftom by Emmanuel Jourdan, e--j dev Ñ 02 2005
 *	Frequency to MIDI (with tuning adjustment)
 *
 *	$Revision: 1.8 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;

import com.cycling74.max.*;

/**
 * Convert frequency to midi. This works for list, and allows you to define tuning and pitch reference.   
 * @author jourdan
 * @see ej
 * @version $Revision: 1.8 $
 */
public class ftom extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "MIDI note number in (int/float/list)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Frequency out"};
	private static final String[] LIST_MODES = new String[]{ "float", "int", "round", "quarter" };
	
	private double tuning = 440;
	private int pitch_reference = 69;
	private char whichMode = 0;
	private double tonSubdivision = 2;
	
	private int[] listInt;
	
	/**
	 * create a ftom object with default parameters (tuning 440 Hz, pitch reference 69)
	 */
	public ftom() {
		this(440, 69);
	}
	
	/**
	 * create a ftom object with tuning specified as argument (pitch reference will be the default 69 value)
	 * @param tuning tuning reference (Hz)
	 */
	public ftom(float tuning) {
		this(tuning, 69);
	}
	
	/**
	 * create a ftom object with specified tuning and pitch reference.
	 * @param tuning tuning reference (Hz)
	 * @param pitch_reference pitche reference (MIDI note)
	 */
	public ftom(float tuning, int pitch_reference) {
		declareTypedIO("a", "l");
		createInfoOutlet(true);
		
		setTunnig(tuning);
		setPitchReference(pitch_reference);
		
		declareAttribute("tuning", "getTunnig", "setTunnig");
		declareAttribute("pitch_reference", "getPitchReference", "setPitchReference");
		declareAttribute("mode", "getMode", "setMode");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void setTunnig(float f) {
		if (f > 0 && f < 20000)
			tuning = f;
	}
	
	private float getTunnig() {
		return (float) tuning;
	}

	private void setPitchReference(int i) {
		if (i > 0 && i < 127) {
			pitch_reference = i;
		}
	}
	
	private int getPitchReference() {
		return pitch_reference;
	}
		
	private void setMode(Atom[] a) {
		if (a[0].isString()) {
			if (a[0].getString().equals("float")) {
				whichMode = 0;
				return;
			} else if (a[0].getString().equals("int")) {
				whichMode = 1;
				return;
			} else if (a[0].getString().equals("round")) {
				whichMode = 2;
				return;
			} else if (a[0].getString().equals("quarter")) {
				whichMode = 3; 
				tonSubdivision = 2; 
				return;
			}
		} else if (a[0].isInt()) {
			tonSubdivision = a[0].getInt() / 2f;
			whichMode = 3;
		} else { // je suis un float
			tonSubdivision = (int) a[0].getInt() / 2f;
			whichMode = 3;
		}

	}
	
	private String getMode() {
		if (whichMode < 3 || tonSubdivision == 2f)
			return LIST_MODES[whichMode];
		// else
		return new String((int) Math.floor(tonSubdivision * 2) + "");
	}
	
	/**
	 * Calculate the result.
	 */
	public void inlet(int i) {
		calculeFloat(i);
	}
	
	/**
	 * Calculate the result.
	 */
	public void inlet(float f) {
		calculeFloat(f);
	}
	
	/**
	 * Calculate the result of the list.
	 */
	public void list(float[] list) {
		switch (whichMode) {
			case 0:
				calculeListFloat(list);
				break;
			case 1:
				calculeListInt(list);
				break;
			case 2:
				calculeListRound(list);
				break;
			case 3:
				calculeListQuarter(list);
				break;
		}
	}
	
	private void calculeFloat(float f) {
		switch (whichMode) {
			case 0:
				outlet(0, (float) (12 * (Math.log(f / tuning) / Math.log(2))) + pitch_reference );
				break;
			case 1:
				outlet(0, (int) ((12 * (Math.log(f / tuning) / Math.log(2))) + pitch_reference) );
				break;
			case 2:
				outlet(0, (int) Math.round((12 * (Math.log(f / tuning) / Math.log(2))) + pitch_reference) );
				break;
			case 3:
				outlet(0, (float) (Math.round(((12 * (Math.log(f / tuning) / Math.log(2))) + pitch_reference) * (float) tonSubdivision) / (float) tonSubdivision) );
				break;
		}
	}
	
	private void calculeListInt(float[] list) {
		listInt = new int[list.length];
		
		for (int i = 0; i < list.length; i++) {
			listInt[i] = (int) ((12 * (Math.log(list[i] / tuning) / Math.log(2))) + pitch_reference);
		}
		
		outlet(0, listInt);
	}

	private void calculeListRound(float[] list) {
		listInt = new int[list.length];
		
		for (int i = 0; i < list.length; i++) {
			listInt[i] = (int) Math.round((12 * (Math.log(list[i] / tuning) / Math.log(2))) + pitch_reference);
		}
		
		outlet(0, listInt);
	}
	
	private void calculeListFloat(float[] list) {
		for (int i = 0; i < list.length; i++) {
			list[i] = (float) (12 * (Math.log(list[i] / tuning) / Math.log(2))) + pitch_reference;
		}
		
		outlet(0, list);
	}

	private void calculeListQuarter(float[] list) {
		for (int i = 0; i < list.length; i++) {
			// (arrondis(resultat * 2) / 2) 
			list[i] = (float) (Math.round(((12 * (Math.log(list[i] / tuning) / Math.log(2))) + pitch_reference) * (float) tonSubdivision) / (float) tonSubdivision);
		}
		
		outlet(0, list);
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.ftom: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
}
