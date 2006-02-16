/*
 *	ej.lop by Emmanuel Jourdan, Ircam Ñ 12 2005
 *	list operator
 *
 *  Many thanks to Ben Nevile.
 *
 *	$Revision: 1.11 $
 *	$Date: 2006/02/16 16:51:58 $
 */

package ej;

import com.cycling74.max.*;
import java.util.Arrays;

public class lop extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "Left Operand", "Right Operand" };
	private static final String[] INLET_ASSIST_UNARY = new String[]{ "List to be processed", "Nothing here, for this operator" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Result", "dumpout"};
	private static final String[] OPERATORS_LIST = new String[] {
		"+", "-", "!-", "*", "abs", "absdiff", "/", "!/", "%", "!%", "min", "max", "avg",
		">", "<", ">=", "<=", "==", "!=", ">p", "<p", ">=p", "<=p", "==p", "!=p", "sin",
		"cos", "tan", "asin", "acos", "atan", "atan2", "ceil", "floor", "round", "exp", "ln", "log2", "log10", "pow", "sqrt" };
	private static final String[] UNARY_OP = new String[] {
		"abs", "sin", "cos", "tan", "asin", "acos", "atan","ceil", "floor", "round",
		"exp", "ln", "log2", "log10", "sqrt" };
	
	private float[] a = new float[1];
	private float[] b = new float[1];
	private String op = "*"; // il y en faut bien un par dŽfaut
	private boolean scalarmode = false;
	private boolean autotrigger = false;
	private boolean aSet = false;
	private boolean bSet = false;
	private ListOperator myListOperator;
	
	public lop(Atom[] args)	{
		declareTypedIO("al", "l");
		createInfoOutlet(true);

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		declareAttribute("op", null, "setOp");
		declareAttribute("autotrigger");
		declareAttribute("scalarmode");
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
		else if (tmp.equals("abs"))
			myListOperator = new ListAbs();
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
			myListOperator = new ListGTPass();
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
		else if (tmp.equals("sin"))
			myListOperator = new ListSin();
		else if (tmp.equals("cos"))
			myListOperator = new ListCos();
		else if (tmp.equals("tan"))
			myListOperator = new ListTan();
		else if (tmp.equals("asin"))
			myListOperator = new ListAsin();
		else if (tmp.equals("acos"))
			myListOperator = new ListAcos();
		else if (tmp.equals("atan"))
			myListOperator = new ListAtan();
		else if (tmp.equals("atan2"))
			myListOperator = new ListAtan2();
		else if (tmp.equals("ceil"))
			myListOperator = new ListCeil();
		else if (tmp.equals("floor"))
			myListOperator = new ListFloor();
		else if (tmp.equals("round"))
			myListOperator = new ListRound();
		else if (tmp.equals("exp"))
			myListOperator = new ListExp();
		else if (tmp.equals("ln"))
			myListOperator = new ListLn();
		else if (tmp.equals("log2"))
			myListOperator = new ListLog2();
		else if (tmp.equals("log10"))
			myListOperator = new ListLog10();
		else if (tmp.equals("pow"))
			myListOperator = new ListPow();
		else if (tmp.equals("sqrt"))
			myListOperator = new ListSqrt();
		else {
			error("ej.lop: " + op + " is not a valid operator");
			return;      // get out of here...
		}

		op = tmp;
		isUnary();
	}
	
	private void isUnary() {
		// choix de l'assistance
		boolean unaryOrNot = false;
		
		for (int i = 0; i < UNARY_OP.length; i++) {
			if (op.equals(UNARY_OP[i])) {
				unaryOrNot = true;
				break;
			}
		}
		
		if (unaryOrNot)
			setInletAssist(INLET_ASSIST_UNARY);
		else
			setInletAssist(INLET_ASSIST);
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
	
	public void inlet(float f) {
		if (scalarmode == true) {
			if (getInlet() == 1) {
				bSet = true;
				b = new float[a.length];
				Arrays.fill(b, f);
				
				if (autotrigger == true) calcule();
			} else {
				aSet = true;
				a = new float[b.length];
				Arrays.fill(a, f);

				calcule();	
			}
		}
	}
	
	public void list(float[] args) {
		if (getInlet() == 1) {
			bSet = true;
			b = args;

			if (autotrigger == true) calcule();
		} else {
			aSet = true;
			a = args;

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