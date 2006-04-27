/*
 *	ej.linterp by Emmanuel Jourdan, Ircam — 04 2005
 *	simple list interpolator
 *
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/27 18:49:27 $
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.*;

public class linterp extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "interpolation factor (0. = A -> 1. = B)", "List A", "List B" };
	private static final String[] INLET_ASSIST_QUAD = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D" };
	private static final String[] INLET_ASSIST_CUBE = new String[]{ "interpolation factor (list)", "List A", "List B", "List C", "List D", "List E", "List F", "List G", "List H" };
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated list"};	

	private float interpFactor[] = new float[]{ 0f };
	private float[] a, b, c, d, e, f, g, h; // pour chaque entrée...
	private float[][] listeDesListes = new float[][] { a, b, c, d, e, f, g, h };
	private float[] resultat = new float[0]; // ça permet de savoir si on a fait le calcul...
	private String buf_name = null;
	private byte combienWeight;
	
	private byte outputmode = 0;
	private byte mode = 0;
	private boolean autotrigger = false;
	
	public linterp(Atom[] args)	{
		if (args.length > 0 && args[0].isString()) {
			// premier argument est une chaine
			if (args[0].getString().equals("quad")) {        // mode quad
				this.mode = 1;
				this.combienWeight = 4;
				declareTypedIO("lllll", "l");
			} else if (args[0].getString().equals("cube")) { // mode cube
				this.mode = 2;
				this.combienWeight = 8;
				declareTypedIO("lllllllll", "l");
			} else if (args[0].getString().equals("weight") && args.length > 1) { // mode poids
				if (args[1].isInt() && args[1].getInt() > 1 && args[1].getInt() <= 8) { // l'arguement doit être un entier compris entre 2 et 8
					this.mode = 3;
					combienWeight = (byte) (args[1].getInt());
					
					declareIO(combienWeight + 1, 1); // il y a une entrée de plus pour les facteurs d'interpolation
				} else
					bail("bad argument for argument weigth (int between 1 and 8 expected)");
			} else {
				bail("unkown argument for ej.linterp");
			}
		} else {
			this.mode = 0; // mais on le savait déjà
			this.combienWeight = 2;
			declareTypedIO("fll", "l");
		}

		
		declareAttribute("outputmode", null, "setMode");
		declareAttribute("buf_name");
		declareAttribute("autotrigger");
		createInfoOutlet(false);
		
		checkInletAssistance(); // choix de l'assistance en fonction du mode...
		setOutletAssist(OUTLET_ASSIST);
	}
	
	private void setMode(int i) {
		if (i >= 0 && i <= 2)
			outputmode = (byte) i;
		else
			outputmode = 0;
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
		}
	}
	
	public void bang() {
		calcule();
	}
	
	public void inlet(float f) {
		switch (getInlet()) {
			case 0:
				interpFactor = new float[] { f, f, f };
				calcule();
				return;// car c'est déclenché aussi à la fin de la méthode
			case 1: a = new float[]{ f }; break;
			case 2: b = new float[]{ f }; break;
			case 3: c = new float[]{ f }; break;
			case 4: d = new float[]{ f }; break;
		}
		
		if (autotrigger) calcule();
	}
	
	public void list(float[] args) {
		switch (getInlet()) {
			case 0:
				if (mode > 0) {
					setInterpFactor(args);
					calcule();
					return;
				} else {
					error("no list expected here (in this mode)");
					setInterpFactor(args);   // comme on est pas rancunier on va utiliser le premier argument
				}
				break;
			case 1: a = args; break;
			case 2: b = args; break;
			case 3: c = args; break;
			case 4: d = args; break;
			case 5: e = args; break;
			case 6: f = args; break;
			case 7: g = args; break;
			case 8: h = args; break;
		}
		
		listeDesListes = new float[][] { a, b, c, d, e, f, g, h };
		if (autotrigger) calcule();
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
					error("too many arguments, try the weight mode...");
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
		
		for (i = 0; i < args.length; i++)
			args[i] /= max;
		
		return args;
	}
	
	private void calcule() {
		if (mode == 0) {
			if (resultat.length > 0 || inputCheck((byte) 2)) {
				resultat = new float[Math.min(a.length, b.length)];
				
				for (int i = 0; i < resultat.length; i++)
					resultat[i] = b[i] * interpFactor[0] + (1 - interpFactor[0]) * a[i];
			}
		} else if (mode == 1) {
			if (resultat.length > 0 || inputCheck((byte) 4)) {
				resultat = new float[Math.min(Math.min(a.length, b.length), Math.min(c.length, d.length))];

				for (int i = 0; i < resultat.length; i++) {
					resultat[i] =
						a[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) + 
						b[i] * interpFactor[0] * (1 - interpFactor[1]) +
						c[i] * (1 - interpFactor[0]) * interpFactor[1] +
						d[i] * interpFactor[0] * interpFactor[1];
					
				}
			}
		} else if (mode == 2) {
			// resultat.length > 0 quand on a déjà sorti quelque chose (ce qui veut dire que toutes les listes ont été remplies)
			if (resultat.length > 0 || inputCheck((byte) 8)) {
				resultat = new float[Math.min(
											  Math.min(Math.min(a.length, b.length), Math.min(c.length, d.length)),
											  Math.min(Math.min(e.length, f.length), Math.min(g.length, h.length))
											  )];

				for (int i = 0; i < resultat.length; i++) {
					resultat[i] =
						a[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * (1 - interpFactor[2]) + 
						b[i] * interpFactor[0] * (1 - interpFactor[1]) * (1 - interpFactor[2]) +
						c[i] * (1 - interpFactor[0]) * interpFactor[1] * (1 - interpFactor[2]) +
						d[i] * interpFactor[0] * interpFactor[1] * (1 - interpFactor[2]) +
						e[i] * (1 - interpFactor[0]) * (1 - interpFactor[1]) * interpFactor[2] + 
						f[i] * interpFactor[0] * (1 - interpFactor[1]) * interpFactor[2] +
						g[i] * (1 - interpFactor[0]) * interpFactor[1] * interpFactor[2] +
						h[i] * interpFactor[0] * interpFactor[1] * interpFactor[2];
				}
			}	
		} else {
			if (resultat.length > 0 || inputCheck((byte) Math.min(combienWeight, interpFactor.length))) {
				resultat = new float[findSmallestList()];

				int i, j;
				for (i = j = 0; i < resultat.length; i++) {
					resultat[i] = 0;
					for (j = 0; j < Math.min(combienWeight, interpFactor.length); j++) {
						resultat[i] += listeDesListes[j][i] * interpFactor[j];
					}
				}
			}
		}
		

		switch (outputmode) {
			case  0:
				outlet(0, resultat);
				break;
			case  1:
				writeToBuffer();
				break;
			case 2:
				outlet(0, resultat);
				writeToBuffer();
				break;
		}
	}
	
	private boolean inputCheck(byte byteArg) {
		// c'est pas très élégant...
		byte flag = 0;
		
		try {
			for (int i = 0; i < combienWeight; i++) {
				if (listeDesListes[i].length > 0)
					flag++;
			}
		} catch (Exception e) {
		}

		if (byteArg == flag)
			return true;
		else
			return false;
	}
	
	private int findSmallestList() {
		int min = 0;

		for (byte b = 0; b < combienWeight; b++) {
			if (listeDesListes[b].length > min) {
				min = listeDesListes[b].length;
			}
		}
		
		return min;
	}
	
	private void writeToBuffer() {
		if (buf_name != null && resultat.length > 0) {
			MSPBuffer.poke(buf_name, resultat);
		}
	}
}