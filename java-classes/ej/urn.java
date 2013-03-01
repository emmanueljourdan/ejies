/*
 *	ej.urn by Emmanuel Jourdan, e--j dev — 04 2005
 *	like the urn object but for larger range
 *
 *	$Revision: 1.5 $
 *	$Date: 2006/11/02 17:28:37 $
 */

package ej;

//import com.cycling74.max.*;
import java.util.Random; 

/**
 * random sequence generator (like the standart urn object)
 * @author jourdan
 * @see ej
 * @version $Revision: 1.5 $
 */
public class urn extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "bang Generates Random Number", "Set Range of Random Number" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Random Number Output", "bang if All Numbers in Range Chosen" };
	private int urnSize = 0;
	private int howManyLeft = 0;
	private Random myRandom = new Random();
	private int[] urnValues; // tableau qui stocke les valeurs possibles
	private boolean autoclear = false;
	
	/**
	 * Create a urn object with specified range
	 * @param size range (output value will be from 0 to range-1)
	 */
	public urn(int size) {
		this(size, 0);
	}
	
	/**
	 * Create a urn object with specified range and seed
	 * @param size range (output value will be from 0 to range-1)
	 * @param seed seed
	 */
	public urn(int size, int seed) {
		declareTypedIO("bi", "ib");
		createInfoOutlet(false);
		
		urnInit(size);
		setSeed(seed);
		declareAttribute("autoclear");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	/**
	 * Generate the next random value.
	 */
	public void bang() {
		if (howManyLeft != 0)
			urner();
		else {
			if (autoclear) {
				howManyLeft = urnSize;
				urner();
			} else
				outlet(1, "bang");
		}
	}
	
	/**
	 * Define a new range.
	 * @param i range (output value will be from 0 to range-1)
	 */
	public void inlet(int i) {
		if (getInlet() == 1)
			urnInit(i);
		else
			error("no int expected here!");
	}
	
	/**
	 * Reset the values (ready to start a new sequence)
	 */
	public void clear() {
		/*
		 * Il n'est pas nécessaire de réinitialiser le tableau,
		 * on fiche des valeurs qui sont dedans.
		 */
		howManyLeft = urnSize;
	}

	/**
	 * Set the seed
	 * @param seed integer value sets the seed.
	 */
	public void seed(int seed) {
		setSeed(seed);
	}
	
	/**
	 * Display a message in the Max window of the memory utilisation.
	 */
	public void sizeInfo() {
		post("ej.urn: using " + urnSize * 4 + " bytes.");
	}
	
	private synchronized void urner() {
		/*
		 * Chaque fois qu'on demande une valeur aléatoire, la valeur est mise
		 * à la fin du tableau (en fait à l'index de howManyLeft - 1)
		 */
		int rIdx;     // stockera l'index donné par Random
		
		rIdx = myRandom.nextInt(howManyLeft--); // ATTENTION: on décrémente après utiliser la valeur !!!
		outlet(0, urnValues[rIdx]);

		// swap if needed...
		// http://en.wikipedia.org/wiki/Xor_swap_algorithm
		// I must admit is really not clear :-)
		if (rIdx != howManyLeft) {
			urnValues[rIdx] ^= urnValues[howManyLeft];
			urnValues[howManyLeft] ^= urnValues[rIdx];
			urnValues[rIdx] ^= urnValues[howManyLeft];
		}
	}
	
	private void urnInit(int size) {
		urnSize = size;
		urnValues = new int[size];

		urnErase(); // remplissage
		howManyLeft = urnSize; // initialisation du pointeur
	}
	
	private void urnErase() {
		for (int i = 0; i < urnSize; i++)
			urnValues[i] = i;
	}
	
	private void setSeed(int seed) {
		if (seed < 1)
			myRandom = new Random(System.currentTimeMillis());
		else
			myRandom = new Random(seed);
		
		urnErase(); // remplissage avec les valeurs par défaut
		// howManyLeft = urnSize; // même fonctionnement que urn
	}
}