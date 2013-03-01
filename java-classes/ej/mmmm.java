/*
 *	ej.mmmm by Emmanuel Jourdan, e--j dev — 12 2005
 *	output the min, median, mean, maximum on a int/float stream
 *
 *	$Revision: 1.7 $
 *	$Date: 2006/11/03 11:14:38 $
 */

package ej;

import com.cycling74.max.*;
import java.util.Arrays;

/**
 * min, median, mean and max on a stream of values. 
 * @author jourdan
 * @see "js ej.4m.js"
 * @see ej
 * @version $Revision: 1.7 $
 */
public class mmmm extends ejies
{
	private static final String[] INLET_ASSIST = new String[]{ "int/float" };
	private static final String[] OUTLET_ASSIST = new String[]{ "minimum", "median", "mean", "maximum", "list of values / dumpout" };
	private static final String[] OUTLET_ASSIST_LIST = new String[]{ "list of minimum, median, mean and maximum", "nothing here", "nothing here", "nothing here", "list of values / dumpout" };
	private int window;
	private boolean verbose;
	private String mode = "float";
	private float[] a;
	private float[] b;
	private float[] c;
	private double somme = 0;	// soyons fous... un double
	private int idx;		// index du tableau ou sera stockée la prohaine valeur
	private boolean arrayFull = false;
	
	// si il n'y a pas d'arguments
	/**
	 * Create a mmmm with default window size (3).
	 */
	public mmmm() {
		this(3, false);
	}

	// si il y a un argument
	/**
	 * Create a mmmm with specified window size.
	 * @param ws window size
	 */
	public mmmm(int ws) {
		this(ws, false);
	}
	
	// il y a deux arguments
	/**
	 * Create a mmmm with specified window size and verbose mode
	 * @param ws window size
	 * @param verbeux verbose state (1 equals verbose, 0 silent).
	 */
	public mmmm(int ws, boolean verbeux) {
		declareIO(1,4);
		declareAttribute("window", null, "setWindow");
		declareAttribute("verbose");
		declareAttribute("mode", null, "setMode");
		
		setWindow(ws);
		verbose = verbeux;
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void setWindow(int i) {
		if (i < 3)
			window = 3;
		else
			window = i;

		reset();
	}
	
	private void setMode(String s) {
		if (s.equals("float")) {
			mode = s;
			setOutletAssist(OUTLET_ASSIST);
		} else if (s.equals("list")) {
			mode = s;
			setOutletAssist(OUTLET_ASSIST_LIST);
		}
	}
	
	/**
	 * Re-trigger.
	 */
	public void bang() {
		sortie();
	}
    
	/**
	 * Value to be analysed
	 * @param f int
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	
	/**
	 * Value to be analysed
	 * @param f float
	 */
	public void inlet(float f) {
		// reçoit les int et les float
		addToList(f);
		sortie();
	}

	private void addToList(float val) {
		if ( idx == (window - 1) ) {	// remet à zéro le compteur
			a[idx] = val;
			idx = 0;
			arrayFull = true;
		} else
			a[idx++] = val;
	}

	/**
	 * Reset the memory. <i>alias for reset().</i>
	 */
	public void clear() {
		// clear is a synonym for reset();
		reset();
	}
	
	/**
	 * Reset the memory.
	 *
	 */
	public void reset() {
		a = new float[window];
		b = new float[window];
		c = new float[window];
		idx = 0;
		arrayFull = false;
	}
	
	private void sortie() {
		if  (! arrayFull)
			return;

		// copy array... ça éxiste dans Java... c'est magique
		System.arraycopy(a, 0, b, 0, a.length);
		
		if (verbose)
			outputWindow();

		Arrays.sort(b);

		if (mode.equals("list")) {
			outlet(0, new float[] { b[0], b[b.length / 2], moyenne(b), b[b.length - 1] } );
		} else {
			outlet(3, b[b.length - 1]);
			outlet(2, moyenne(b));
			outlet(1, b[b.length / 2]);
			outlet(0, b[0]);
		}
	}
        
	private float moyenne(float tab[]) {
		int i;
		somme = 0;

		for (i = 0; i < tab.length; i++) {
			somme += tab[i];
		}
		
		return (float) (somme / tab.length);
	}
	
	private void outputWindow() {
		for (int i = 0; i < c.length; i++)
			c[i] = a[(i + idx) % window];

		outlet(4, c);
	}
}