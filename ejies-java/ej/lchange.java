package ej;

import com.cycling74.max.*;
import java.util.*;

public class lchange extends ej
{
	private static final String[] INLET_ASSIST = new String[]{
		"Repeted"
	};
	private static final String[] OUTLET_ASSIST = new String[]{
		"result if different from the last one"
	};

	private Atom[] lastThing = new Atom[0];
	private int mode = 0;
	
	public lchange(Atom[] args)
	{
//		declareInlets(new int[]{DataTypes.ALL});
//		declareOutlets(new int[]{DataTypes.ALL});
		declareTypedIO("a", "a");
//		createInfoOutlet(false);

		declareAttribute("mode", null, "setMode");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
		
	public void anything(String s, Atom[] args)
	{
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
		// On ignore le fait que c'est soit du float, soit un mauvais nombre... c'est sans doute pas bien...
	}
	
	private void isDifferent(String s, Atom[] args)
	{
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
		// mode int on envoie 1
		if (mode == 2)
			outlet(0, 0);
	}
	
	private void updateLastThing(String s, Atom[] args)
	{
		// copie dans le Array qui lastThing
		int i;
		lastThing = new Atom[args.length + 1];
		lastThing[0] = Atom.newAtom(s);
		for (i = 1; i < (args.length + 1); i++) {
			lastThing[i] = args[i - 1];
		}
	}
	
	private void compareItems(String s, Atom[] args)
	{
		if (lastThing[0].equals(Atom.newAtom(s)) ) {
			int i;
			for (i = 1; i < (args.length + 1); i++) {
				if ( ! lastThing[i].equals(args[i - 1]) ) {
					isDifferent(s, args);
					break;
				}
			}
			isEqual();
		} else {
			isDifferent(s, args);
		}
	}
}