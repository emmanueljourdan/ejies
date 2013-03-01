/*
 *	ej.lchange by Emmanuel Jourdan, e--j dev — 12 2005
 *	aware of list change
 *
 *	$Revision: 1.11 $
 *	$Date: 2007/02/15 11:00:04 $
 */

package ej;

import com.cycling74.max.*;

/**
 * aware of list change
 * @author jourdan
 * @see ej
 * @version $Revision: 1.11 $
 */
public class lchange extends ejies
{
	private static final String[] INLET_ASSIST = new String[]{ "Anything to be tested" };
	private static final String[][] OUTLET_ASSIST = new String[][] {
						new String[] {"Result if different from the last one"},
						new String[] {"bang when the list change"}, 
						new String[] {"1 when the list change, 0 otherwise"}
						};

	private Atom[] lastThing = new Atom[0]; // c'est là qu'on met la dernière chose
	private int mode = 0;
	
	/**
	 * create a lchange object
	 * @param mode attribute to set the lchange's behavior <i>(thru, int, bang)</i>
	 */
	public lchange(Atom[] mode)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		//		createInfoOutlet(false); // on en a besoin pour l'attribut

		if (mode.length > 0)
			setMode(mode);
		
		declareAttribute("mode", null, "setMode");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST[this.mode]);
	}

	/**
	 * Int to be tested
	 * @param i
	 */
	public void inlet(int i) {
		anything("int", new Atom[] { Atom.newAtom(i) });
	}
	
	/**
	 * Float to be tested
	 * @parm f
	 */
	public void inlet(float f) {
		anything("float", new Atom[] { Atom.newAtom(f) });
	}
		
	/**
	 * Anything to be test, can be symbol or list...
	 * @param s messagename 
	 * @param args arguments <i>(optional)</i>
	 */
	public void anything(String s, Atom[] args)
	{
		// si la longueur est différente
		if (lastThing.length != (args.length + 1)) {
			isDifferent(s, args);
		} else {
			compareItems(s, args);
		}
	}
	
	/**
	 * Replace the stored "anything" without triggering the output.
	 * @param a
	 */
	public void set(Atom[] a) {
		if (a.length == 1) {
			if (a[0].isInt())
				updateLastThing("int", a);
			else if (a[0].isFloat())
				updateLastThing("float", a);
			else
				updateLastThing(a[0].getString(), new Atom[] { } );
		} else if (a.length > 1) {
				if (isNumber(a[0]))
					updateLastThing("list", a);
				else
					updateLastThing(a[0].toString(), Atom.removeFirst(a));
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
		// en fonction du mode on sort des infos différentes
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
		// mode int on envoie 0 car c'est égal
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
					return; // c'est différent on se casse en vitesse
				}
			}
			// si la boucle continue jusqu'à la fin, c'est que les éléments sont identiques.
			isEqual();
		} else {
			// c'est différent
			isDifferent(s, args);
		}
	}
}