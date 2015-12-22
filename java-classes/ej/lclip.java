/*
 *	ej.lclip by Emmanuel Jourdan, e--j dev Ñ 02 2005
 *	Constrains a list within a certain range
 *
 *	$Revision: 1.6 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;
import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

/**
 * clip the values of a list
 * @author jourdan
 * @see ej
 * @version $Revision: 1.6 $
 */
public class lclip extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "List to be constrained", "Minimum", "Maximum" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Constrained list output"};	

	private float[] resultat;
	private float clipMin = 0;
	private float clipMax = 0;
	private String buf_name = null;
	private int outputmode = 0;
	private int channel = 1;

	/**
	 * Create a lclip object. The arguments sets the limits.
	 * @param clipMin define the lowest value of the resulting list
	 * @param clipMax define the highest value of the resulting list
	 */
	public lclip(float clipMin, float clipMax)	{
		declareTypedIO("aff", "l");
		createInfoOutlet(false);
		
		declareAttribute("outputmode", null, "setMode");
		declareAttribute("channel", null, "setChannel");
		declareAttribute("buf_name");

		this.clipMin = clipMin;
		this.clipMax = clipMax;
		
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
	 * If the value arrives in the leftmost inlet : clip the int/float value (
	 * <i>for that matter you may have to try the standart <code>change</code> object, which works quite well in fact :-)</i>)
	 * <p> If the value arrives in the middle inlet : set the lowest value
	 * <p> If the value arrives in the rightmost inlet : set the highest value
	 * @parm i the value
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	
	/**
	 * If the value arrives in the leftmost inlet : clip the int/float value (
	 * <i>for that matter you may have to try the standart <code>change</code> object, which works quite well in fact :-)</i>)
	 * <p> If the value arrives in the middle inlet : set the lowest value
	 * <p> If the value arrives in the rightmost inlet : set the highest value
	 * @param f the value
	 */
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

	/**
	 * clip the list.
	 * 
	 */
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				resultat = args;
				calcule();
				break;
			case 1:
				clipMin = args[0];
				clipMax = args[1]; // don't need to check if it exists because it's a list
				break;
			default:
				error("ej.lclip: Maximum inlet expects float");
		}
	}
	
//	public void anything(String s, Atom[] args) {
//		error("ej.lclip: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
	
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
			MSPBuffer.poke(buf_name, channel, resultat);
		}
	}
}