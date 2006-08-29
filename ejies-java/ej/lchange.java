/*
 *	ej.lchange by Emmanuel Jourdan, Ircam � 12 2005
 *	aware of list change
 *
 *	$Revision: 1.8 $
 *	$Date: 2006/08/29 15:46:17 $
 */

package ej;

import com.cycling74.max.*;

public class lchange extends ej
{
	private static final String[] INLET_ASSIST = new String[]{ "Anything to be tested" };
	private static final String[][] OUTLET_ASSIST = new String[][] {
						new String[] {"Result if different from the last one"},
						new String[] {"bang when the list change"}, 
						new String[] {"1 when the list change, 0 otherwise"}
						};

	private Atom[] lastThing = new Atom[0]; // c'est l� qu'on met la derni�re chose
	private int mode = 0;
	
	public lchange(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		//		createInfoOutlet(false); // on en a besoin pour l'attribut

		declareAttribute("mode", null, "setMode");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST[mode]);
	}
		
	public void anything(String s, Atom[] args)
	{
		// si la longueur est diff�rente
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
		} else if (a[0].toInt() >= 0 && a[0].toInt() <= 2) {
			mode = a[0].toInt();
		}

		// change assistance string
		setOutletAssist(OUTLET_ASSIST[mode]);
	}
	
	private void isDifferent(String s, Atom[] args)
	{
		// en fonction du mode on sort des infos diff�rentes
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
		// mode int on envoie 0 car c'est �gal
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
					return; // c'est diff�rent on se casse en vitesse
				}
			}
			// si la boucle continue jusqu'� la fin, c'est que les �l�ments sont identiques.
			isEqual();
		} else {
			// c'est diff�rent
			isDifferent(s, args);
		}
	}
}