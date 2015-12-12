/*
 *	ej.lscale by Emmanuel Jourdan, e--j dev — 02 2005
 *	scale for lists
 *
 *
 *	$Revision: 1.8 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

import java.lang.reflect.*;// this time I use reflection instead of interface :-)
import java.util.Arrays;

/**
 * Scale list.
 * @author jourdan
 * @see ej
 * @version $Revision: 1.8 $
 */
public class lscale extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "List to be scaled", "Low input value", "High input value", "Low output value", "High output value", "Exponent" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Scaled list"};	

	private float[] a;
	private float[] resultat;
	private float xMin = 0;
	private float xMax = 127;
	private float xRange = xMax - xMin;
	private float yMin = 0;
	private float yMax = 1;
	private float yRange = yMax - yMin;
	private float[] yClip = { yMin, yMax };
	private float expValue = 1;
	private String methodString = "calculeNormal";
	private String buf_name = null;
	private int outputmode = 0;
	private int channel = 1;

	private boolean clip = false;
	
	private Class myClass;
	private Method myMethod;
	
	/**
	 * Create a lscale object.
	 * @param args [xMin] [xMax] [yMin] [yMax] [exponantiel factor]
	 */
	public lscale(float[] args)	{
		declareTypedIO("alffff", "l");
		createInfoOutlet(true);
		
		declareAttribute("clip", "getClip", "setClip");
		declareAttribute("outputmode", null, "setMode");
		declareAttribute("channel", null, "setChannel");
		declareAttribute("buf_name");

		initClass();
		newArgs(args);
		calculeChoice();
		
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
	
	private void initClass() {
		try {
			myClass = Class.forName( "ej.lscale" );
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void setClip(Atom[] args) {
		clip = args[0].toBoolean();
		calculeChoice();
	}
	
	private int getClip() {
		return (clip ? 1: 0);
	}

	/**
	 * Depending on the inlet number, a int value can do many things...
	 * @param i if the value arrives in the leftmost inlet: set the value to be scaled, and trigger the calculation
	 * @param i if the value arrives in the second inlet: set the xMin value
	 * @param i if the value arrives in the third inlet: set the xMax value
	 * @param i if the value arrives in the fourth inlet: set the yMin value
	 * @param i if the value arrives in the fifth inlet: set the yMax value
	 * @param i if the value arrives in the sixth inlet: set the exponential factor 
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	
	/**
	 * Depending on the inlet number, a float value can do many things...
	 * @param f if the value arrives in the leftmost inlet: set the value to be scaled, and trigger the calculation
	 * @param f if the value arrives in the second inlet: set the xMin value
	 * @param f if the value arrives in the third inlet: set the xMax value
	 * @param f if the value arrives in the fourth inlet: set the yMin value
	 * @param f if the value arrives in the fifth inlet: set the yMax value
	 * @param f if the value arrives in the sixth inlet: set the exponential factor 
	 */
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				a = new float[1];
				a[0] = f;
				calcule();
				break;
			case 1:
				xMin = f;
				refreshRange();
				break;
			case 2:
				xMax = f;
				refreshRange();
				break;
			case 3:
				yMin = f;
				refreshRange();
				break;
			case 4:
				yMax = f;
				refreshRange();
				break;
			case 5:
				expValue = Math.max(0,Math.min(f, Float.POSITIVE_INFINITY));
				calculeChoice();
				break;
		}
	}


	/**
	 * Define the list to be scaled.
	 * @param args if the list arrives in the left inlet: set the list to be scaled and trigger the calculation
	 * @param args if the list arrives in the second inlet: set the arguments for the scaling (xMin, xMax, yMin, yMax, Exponantial factor). 
	 */
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:                // première entrée... liste à scaler
				a = args;
				calcule();
				break;
			case 1:
				newArgs(args);     // arguments donnés sous forme de liste
				break;
			default:               // quelle idée d'envoyer une liste ici
				error("ej.lscale: doesn't expect a list here");
				break; // est-ce vraiment nécessaire ?
		}
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.lscale: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
	
	private void calculeChoice() {
		// choix de la méthod pour le scaling
		if (expValue == 1)
			methodString = (clip ? "calculeClip" : "calculeNormal");
		else
			methodString = (clip ? "calculeExpClip" : "calculeExp");
		
		try {
			myMethod = myClass.getMethod(methodString, null );
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		refreshRange();
	}
	
	private void refreshRange() {
		xRange = xMax - xMin;
		yRange = yMax - yMin;

		// recalcule le bon min/max utile pour le clip
		yClip[0] = Math.min(yMin, yMax);
		yClip[1] = Math.max(yMin, yMax);
	}
	
	private void calcule() {
		try {
			resultat = new float[a.length];
			myMethod.invoke(this, null);
			doOutput();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/** used internaly */
	public void calculeNormal() {
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = ((a[i] - xMin) / xRange) * yRange + yMin;
	}
	
	/** used internaly */
	public void calculeExp() {
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = (float) Math.pow(((a[i] - xMin) / xRange), expValue) * yRange + yMin;
	}
	
	/** used internaly */
	public void calculeClip() {
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = (float) Math.max(yClip[0], Math.min(Math.pow(((a[i] - xMin) / xRange), expValue) * yRange + yMin, yClip[1]));
	}
	
	/** used internaly */
	public void calculeExpClip() {
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = (float) Math.max(yClip[0], Math.min(Math.pow(((a[i] - xMin) / xRange), expValue) * yRange + yMin, yClip[1]));
	}
		
	private void newArgs(float[] args) {
		if (args.length > 0) xMin = args[0];
		if (args.length > 1) xMax = args[1];
		if (args.length > 2) yMin = args[2];
		if (args.length > 3) yMax = args[3];
		if (args.length > 4) expValue = Math.max(0,Math.min(args[4], Float.POSITIVE_INFINITY));
		if (args.length > 5) error("ej.lscale: extra argument");
		
		refreshRange();
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