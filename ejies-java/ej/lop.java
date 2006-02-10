/*
 *	ej.lop by Emmanuel Jourdan, Ircam Ñ 12 2005
 *	list operator
 *
 *	$Revision: 1.6 $
 *	$Date: 2006/02/10 15:14:12 $
 */

package ej;

import com.cycling74.max.*;
import java.lang.reflect.*;

/*
 >p: greater than(pass);
 <p: less than(pass);
 >=p: greater than or equal to(pass);
 <=p: less than or equal to(pass);
 ==p: equal(pass);
 !=p not equal(pass)
  */

public class lop extends ej 
{
	private static final String[] INLET_ASSIST = new String[]{ "Left Operand", "Right Operand" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Result", "dumpout"};

	private static final String[] listOperateurs = { "*", "/", "+", "-", "%", "!-", "!/", "!%", "absdiff", "min", "max", "avg", ">", "<", ">=", "<=", "==", "!="};
	private static final String[] listMethods = {
		"calculeProduit", "calculeDivision", "calculeAddition", "calculeSoustraction", "calculeModulo",
		"calculeInvSoustraction", "calculeInvDivision", "calculeInvModulo", "calculeAbsDiff",
		"calculeMinimum", "calculeMaximum", "calculeAverage",
		"calculeGT", "calculeLT", "calculeGTOE", "calculeLTOE", "calculeEqual", "calculeNotEqual"
	};

	private float[] a; // = new float[2048];
	private float[] b; // = new float[2048];
	private float[] resultat;
	private String op = listOperateurs[0]; // il y en faut bien un par dŽfaut
	private String opMethod = listMethods[0];
	private boolean aSet = false;
	private boolean bSet = false;
	private Class myClass;
	private Method myMethod;
	
	public lop(Atom[] args)
	{
		try {
			myClass = Class.forName( "ej.lop" );
		} catch (Exception e) {
			post(e + "");
		}

		declareTypedIO("al", "la");
		createInfoOutlet(false);

		declareAttribute("op", null, "setOp");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	private void setOp(Atom[] a) throws Exception
	{
		int i;
		op = a[0].getString();
		
		for (i = 0; i < listOperateurs.length; ) {
			if (op.equals(listOperateurs[i])) {
				opMethod = listMethods[i];
				break;
			}
			i++;   // du coup a sert aussi de flag pour vŽrifier que le nom existe bien.
		}

		// is that a true operator?
		if (i >= listOperateurs.length)
			error("ej.lop: " + op + " is not a valid operateur");
		else
			myMethod = myClass.getMethod(opMethod, null ); // null because, there's no argument
	}
	
	public void getops()
	{
		outlet(1, "ops " + listOperateurs.toString());
	}
	
	public void calcule()
		{
		if ( aSet == true && bSet == false) {
			b = new float[a.length];
		} else if (aSet == false && bSet == true) {
			a = new float[b.length];
		}
		
		try {
			resultat = new float[a.length];
			myMethod.invoke(this, null);
			outlet(0, resultat);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void bang() 
	{
		if ( aSet == true || bSet == true) {
			try {
				calcule();
			}
			catch (Exception e) {
				post(e + "");
			}
		}
		// sinon on fait rien
	}
    
	public void list(Atom[] args)
	{
		if (getInlet() == 1) {
			bSet = true;
			b = Atom.toFloat(args);
		} else {
			aSet = true;
			a = Atom.toFloat(args);

			try {
				calcule();
			}
			catch (Exception e) {
				post(e + "");
			}
			
		}
	}
		
	public void anything(String s, Atom[] args)
	{
		error("doesn't understand " + s + " " + Atom.toOneString(args));
	}
	
	
	public void calculeAddition()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] + b[i];
		}
	}

	public void calculeSoustraction()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] - b[i];
		}
	}

	public void calculeInvSoustraction()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = b[i] - a[i];
		}
	}

	public void calculeProduit()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] * b[i];
		}
	}

	public void calculeAbsDiff()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = Math.abs(a[i] - b[i]);
		}
	}

	public void calculeDivision()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] / b[i];
		}
	}

	public void calculeInvDivision()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = b[i] / a[i];
		}
	}

	public void calculeModulo()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] % b[i];
		}
	}

	public void calculeInvModulo()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = b[i] % a[i];
		}
	}
	
	public void calculeMinimum()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = Math.min(a[i], b[i]);
		}
	}

	public void calculeMaximum()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = Math.max(a[i], b[i]);
		}
	}

	public void calculeAverage()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = (float) ((a[i] + b[i]) / 2.);
		}
	}

	public void calculeGT()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] > b[i] ? 1 : 0;
		}
	}
	
	public void calculeLT()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] < b[i] ? 1 : 0;
		}
	}
	
	public void calculeGTOE()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] >= b[i] ? 1 : 0;
		}
	}
	
	public void calculeLTOE()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] <= b[i] ? 1 : 0;
		}
	}
	
	public void calculeEqual()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] == b[i] ? 1 : 0;
		}
	}

	public void calculeNotEqual()
	{
		for (int i = 0; i < a.length; i++) {
			resultat[i] = a[i] != b[i] ? 1 : 0;
		}
	}
	
}




