/*
 *	ej.lchange by Emmanuel Jourdan, Ircam Ñ 12 2005
 *	aware of list change
 *
 *	$Revision: 1.7 $
 *	$Date: 2006/05/15 10:21:23 $
 */

package ej;

import com.cycling74.max.*;

public class lchange extends ej
{
	private static final String[] INLET_ASSIST = new String[]{ "Repeted" };
	private static final String[] OUTLET_ASSIST = new String[]{ "result if different from the last one"	};

	private Atom[] lastThing = new Atom[0]; // c'est lˆ qu'on met la dernire chose
	private int mode = 0;
	
	public lchange(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		//		createInfoOutlet(false); // on en a besoin pour l'attribut

		declareAttribute("mode", null, "setMode");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void anything(String s, Atom[] args)
	{
		// si la longueur est diffŽrente
		if (lastThing.length != (args.length + 1)) {
			isDifferent(s, args);
		} else {
			compareItems(s, args);
		}
	}
	
	private void setMode(Atom[] a)
	{
		if (a[0].isString()) {
			if (a[0].getString().equals("thru"))
				mode = 0;
			else if (a[0].getString().equals("bang"))
				mode = 1;
			else if (a[0].getString().equals("int"))
				mode = 2;
			else
				error("bad argument for attribute mode");
		} else if (a[0].isInt() && a[0].getInt() >= 0 && a[0].getInt() <= 2) {
			mode = a[0].getInt();
		}
		// On ignore le fait que c'est soit du float.
	}
	
	private void isDifferent(String s, Atom[] args)
	{
		// en fonction du mode on sort des infos diffŽrentes
		if (mode == 0)
			outlet(0, s, args);
		else if (mode == 1)
			outlet(0, "bang");
		else if (mode == 2)
			outlet(0, 1);

		updateLastThing(s, args);
	}

	private void isEqual()
	{
		// mode int on envoie 0 car c'est Žgal
		if (mode == 2)
			outlet(0, 0);
	}
	
	private void updateLastThing(String s, Atom[] args)
	{
		// copie dans la liste actuelle dans lastThing
		lastThing = new Atom[args.length + 1];
		lastThing[0] = Atom.newAtom(s);
		System.arraycopy(args, 0, lastThing, 1, args.length);
	}
	
	private void compareItems(String s, Atom[] args)
	{
		if (lastThing[0].equals(Atom.newAtom(s)) ) {
			int i;
			for (i = 1; i < (args.length + 1); i++) {
				if ( lastThing[i].equals(args[i - 1]) == false ) {
					isDifferent(s, args);
					return; // c'est diffŽrent on se casse en vitesse
				}
			}
			// si la boucle continue jusqu'ˆ la fin, c'est que les ŽlŽments sont identiques.
			isEqual();
		} else {
			// c'est diffŽrent
			isDifferent(s, args);
		}
	}
}