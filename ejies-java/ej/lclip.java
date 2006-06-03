/*
 *	ej.lclip by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	Constrains a list within a certain range
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/06/03 17:35:41 $
 */

package ej;
import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

public class lclip extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "List to be constrained", "Minimum", "Maximum" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Constrained list output"};	

	private float[] resultat;
	private float clipMin = 0;
	private float clipMax = 0;
	private String buf_name = null;
	private byte outputmode = 0;
	
	public lclip(float clipMin, float clipMax)	{
		declareTypedIO("aff", "l");
		createInfoOutlet(false);
		
		declareAttribute("outputmode", null, "setMode");
		declareAttribute("buf_name");

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
				resultat = new float[] { f };
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
				resultat = args;
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
		for (int i = 0; i < resultat.length; i++)
			resultat[i] = Math.min(Math.max(clipMin, resultat[i]), clipMax);

		doOutput();
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