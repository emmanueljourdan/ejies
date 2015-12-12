/*
 *	ej.linterp by Emmanuel Jourdan, e--j dev — 04 2005
 *	simple list interpolator
 *
 *
 *	$Revision: 1.14 $
 *	$Date: 2006/09/20 16:40:54 $
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.*;

/**
 * list interpolator
 * @author jourdan
 * @see ej
 * @see ej.lop
 * @version $Revision: 1.14 $
 */
public class linterp extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "interpolation factor (0. = A -> 1. = B)", "List A", "List B" };
	private static final String[] INLET_ASSIST_QUAD = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D" };
	private static final String[] INLET_ASSIST_CUBE = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D", "List E", "List F", "List G", "List H" };
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated list"};	

	private float interpFactor[] = null;
	private float[][] listes = new float[8][];
	private float[] resultat = new float[0]; // ça permet de savoir si on a fait le calcul...
	private String buf_name = null;
	private byte combienInput;
	
	private int outputmode = 0;
	private byte mode = 0;
	private boolean autotrigger = false;
	private	int channel = 1;
	
	/**
	 * Create a linterp object.
	 * @param args none or "quad", "cube", "weight" specify linterp behavior
	 */
	public linterp(Atom[] args)	{
		if (args.length > 0 && args[0].isString()) {
			// premier argument est une chaine
			if (args[0].getString().equals("quad")) {        // mode quad
				this.mode = 1;
				this.combienInput = 4;
				declareTypedIO("lllll", "l");
			} else if (args[0].getString().equals("cube")) { // mode cube
				this.mode = 2;
				this.combienInput = 8;
				declareTypedIO("lllllllll", "l");
			} else if (args[0].getString().equals("weight") && args.length > 1) { // mode poids
				if (args[1].isInt() && args[1].getInt() > 1 && args[1].getInt() <= 8) { // l'arguement doit être un entier compris entre 2 et 8
					this.mode = 3;
					combienInput = (byte) (args[1].getInt());
					
					declareIO(combienInput + 1, 1); // il y a une entrée de plus pour les facteurs d'interpolation
				} else
					bail("bad argument for argument weigth (int between 1 and 8 expected)");
			} else {
				bail("unkown argument for ej.linterp... have a look to the help file.");
			}
		} else {
			this.mode = 0; // mais on le savait déjà
			this.combienInput = 2;
			declareTypedIO("fll", "l");
		}

		
		declareAttribute("outputmode", null, "setMode");
		declareAttribute("channel", null, "setChannel");
		declareAttribute("buf_name");
		declareAttribute("autotrigger");
		createInfoOutlet(false);
		
		checkInletAssistance(); // choix de l'assistance en fonction du mode...
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
		
	private void checkInletAssistance() {
		switch (mode) {
			case 0:
				setInletAssist(INLET_ASSIST);
				break;
			case  1:
				setInletAssist(INLET_ASSIST_QUAD);
				break;
			case 2:
				setInletAssist(INLET_ASSIST_CUBE);
				break;
			case 3:
				setInletAssist(createWeightAssistance());
				break;
		}
	}

	private String[] createWeightAssistance() {
		String[] theString = new String[combienInput];
		
		for (byte idx = 0; idx < theString.length; idx++) 
			theString[idx] = INLET_ASSIST_CUBE[idx];

		return theString;
	}
	
	/**
	 * Re-Trigger the calculation.
	 */
	public void bang() {
		calcule();
	}
	
	private void setInput(int inlet, float args) {
		if (inlet > 0 && inlet <= combienInput) {
			listes[inlet - 1] = new float[]{ args };
		}
	}
	
	private void setInput(int inlet, float[] args) {
		if (inlet > 0 && inlet <= combienInput) {
			listes[inlet - 1] = args;
		}
	}
	
	/**
	 * Define "where" we are in the interpolation (mode 1D only).
	 * @param args
	 */
	public void inlet(float args) {
		switch (getInlet()) {
			case 0:
				setInterpFactor(args);
				calcule();
				return;// car c'est déclenché aussi à la fin de la méthode
			default:
				setInput(getInlet(), args);
		}
		
		if (autotrigger) calcule();
	}
	
	/**
	 * If the list arrives from the left most inlet: define "where" we are in the interpolation.
	 * <p>else set the list to be interpolated.
	 * @param list to be interpolated or list of "position"
	 */
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				if (mode > 0) {
					setInterpFactor(args);
					calcule();
					return;
				}
				// else
				error("no list expected here (in this mode)");
				setInterpFactor(args);   // comme on est pas rancunier on va utiliser le premier argument
				break;
			default:
				setInput(getInlet(), args);
		}
		
