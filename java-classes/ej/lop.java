/*
 *	ej.lop by Emmanuel Jourdan, e--j dev — 12 2005
 *	list operator
 *
 *  Many thanks to Ben Nevile for performances enhacement.
 *
 *	$Revision: 1.25 $
 *	$Date: 2008/04/02 15:30:40 $
 */

package ej;
import com.cycling74.max.*;

/**
 * list operator: perform calculation on lists.
 * @author jourdan
 * @see ej
 */
public class lop extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "Left Operand", "Right Operand" };
	private static final String[] INLET_ASSIST_UNARY = new String[]{ "List to be processed", "Nothing here, for this operator" };
	private static final String[] OUTLET_ASSIST = new String[]{ "Result", "dumpout"};
	private static final String[] OPERATORS_LIST = new String[] {
		"+", "\\-", "!-", "*", "abs", "absdiff", "/", "!/", "//", "!//", "%", "!%", "min", "max", "avg",
		">", "<", ">=", "<=", "==", "!=", ">p", "<p", ">=p", "<=p", "==p", "!=p", "sin",
		"cos", "tan", "asin", "acos", "atan", "atan2", "ceil", "floor", "round", "trunc",
		"exp", "ln", "log2", "log10", "pow", "sqrt", "atodb", "dbtoa" };
	private static final String[] UNARY_OP = new String[] {
		"abs", "sin", "cos", "tan", "asin", "acos", "atan", "ceil", "floor", "round", "trunc",
		"exp", "ln", "log2", "log10", "sqrt", "atodb", "dbtoa" };
	
	private float[] a = new float[0];
	private float[] b = new float[0];
	private String op = "*"; // il y en faut bien un par défaut
	private boolean scalarmode = false;
	private boolean autotrigger = false;
	private boolean aSet = false;
	private boolean bSet = false;
	private boolean isUnary = false;
	private ListOperator myListOperator;

	/**
	 * Create a lop object. The optional arguments define the operand and the default values.
	 * @param args operand, optionaly followed by the list of the default values (like the second inlet).
	 */
	public lop(Atom[] args)	{
		declareTypedIO("al", "l");
		createInfoOutlet(true);

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		// premier argument défini l'opérateur
		if (args.length > 0)
			setOp(new Atom[] { args[0] });
		
		// arguments suivants définissent les valeurs par défaut
		if (args.length > 1)
			setVal(generateValFromArgs(args));
		
		declareAttribute("op", null, "setOp");
		declareAttribute("autotrigger");
		declareAttribute("scalarmode");
		declareAttribute("val", "getVal", "setVal");
	}

	private float[] generateValFromArgs(Atom[] a) {
		float[] tmp = new float[a.length - 1]; // 1 de moins car le premier est le nom de l'opérateur
		
		for (int i = 1; i < a.length; i++) {
			if (a[i].isInt())
				tmp[i-1] = a[i].getInt();
			else if (a[i].isFloat())
				tmp[i-1] = a[i].getFloat();
			else
				error("ej.lop: " + a[i].toString() + " bad argument: int/float expected");// du coup il ne va rien écrire dans tmp[i]
		}
		
		return tmp;
	}
	
	private void setVal(float[] args) {
		if (args.length > 0) {
			bSet = true;
			b = args;
		}
	}
	
	private float[] getVal() {
		return b;
	}

	private void setOp(Atom[] a) {
		String tmp = Atom.toOneString(a);

		// lucky I made a script to generate that :-)
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
		else if (tmp.equals("//"))
			myListOperator = new ListIntDiv();
		else if (tmp.equals("!//"))
			myListOperator = new ListInvIntDiv();
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
		else if (tmp.equals("trunc"))
			myListOperator = new ListTrunc();
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
		else if (tmp.equals("atodb"))
			myListOperator = new ListAtodb();
		else if (tmp.equals("dbtoa"))
			myListOperator = new ListDbtoa();
		else {
			error("ej.lop: " + tmp + " is not a valid operator");
			return;      // get out of here...
		}

		op = tmp;
		isUnary(); // assistance changes while it's unary...
	}
	
	private void isUnary() {
		// choix de l'assistance
		isUnary = false;
		
		for (int i = 0; i < UNARY_OP.length; i++) {
			if (op.equals(UNARY_OP[i])) {
				isUnary = true;
				break;
			}
		}
		
		if (isUnary)
			setInletAssist(INLET_ASSIST_UNARY);
		else
			setInletAssist(INLET_ASSIST);
	}
	
	private void calcule() {
		// si c'est unary il n'y a pas besoin de ce poser de question
		if (isUnary == true)
			outlet(0, myListOperator.operate(a, 0)); // au lieu d'avoir encore un constructeur
		else if (scalarmode == false || (a.length > 1 && b.length > 1))		// si c'est pas scalarmode ou que les deux entrées ont reçues des listes
			outlet(0, myListOperator.operate(a, b));
		else if (scalarmode == true && b.length == 1)
			outlet(0, myListOperator.operate(a, b[0]));
		else if (scalarmode == true && a.length == 1)
			outlet(0, myListOperator.operate(a[0], b));
		// else : scalarmode est true mais l'une des deux listes n'est pas définie
	}
	
	/**
	 * Re-Trigger the calculation
	 */
	public void bang() {
		if ( aSet == true || bSet == true) {
				calcule();
		}
	}

	/**
	 * Apply the calculation on the integer value, then trigger the calculation if the value arrive in the left inlet or if the <i>@autotrigger</i> mode is set to 1
	 * @param f int value 
	 */
	public void inlet(int i) {
		inlet((float) i);
	}
	
	/**
	 * Apply the calculation on the floating point value, then trigger the calculation if the value arrive in the left inlet or if the <i>@autotrigger</i> mode is set to 1
	 * @param f float value 
	 */
	public void inlet(float f) {
		if (getInlet() == 1) {
			bSet = true;
			b = new float[] { f };
			
			if (autotrigger == true) calcule();
		} else {
			aSet = true;
			a = new float[] { f };

			calcule();	
		}
	}
	
	/**
	 * Set the value, and then trigger the calculation (if the value arrive in the left inlet, or if the <i>@autotrigger</i> mode is set to 1).
	 */
	public void list(float[] args) {
		// beaucoup plus efficace que list(Atom[] args)
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
	
	/**
	 * Send the list of the availlable operators to the dumpout outlet.
	 */
	public void getops() {
		outlet(1, "ops", Atom.newAtom(OPERATORS_LIST));
	}

//	public void anything(String s, Atom[] args) {
//		error("ej.lop: doesn't understand " + s + " " + Atom.toOneString(args));
//	}
}