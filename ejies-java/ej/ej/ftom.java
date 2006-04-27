/*
 *	ej.ftom by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	Frequency to MIDI (with tuning adjustment)
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/27 18:49:27 $
 */

package ej;

import com.cycling74.max.*;

public class ftom extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "MIDI note number in (int/float/list)" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Frequency out"};
	private static final String[] LIST_MODES = new String[]{ "float", "int", "round", "quarter" };
	
	private float[] aList;
	private float tuning = 440;
	private int pitch_reference = 69;
	private char whichMode = 0;
	private float tonSubdivision = 2;
	
	private int[] listInt;
	
	public ftom(float[] args) {
		declareTypedIO("a", "l");
		createInfoOutlet(true);
		
		argsManager(args);
		declareAttribute("tuning", "getTunnig", "setTunnig");
		declareAttribute("pitch_reference", "getPitchReference", "setPitchReference");
		declareAttribute("mode", "getMode", "setMode");

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
		else
			return new String((int) Math.floor(tonSubdivision * 2) + "");
	}
	
	public void bang() {
		error("ej.ftom: doesn't understand bang");
	}

	public void inlet(float f) {
		calculeFloat(f);
	}
	
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
	
	public void anything(String s, Atom[] args) {
		error("ej.ftom: doesn't understand " + s + " " + Atom.toOneString(args));
	}
}
