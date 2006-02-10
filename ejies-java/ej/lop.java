/*
 *	ej.lop by Emmanuel Jourdan, Ircam Ñ 12 2005
 *	list operator
 *
 *  Many thanks to Ben Nevile.
 *
 *	$Revision: 1.8 $
 *	$Date: 2006/02/10 19:59:02 $
 */

package ej;

import com.cycling74.max.*;

public class lop extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "Left Operand", "Right Operand" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Result", "dumpout"};
	private static final String[] OPERATORS_LIST = new String[] {
		"+", "-", "!-", "*", "absdiff", "/", "!/", "%", "!%", "min", "max", "avg",
		">", "<", ">=", "<=", "==", "!=", ">p", "<p", ">=p", "<=p", "==p", "!=p" };
	
	private float[] a; // = new float[2048];
	private float[] b; // = new float[2048];
	private String op = "*"; // il y en faut bien un par dŽfaut
	private boolean aSet = false;
	private boolean bSet = false;
	private ListOperator myListOperator;
	
	public lop(Atom[] args)	{
		declareTypedIO("al", "l");
		createInfoOutlet(true);

		declareAttribute("op", null, "setOp");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	private void setOp(Atom[] a) {
		String tmp = Atom.toOneString(a);
		
		if (tmp.equals("+"))
			myListOperator = new ListAddition();
		else if (tmp.equals("-"))
			myListOperator = new ListSoustraction();
		else if (tmp.equals("!-"))
			myListOperator = new ListInvSoustraction();
		else if (tmp.equals("*"))
			myListOperator = new ListProduit();
		else if (tmp.equals("absdiff"))
			myListOperator = new ListAbsDiff();
		else if (tmp.equals("/"))
			myListOperator = new ListDivision();
		else if (tmp.equals("!/"))
			myListOperator = new ListInvDivision();
		else if (tmp.equals("%"))
			myListOperator = new ListModulo();
		else if (tmp.equals("!%"))
			myListOperator = new ListInvModulo();
		else if (tmp.equals("min"))
			myListOperator = new ListMinimum();
		else if (tmp.equals("max"))
			myListOperator = new ListMaximum();
		else if (tmp.equals("avg"))
			myListOperator = new ListAverage();
		else if (tmp.equals(">"))
			myListOperator = new ListGT();
		else if (tmp.equals("<"))
			myListOperator = new ListLT();
		else if (tmp.equals(">="))
			myListOperator = new ListGTOE();
		else if (tmp.equals("<="))
			myListOperator = new ListLTOE();
		else if (tmp.equals("=="))
			myListOperator = new ListEqual();
		else if (tmp.equals("!="))
			myListOperator = new ListNotEqual();
		else if (tmp.equals(">p"))
			myListOperator = new ListGTP();
		else if (tmp.equals("<p"))
			myListOperator = new ListLTPass();
		else if (tmp.equals(">=p"))
			myListOperator = new ListGTOEPass();
		else if (tmp.equals("<=p"))
			myListOperator = new ListLTOEPass();
		else if (tmp.equals("==p"))
			myListOperator = new ListEqualPass();
		else if (tmp.equals("!=p"))
			myListOperator = new ListNotEqualPass();
		else {
			error("ej.lop: " + op + " is not a valid operator");
			return;      // get out of here...
		}

		op = tmp;
	}

	public void calcule() {
		if ( aSet == true && bSet == false) {
			b = new float[a.length];
		} else if (aSet == false && bSet == true) {
			a = new float[b.length];
		}
		
		outlet(0, myListOperator.operate(a,b));
	}
	
	public void bang() {
		if ( aSet == true || bSet == true) {
				calcule();
		}
		// sinon on fait rien
	}
    	
	public void list(Atom[] args) {
		if (getInlet() == 1) {
			bSet = true;
			b = Atom.toFloat(args);
		} else {
			aSet = true;
			a = Atom.toFloat(args);

			calcule();			
		}
	}
	
	public void getops() {
		outlet(1, "ops", Atom.newAtom(OPERATORS_LIST));
	}
		
	public void anything(String s, Atom[] args) {
		error("ej.lop: doesn't understand " + s + " " + Atom.toOneString(args));
	}
}