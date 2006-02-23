/*
 *	ej.mtof by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	MIDI to Frequency (with tunning adjustment)
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/02/23 17:33:14 $
 */

package ej;

import com.cycling74.max.*;

public class mtof extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "MIDI note number in (int/float/list)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Frequency out"};

	private float[] aList = new float[0];
	
	private float tunning = 440;
	private int pitch_reference = 69;
	
	public mtof(float[] args) {
		declareTypedIO("a", "l");
		createInfoOutlet(true);
		
		declareAttribute("tunning", "getTunnig", "setTunnig");
		declareAttribute("pitch_reference", "getPitchReference", "setPitchReference");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	private void setTunnig(float f) {
		if (f > 0 && f < 20000)
			tunning = f;
	}
	
	private float getTunnig() {
		return tunning;
	}

	private void setPitchReference(int i) {
		if (i > 0 && i < 127) {
			pitch_reference = i;
		}
	}
	
	private int getPitchReference() {
		return pitch_reference;
	}
	
	public void bang() {
		error("ej.mtof: doesn't understand bang");
	}
	
	public void inlet(float f) {
		outlet(0, (float) (tunning * Math.pow(2,(f - pitch_reference)/12)) );
	}

	public void list(float[] list) {
		for (int i = 0; i < list.length; i++) {
			list[i] = (float) (tunning * Math.pow(2,(list[i] - pitch_reference) / 12));
		}
		
		outlet(0, list);
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.mtof: doesn't understand " + s + " " + Atom.toOneString(args));
	}	
}