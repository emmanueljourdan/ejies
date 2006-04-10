/*
 *	ej.urn by Emmanuel Jourdan, Ircam — 04 2005
 *	like the urn object but for larger range
 *
 *	$Revision: 1.2 $
 *	$Date: 2006/04/10 13:23:59 $
 */

package ej;

import com.cycling74.max.*;
import java.util.Random; 

public class urn extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "bang Generates Random Number", "Set Range of Random Number" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Random Number Output", "bang if All Numbers in Range Chosen" };
	private int urnSize = 0;
	private int howManyLeft = 0;
	private int tmpValue; // utilisé pour la permutation
	private int rIdx;     // stockera l'index donné par Random
	private Random myRandom = new Random();
	private int[] urnValues; // tableau qui stocke les valeurs possibles
	private boolean autoclear = false;
	
	public urn(int size) {
		this(size, 0);
	}
	
	public urn(int size, int seed) {
		declareTypedIO("bi", "ib");
		createInfoOutlet(false);
		
		urnInit(size);
		setSeed(seed);
		declareAttribute("autoclear");
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
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
	
	public void inlet(int i) {
		if (getInlet() == 1)
			urnInit(i);
	}
	
	public void clear() {
		/*
		 * Il n'est pas nécessaire de réinitialiser le tableau,
		 * on fiche des valeurs qui sont dedans.
		 */
		howManyLeft = urnSize;
	}
	
	public void seed(int seed) {
		setSeed(seed);
	}
	
	public void sizeInfo() {
		post("ej.urn: using " + urnSize * 4 + " bytes.");
	}
	
	private void urner() {
		/*
		 * Chaque fois qu'on demande une valeur aléatoire, la valeur est mise
		 * à la fin du tableau (en fait à l'index de howManyLeft - 1)
		 */
		
		rIdx = myRandom.nextInt(howManyLeft--); // ATTENTION: on décrémente après utiliser la valeur !!!
		tmpValue = urnValues[rIdx]; // la permutation se prépare
		
		outlet(0, tmpValue);

		// permutation avec la fin du tableau
		urnValues[rIdx] = urnValues[howManyLeft];
		urnValues[howManyLeft] = tmpValue;
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