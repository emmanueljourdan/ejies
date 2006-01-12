/*
 *	ej.lop by Emmanuel Jourdan, Ircam — 12 2005
 *	list operator
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/01/12 17:42:22 $
 */

package ej;

import com.cycling74.max.*;

public class lop extends ej
{
	private static final String[] INLET_ASSIST = new String[]{ "Left Operand", "Right Operand" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Result"};

	private static final String[] listOperateurs = { "*", "/", "+", "-", "%", "!-", "!/", "!%", "absdiff"};
	private static final String[] listMethods = {
		"calculeProduit", "calculeDivision", "calculeAddition", "calculeSoustraction", "calculeModulo",
		"calculeInvSoustraction", "calculeInvDivision", "calculeInvModulo", "calculeAbsDiff"
	};

	private float[] a; // = new float[2048];
	private float[] b; // = new float[2048];
	private float[] resultat;
	private String op = null;
	private boolean aSet = false;
	private boolean bSet = false;
	
	public lop(Atom[] args)
	{
//		declareInlets(new int[]{DataTypes.ALL});
//		declareOutlets(new int[]{DataTypes.ALL});
		declareTypedIO("al", "l");
		createInfoOutlet(false);

		declareAttribute("op");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	public void bang()
	{
		if ( aSet == true || bSet == true)
			calcule();
		// sinon on fait rien
	}
   
	public void inlet(int i)
	{
		if (getInlet() == 1)
			post("un int a été reçu");
	}
    
	public void inlet(float f)
	{
		if (getInlet() == 1)
			post("un float a été reçu");
	}
    
    
	public void list(Atom[] args)
	{
		if (getInlet() == 1) {
			bSet = true;
			b = new float[args.length];
			
			for (int i = 0; i < args.length; i++) {
				if (args[i].isInt())
					b[i] = args[i].getInt();
				else
					b[i] = args[i].getFloat();
			}
		} else {
			aSet = true;
			a = new float[args.length];
			
			for (int i = 0; i < args.length; i++) {
				if (args[i].isInt())
					a[i] = args[i].getInt();
				else
					a[i] = args[i].getFloat();
			}

			calcule();
		}
	}
		
	public void anything(String s, Atom[] args)
	{
		post("anything method");
		error("doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	private void calculeAddition()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = a[i] + b[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeSoustraction()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = a[i] - b[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeInvSoustraction()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = b[i] - a[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeProduit()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = a[i] * b[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeAbsDiff()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = Math.abs(a[i] - b[i]);
		}
		
		outlet(0, resultat);
	}

	private void calculeDivision()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = a[i] / b[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeInvDivision()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = b[i] / a[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeModulo()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = a[i] % b[i];
		}
		
		outlet(0, resultat);
	}

	private void calculeInvModulo()
	{
		int i;
		resultat = new float[a.length];

		for (i = 0; i < a.length; i++) {
			resultat[i] = b[i] % a[i];
		}
		
		outlet(0, resultat);
	}

	private void calcule()
	{
		if ( aSet == true && bSet == false) {
			b = new float[a.length];
		} else if (aSet == false && bSet == true) {
			a = new float[b.length];
		}

		if (op.equals("*"))
			calculeProduit();
		else if (op.equals("/"))
			calculeDivision();
		else if (op.equals("+"))
			calculeAddition();
		else if (op.equals("-"))
			calculeSoustraction();
		else if (op.equals("%"))
			calculeModulo();
		else if (op.equals("!-"))
			calculeInvSoustraction();
		else if (op.equals("!/"))
			calculeInvDivision();
		else if (op.equals("!%"))
			calculeInvModulo();
		else if (op.equals("absdiff"))
			calculeAbsDiff();
		else
			error(op + " is not a valid operateur");
	}
}




