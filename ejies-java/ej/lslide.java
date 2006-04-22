/*
 *	ej.lslide by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	slide for lists
 *
 *
 *	$Revision: 1.5 $
 *	$Date: 2006/04/22 17:00:44 $
 */

package ej;

import com.cycling74.max.*;

public class lslide extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List to be slided :-)", "Slide Up", "Slide Down" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Slided list"};	

	private float[] a = new float[0];
	private float[] lastA = new float[0];
	private float[] resultat = new float[0];
	private float slide_up = 1;
	private float slide_down = 1;
	private float yN_1 = 0;
	private boolean firstIsMade = false;
	
	public lslide(float slideUp, float slideDown)	{
		declareTypedIO("aff", "l");
		createInfoOutlet(true);
		
		setSlideUp(slideUp);
		setSlideDown(slideDown);
		declareAttribute("slide_up", "getSlideUp", "setSlideUp");
		declareAttribute("slide_down", "getSlideDown", "setSlideDown");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void bang() {
		calculeChoice();
	}
	
	private void setSlideUp(float f) {
		if (f >= 1) 
			slide_up = f;
	}
	
	private void setSlideDown(float f) {
		if (f >= 1)
			slide_down = f;
	}
	
	private float getSlideUp() {
		return slide_up;
	}

	private float getSlideDown() {
		return slide_down;
	}

	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				a = new float[] { f };
				calculeChoice();
				break;
			case 1:
				setSlideUp(f);
				break;
			case 2:
				setSlideDown(f);
				break;
		}
	}

	public void list(float[] args) {
	
		switch (getInlet()) {
			case 0:
				a = args;
				calculeChoice();
				break;
			case 1:
				setSlideUp(args[0]);
				setSlideDown(args[1]);
				break;
			default:
				error("ej.lslide: slide down inlet expects float");
		}
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.lslide: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calculeChoice() {
		// redimensionne tout le monde
		if (resultat.length != a.length) {
			resultat = new float[a.length];
			lastA = new float[a.length];
		}
		
		if (firstIsMade == true)
			calcule();
		else
			calculeFirstTime();
	}
	
	private void calcule() {
		for (int i = 0; i < resultat.length; i++) {
			yN_1 = resultat[i];

			if (a[i] - lastA[i] >= 0)
				resultat[i] = yN_1 + ((a[i] - yN_1) / slide_up);
			else
				resultat[i] = yN_1 + ((a[i] - yN_1) / slide_down);
		}
		
		lastA = a;
		outlet(0, resultat);
	}
	
	private void calculeFirstTime() {
		yN_1 = 0;
		
		for (int i = 0; i < resultat.length; i++) {
			if (a[i] >= 0)
				resultat[i] = yN_1 + ((a[i] - yN_1) / slide_up);
			else
				resultat[i] = yN_1 + ((a[i] - yN_1) / slide_down);
		}
		
		lastA = a;
		outlet(0, resultat);
		firstIsMade = true;
	}
}
