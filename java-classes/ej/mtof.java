/*
 *	ej.mtof by Emmanuel Jourdan, e--j dev Ñ 02 2005
 *	MIDI to Frequency (with tuning adjustment)
 *
 *	$Revision: 1.7 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;

import com.cycling74.max.*;

/**
 * Convert MIDI to frequency. This works for list, and allows you to define tuning and pitch reference.   
 * @author jourdan
 * @see ej
 * @version $Revision: 1.7 $
 */
public class mtof extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "MIDI note number in (int/float/list)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Frequency out"};

//	private float[] aList;
	
	private float tuning = 440;
	private int pitch_reference = 69;
	
	/**
	 * Create a mtof object with specified tuning.
	 * @param f tuning frequency.
	 */
	public mtof(float tuning) {
		this(tuning, 69);
	}
	
	/**
	 * Create a mtof object with specified tuning and pitch reference.
	 * @param tuning tuning frequency
	 * @param pitch_reference MIDI pitch reference
	 */
	public mtof(float tuning, float pitch_reference) {
		declareTypedIO("a", "l");
		createInfoOutlet(true);
		
		setTunnig(tuning);
		setPitchReference(Math.round(pitch_reference));
		
		declareAttribute("tuning", "getTunnig", "setTunnig");
		declareAttribute("pitch_reference", "getPitchReference", "setPitchReference");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void setTunnig(float f) {
		if (f > 0 && f < 20000)
			tuning = f;
	}
	
	private float getTunnig() {
		return tuning;
	}

	private void setPitchReference(int i) {
		if (i > 0 && i < 127) {
			pitch_reference = i;
		}
	}
	
	private int getPitchReference() {
		return pitch_reference;
	}
	
	/**
	 * Calculate the frequency corresponding to the MIDI note number you send
	 * @param i MIDI note number
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	/**
	 * Calculate the frequency corresponding to the MIDI note number you send
	 * @param f MIDI note number
	 */
	public void inlet(float f) {
		outlet(0, (float) (tuning * Math.pow(2,(f - pitch_reference)/12)) );
	}

	public void list(float[] list) {
		for (int i = 0; i < list.length; i++) {
			list[i] = (float) (tuning * Math.pow(2,(list[i] - pitch_reference) / 12));
		}
		
		outlet(0, list);
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.mtof: doesn't understand " + s + " " + Atom.toOneString(args));
//	}	
}