/*
 *	ej.mtof by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	MIDI to Frequency (with tuning adjustment)
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/02/24 15:17:09 $
 */

package ej;

import com.cycling74.max.*;

public class mtof extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "MIDI note number in (int/float/list)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Frequency out"};

	private float[] aList = new float[0];
	
	private float tuning = 440;
	private int pitch_reference = 69;
	
	public mtof(float[] args) {
		declareTypedIO("a", "l");
		createInfoOutlet(true);
		
		argsManager(args);
		declareAttribute("tuning", "getTunnig", "setTunnig");
		declareAttribute("pitch_reference", "getPitchReference", "setPitchReference");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void argsManager(float[] args) {
		switch (args.length) {
			case 1:
				setTunnig(args[0]);
				break;
			case  2:
				setPitchReference((int) args[1]);
				break;
		}
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
	
	public void bang() {
		error("ej.mtof: doesn't understand bang");
	}
	
	public void inlet(float f) {
		outlet(0, (float) (tuning * Math.pow(2,(f - pitch_reference)/12)) );
	}

	public void list(float[] list) {
		for (int i = 0; i < list.length; i++) {
			list[i] = (float) (tuning * Math.pow(2,(list[i] - pitch_reference) / 12));
		}
		
		outlet(0, list);
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.mtof: doesn't understand " + s + " " + Atom.toOneString(args));
	}	
}