/*
 *	ej.lclip by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	Constrains a list within a certain range
 *
 *	$Revision: 1.2 $
 *	$Date: 2006/04/10 13:22:57 $
 */

package ej;
import com.cycling74.max.*;

public class lclip extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List to be constrained", "Minimum", "Maximum" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Constrained list output"};	

	private float[] a ;
	private float clipMin = 0;
	private float clipMax = 0;
	
	public lclip(float clipMin, float clipMax)	{
		declareTypedIO("aff", "l");
		createInfoOutlet(false);
		
		this.clipMin = clipMin;
		this.clipMax = clipMax;
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				a = new float[] { f };
				calcule();
				break;
			case 1:
				clipMin = f;
				break;
			case 2:
				clipMax = f;
				break;
		}
	}

	public void list(float[] args) {
	
		switch (getInlet()) {
			case 0:
				a = args;
				calcule();
				break;
			case 1:
				clipMin = args[0];
				clipMax = args[1];
				break;
			default:
				error("ej.lclip: Maximum inlet expects float");
		}
	}
	
	public void anything(String s, Atom[] args) {
		error("ej.lclip: doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calcule() {
		for (int i = 0; i < a.length; i++)
			a[i] = Math.min(Math.max(clipMin, a[i]), clipMax);

		outlet(0, a);
	}
}