//		listes = new float[][] { a, b, c, d, e, f, g, h };
		if (autotrigger) calcule();
	}

	private void setInterpFactor(float args) {
		if (mode != 3) {
			interpFactor = new float[]{ args, args, args };
		} else
			interpFactor = normalize(new float[]{ args });
	}
	
	private void setInterpFactor(float[] args) {			
		/*
		 * on met toujours trois éléments ans le tableau
		 * comme ça on a pas de problème quand on change de mode...
		 */
		if (mode != 3) {
			switch (args.length) {
				case 1:
					interpFactor = new float[]{ args[0], args[0], args[0] };
					break;
				case 2:
					interpFactor = new float[]{ args[0], args[1], 0f};
					break;
				case 3:
					interpFactor = args;
					break;
				default:
					error("too many arguments, you may have to try the weight mode...");
			}
		} else {
			interpFactor = normalize(args);
		}
	}
	
	private float[] normalize(float[] args) {
		int i;
		double max = 0;
		
		for (i = 0; i < args.length; i++)
			max += args[i];
		
		// si la somme est égale à 1, c'est pas la peine de le normaliser
		if (max == 1)
			return args;
		
		// sinon on divise chaque élément par le maximum
		for (i = 0; i < args.length; i++)
			args[i] /= max;
		
		return args;
	}
	
	private void calcule() {
		if (interpFactor == null)
			return;
		
		if (mode == 0) {
			if (resultat.length > 0 || inputCheck((byte) 2)) {
				resultat = new float[Math.min(listes[0].length, listes[1].length)];
				
				for (int i = 0; i < resultat.length; i++)
					resultat[i] = listes[1][i] * interpFactor[0] + (1 - interpFactor[0]) * listes[0][i];
			}
		} else if (mode == 1) {
			if (resultat.length > 0 || inputCheck((byte) 4)) {
				resultat = new float[findSmallestList()];

				for (int i = 0; i < resultat.length; i++) {
					resultat[i] =
						listes[0][i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) + 
						listes[1][i] * interpFactor[0] * (1 - interpFactor[1]) +
						listes[2][i] * (1 - interpFactor[0]) * interpFactor[1] +
						listes[3][i] * interpFactor[0] * interpFactor[1];
				}
			}
		} else if (mode == 2) {
			// resultat.length > 0 quand on a déjà sorti quelque chose (ce qui veut dire que toutes les listes ont été remplies)
			if (resultat.length > 0 || inputCheck((byte) 8)) {
				resultat = new float[findSmallestList()];

				for (int i = 0; i < resultat.length; i++) {
					resultat[i] =
						listes[0][i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * (1 - interpFactor[2]) + 
						listes[1][i] * interpFactor[0] * (1 - interpFactor[1]) * (1 - interpFactor[2]) +
						listes[2][i] * (1 - interpFactor[0]) * interpFactor[1] * (1 - interpFactor[2]) +
						listes[3][i] * interpFactor[0] * interpFactor[1] * (1 - interpFactor[2]) +
						listes[4][i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * interpFactor[2] + 
						listes[5][i] * interpFactor[0] * (1 - interpFactor[1]) * interpFactor[2] +
						listes[6][i] * (1 - interpFactor[0]) * interpFactor[1] * interpFactor[2] +
						listes[7][i] * interpFactor[0] * interpFactor[1] * interpFactor[2];
				}
			}	
		} else {
			// quelque chose me dit que c'est le mode 3...
			if (resultat.length > 0 || inputCheck((byte) Math.min(combienInput, interpFactor.length))) {
				resultat = new float[findSmallestList()];

				int i, j;
				for (i = j = 0; i < resultat.length; i++) {
					resultat[i] = 0;
					for (j = 0; j < Math.min(combienInput, interpFactor.length); j++) {
						resultat[i] += listes[j][i] * interpFactor[j];
					}
				}
			}
		}
		
		doOutput();
	}
	
	private boolean inputCheck(byte byteArg) {
		// c'est pas très élégant...
		byte flag = 0;
		
		try {
			for (int i = 0; i < combienInput; i++) {
				if (listes[i].length > 0)
					flag++;
			}
		} catch (Exception e) {
		}

		if (byteArg == flag)
			return true;
		// else
		return false;
	}
	
	private int findSmallestList() {
		int min = 0;

		for (byte idx = 0; idx < combienInput; idx++) {
			if (listes[idx].length > min) {
				min = listes[idx].length;
			}
		}
		
		return min;
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