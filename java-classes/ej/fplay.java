/*
 *	ej.fplay by Emmanuel Jourdan, e--j dev — 04 2006
 *	function player
 *
 *	$Revision: 1.33 $
 *	$Date: 2010/09/29 10:41:06 $
 */

/**
 * TODO: copy paste entre ej.fplay ? à la funbuff
 */


package ej;

import java.io.*;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.*;


/**
 * Multi function editor (like ej.function.js without the graphics)
 * @version $Revision: 1.33 $
 * @author jourdan
 * @see "ej.function.js"
 */
public class fplay extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "quite anything..."};
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated Y for input X", "points in line~ format", "dump message output", "sync outlet"	};
	private static final int INTERP_OUTLET = 0;
	private static final int LINE_OUTLET = 1;
	private static final int DUMP_OUTLET = 2;
	private static final int DUMPOUT_OUTLET = 3;
	private static final int[] FPLAY_VERSION_NUMBER = new int[] { 3, 7};
	private static final boolean CURVE_MODE = true;
	private static final boolean LINE_MODE = false;
	
	private boolean isAll = false;
	private boolean autosustain = false;
	private boolean outputmode = false;
	private boolean mode = false;	// 1 if it's curve mode
	private ArrayList Courbes = new ArrayList();
	private int current = 0;
	private boolean isDblClickAllowed = false; // dblclick() seems to be triggered too often!
	private int ligneNumber;
	
	private int nbfunctions = 1;

//	public static ArrayList clipboard = new ArrayList();
	
	/**
	 * create a fplay object
	 * @param args <i>optional</i> an int specify the number of functions
	 */
	public fplay(Atom[] args) {
		declareTypedIO("a", "aaa");
		createInfoOutlet(true);
		
		declareAttribute("nbfunctions", "getNbFunctions", "setNbFunctions");
		declareAttribute("autosustain");
		declareAttribute("outputmode");	// pour sortie line~
		declareAttribute("mode", "getCurveMode", "setCurveMode");

		if (args.length >= 1) {
			if (args[0].isInt())
				nbfunctions = args[0].getInt();
			else
				bail("bad argument for ej.fplay: must be an int!");
		}

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		init();	// création des courbes
		isDblClickAllowed = true;
	}
	
	/**
	 * Display functions informations when you double click on the object
	 */
	public void dblclick() {
		if (isDblClickAllowed) {
			// surdéfinition de ej.dblclick()
			post("ej.fplay infos:");
			post("  nbfunctions: " + getNbFunctions());
			post("  mode: " + (mode ? "curve" : "line"));
	
			for (int i = 0; i < getNbFunctions(); i++) {
				post("  name: " + ((Courbe) Courbes.get(i)).getName());
				post("    - nbpoints:     " + ((Courbe) Courbes.get(i)).np());
				post("    - domain (x):  " + ((Courbe) Courbes.get(i)).domain[0] + "    " + ((Courbe) Courbes.get(i)).domain[1]);
				post("    - range (y):    " + ((Courbe) Courbes.get(i)).range[0] + "    " + ((Courbe) Courbes.get(i)).range[1]);
			}
			post("");
		}
	}
	
	// standart messages
	/**
	 * Output all breakpoints of the current function in line format (initial value followed by a list of deltatime-value pairs)
	 */
	public void bang() {
		((Courbe) Courbes.get(current)).line();
	}

	/**
	 * Send the interpolated y for this x for the current function at left outlet
	 * @param i X value
	 */
	public void inlet(int i) {
		myInterp(current, i);
	}

	/**
	 * Send the interpolated y for this x for the current function at left outlet
	 * @param f X value
	 */
	public void inlet(float f) {
		myInterp(current, f);
	}

	/**
	 * Add or move a point
	 * @param args
	 * <br>2 elements (x, y): add the new point at the location <i>x y</i>
	 * <br>3 elements (idx, x, y): move the point <i>idx</i> to the location <i>x y</i>. idx starts at 0.
	 */
	public void list(float[] args) {
		listOfNumbers(current, args);
	}

	/**
	 * Look at any message to know if it's a name of a bpf, or a method's name of this ej.fplay object 
	 */
	public void anything(String s, Atom[] args) {
		isAll = false;
		parseArgs(name2idx(s), args);
	}
	
	/**
	 * Send a message to eveery bpf
	 * @param args quite any message
	 */
	public void all(Atom[] args) {
		isAll = true;	// used to make the differences with anything
		for (int c = 0; c < Courbes.size(); c++)
			parseArgs(c, args);
	}

	// add/remove functions 
	/**
	 * Method used to add a bpf to the object, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 */
	public void addfunction() {
		this.addfunction("function" + Courbes.size());
		nbfunctions++;
		getname();
	}
	
	/**
	 * Method used to add a bpf to the object, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 * @param s name of the bpf
	 */
	public void addfunction(String s) {
		Courbes.add(new Courbe(s));
		nbfunctions++;
		getname();
	}

	/**
	 * inert a bpf at the current location, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 */
	public void insertfunction() {
		Courbes.add(current, new Courbe("function" + Courbes.size()));
		nbfunctions++;
		getname();
	}
	
	/**
	 * insert a bpf at the current location, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 * @param s name of the bpf
	 */
	public void insertfunction(String s) {
		Courbes.add(current, new Courbe(s));
		nbfunctions++;
		getname();
	}

	/**
	 * Delete a bpf, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 * @param i bpf index (start at 0)
	 */
	public void deletefunction(int i) {
		if (i >= 0 && i < Courbes.size()) {
			Courbes.remove(i);
			nbfunctions--;
			getname();
		}
	}

	/**
	 * Delete a bpf, then send the names of the bpf to the dumpout outlet in u(bu)menu format
	 * @param s bfp name
	 */
	public void deletefunction(String s) {
		int tmp = name2idx(s);
		if (tmp != -1) {
			Courbes.remove(tmp);
			nbfunctions--;
			getname();
		} else
			error("function named " + s + " doesn't exist");
	}
	
	/**
	 * Fast method to add points
	 * @param val list of pairs <i>x y</i>
	 */
	public void addpoints(double[] val) {
		((Courbe) Courbes.get(current)).addPoints(val);
	}
	
	/**
	 * Set points from a Jitter matrix.
	 * @param s matrix name (~ address)
	 */
	public void jit_matrix(String s) {
		((Courbe) Courbes.get(current)).jitMatrix(s);
	}
	
	/**
	 * Display a dialog box to select the file to read.
	 */
	public void read() {
		String s;
		if ((s = MaxSystem.openDialog("choose a ej.function or ej.fplay file")) != null)
			read(MaxSystem.maxPathToNativePath(s));
	}

	/**
	 * Attempt to read a text file
	 * @param s file name (if in search path), or file path
	 */
	public void read(String s) {
        String filePath = MaxSystem.locateFile(s);
         if (filePath == null) {
        	 error("can't locate that file");
        	 outlet(DUMPOUT_OUTLET, new Atom[] {
        			 Atom.newAtom("read"),
        			 Atom.newAtom(s),
        			 Atom.newAtom(0)
        			 });
       } else {
        	 outlet(DUMPOUT_OUTLET, new Atom[] {
        			 Atom.newAtom("read"),
        			 Atom.newAtom(MaxSystem.nameConform(filePath, MaxSystem.PATH_STYLE_SLASH, MaxSystem.PATH_TYPE_ABSOLUTE)),
        			 Atom.newAtom(fileParsing(filePath)) /* here is the file parsing, the value returned indicate success or not */
        	 });
         }			
	}

	/**
	 * Display a dialog box to write the contents of the object as a text file.
	 */
	public void write() {
		String s;
		if ((s = MaxSystem.saveAsDialog("choose a ej.function or ej.fplay file","myfunctions.txt")) != null)
			write(MaxSystem.maxPathToNativePath(s));
	}
	
	/**
	 * Write the contents of the objects as a text file
	 * @param s file name (if in the search path), file path
	 */
	public void write(String s) {
		String filePath = null;
		if (s.indexOf("/") == -1)	// si il n'y a pas de slash, il 
			filePath = MaxSystem.getDefaultPath() + s;
		else
			filePath = s;
		
		filePath = MaxSystem.maxPathToNativePath(filePath);
		
		outlet(DUMPOUT_OUTLET, new Atom[] {
				Atom.newAtom("write"),
				Atom.newAtom(MaxSystem.nameConform(filePath, MaxSystem.PATH_STYLE_SLASH, MaxSystem.PATH_TYPE_ABSOLUTE)),
				Atom.newAtom(writing(filePath)) });
	}

	/**
	 * Change the current function to the next one availlable, then send a message to the dumpout outlet.
	 */
	public void fswitch() {
		current = ++current % getNbFunctions();
		outlet(DUMPOUT_OUTLET, "display", current);
	}

	/**
	 * Change the current bpf to... 
	 * @param idx index of the new current bpf
	 */
	public void display(int idx) {
		if (idx >= 0 && idx < getNbFunctions())
			current = idx;
	}

	/**
	 * Change the current bpf to... 
	 * @param s name of the new current bpf
	 */
	public void display(String s) {
		for (int c = 0; c < Courbes.size(); c++) {
			if ((((Courbe) Courbes.get(c)).getName()).equals(s)) {
				current = c;
				break;
			}
		}
	}

	/**
	 * Send the y value of the point (<i>index</i>) to the leftmost outlet.
	 * @param i index of the point
	 */
	public void nth(int i) {
		myNth(current, i);
	}
	
	/**
	 * The next message continues a list output from the sustain point where the output of the last bang or next message ended.
	 */
	public void next() {
		((Courbe) Courbes.get(current)).next();
	}

	/**
	 * send all points to the dump outlet as pair of <i>x y</i>
	 */
	public void dump() {
		((Courbe) Courbes.get(current)).dump();
	}
	
	/**
	 * Send all points to the dump outlet as an unique list which contains pairs of <i>x y</i>
	 */
	public void listdump() {
		((Courbe) Courbes.get(current)).listDump();
	}
	
	/**
	 * Send all points to the dump outlet as a Jitter Matrix (1 plane, 2 dim, type float32)
	 */
	public void dumpmatrix() {
		((Courbe) Courbes.get(current)).dumpMatrix();
	}

	/**
	 * Send all points to a receive object as pair of <i>x y</i>
	 * @param s name of the receive object you want to send it to.
	 */
	public void dump(String s) {
		// methode dump qui envoie vers un send
		((Courbe) Courbes.get(current)).dump(s);
	}
	
	/**
	 * Send all points to a receive object as an unique list which contains paris of <i>x y</i>
	 * @param s name of the receive object you want to send it to.
	 */
	public void listdump(String s) {
		// methode listdump qui envoie vers un send
		((Courbe) Courbes.get(current)).listDump(s);
	}

	/**
	 * Send all points to a receive object as a Jitter Matrix (1 plane, 2 dim, type float32)
	 * @param s name of the receive object you want to send it to.
	 */
	public void dumpmatrix(String s) {
		((Courbe) Courbes.get(current)).dumpMatrix(s);
	}

	/**
	 * Remove all the points of the current bpf
	 */
	public void clear() {
		((Courbe) Courbes.get(current)).clearAllPoints();
	}
	
	/**
	 * Remove the specified points
	 * @param idx index (starting at 0) of the points of the current bpf to be deleted
	 */
	public void clear(int[] idx) {
		((Courbe) Courbes.get(current)).clearPoints(idx);
	}

	/**
	 * Change the name of the current bpf.
	 * @param name new name for the function
	 */
	public void name(String name) {
		myName(current, name);
	}

	/**
	 * Change the names of the functions
	 * @param names names of the functions
	 */
	public void name(String[] names) {
		for (int i = 0; i < Math.min(names.length, nbfunctions); i++)
			myName(i, names[i]);
	}
	
	/**
	 * Change the domain (x axis) dimensions
	 * @param max maximum value (minimum will be 0)
	 */
	public void domain(double max) {
		((Courbe) Courbes.get(current)).domain(0, max);
	}
	
	/**
	 * Change the domain (x axis) dimensions
	 * @param min minimum value
	 * @param max maximum value
	 */
	public void domain(double min, double max) {
		((Courbe) Courbes.get(current)).domain(min, max);
	}

	/**
	 * Change the range (y axis) dimensions
	 * @param min minimum value
	 * @param max maximum value
	 */
	public void range(double min, double max) {
		((Courbe) Courbes.get(current)).range(min, max);
	}
	
	/**
	 * change the domain (change the point's values to fit the domain)
	 * @param max domain maximum value (minimum will be 0)
	 */
	public void setdomain(double max) {
		((Courbe) Courbes.get(current)).setDomain(0, max);
	}
	
	/**
	 * change the domain (change the point's values to fit the domain)
	 * @param min domain minimum value
	 * @param max domain maximum value
	 */
	public void setdomain(double min, double max) {
		((Courbe) Courbes.get(current)).setDomain(min, max);
	}

	/**
	 * change the range (change the point's values to fit the range)
	 * @param min range minimum value
	 * @param max range maximum value
	 */
	public void setrange(double min, double max) {
		((Courbe) Courbes.get(current)).setRange(min, max);
	}
	
	/**
	 * Change the domain depending on the position of the first and last points (lowest and highest <i>x</i> value)
	 */
	public void autodomain() {
		((Courbe) Courbes.get(current)).autoDomain();
	}
	
	/**
	 * Change the range depending on the position of the first and last points (lowest and highest <i>y</i> value)
	 */
	public void autorange() {
		((Courbe) Courbes.get(current)).autoRange();
	}
	
	/**
	 * Normalize all the points of the current function.
	 * This will strech the points to “fill" the domain and the range.
	 */
	public void normalize() {
		((Courbe) Courbes.get(current)).normalize();
	}
	
	/**
	 * Normalize points of the current function depending on the domain.
	 * This will strech the points to “fill" the domain.
	 */
	public void normalize_x() {
		((Courbe) Courbes.get(current)).normalizeX();
	}

	/**
	 * Normalize points of the current function depending on the range.
 	 * This will strech the points to “fill" the range.
	 */
	public void normalize_y() {
		((Courbe) Courbes.get(current)).normalizeY();
	}
	
	/** flip the function on both axis */
	public void flip() {
		((Courbe) Courbes.get(current)).flip();
	}
	
	/** flip the function on the x axis */
	public void flip_x() {
		((Courbe) Courbes.get(current)).flipX();
	}

	/** flip the function on the y axis */
	public void flip_y() {
		((Courbe) Courbes.get(current)).flipY();
	}

	/**
	 * Delete every contigus points with the same <i>y</i> value.
	 */
	public void removeduplicate() {
		((Courbe) Courbes.get(current)).removeDuplicate();
	}
	
	/**
	 * Smooth the <i>y</i> values with the neighboors... 
	 */
	public void smooth() {
		((Courbe) Courbes.get(current)).smooth();
	}
	
	/**
	 * Set the sustain state of the point <i>index</i>
	 * @param idx number of the point (starting at 0)
	 * @param state 1 if the point is sustained, 0 otherwise.
	 */
	public void sustain(int idx, int state) {
		mySustain(current, idx, state);
	}

	/**
	 * Prevents the user from moving a point. 
	 * @param idx index of the point (starting at 0)
	 * @param state <i>1</i> for fix, <i>0</i> for unfix
	 */
	public void fix(int idx, int state) {
		myFix(current, idx, state);
	}


	/*
	 * get methods
	 */
	/**
	 * Send the name of the functions to the dumpout outlet (in umenu format).
	 */
	public void getname() {
		outlet(DUMPOUT_OUTLET, "name", "clear");
		
		for (int c = 0; c < Courbes.size(); c++)
			outlet(DUMPOUT_OUTLET, new String[] {  "name", "append", ((Courbe) Courbes.get(c)).getName() });
	}

	/**
	 * Send the range limits of the current function to the dumpout outlet.
	 */
	public void getdomain() {
		((Courbe) Courbes.get(current)).getDomain();
	}
	
	/**
	 * Send the domain limits of the current function to the dumpout outlet.
	 */
	public void getrange() {
		((Courbe) Courbes.get(current)).getRange();
	}
	
	/**
	 * Send the current function name to the dumpout outlet.
	 */
	public void getcurrent() {
		outlet(DUMPOUT_OUTLET, "current", ((Courbe) Courbes.get(current)).getName());
	}

	/**
	 * Send the function index to the dumpout outlet.
	 */
	public void getdisplay() {
		outlet(DUMPOUT_OUTLET, "display", current);
	}
	
	/**
	 * Get the list of the sustained points of the current function to the dumpout outlet.
	 */
	public void getsustain() {
		myGetSustain(current);
	}
	
	/**
	 * Get the list of the fixed points of the current function to the dumpout outlet.
	 */
	public void getfix() {
		myGetFix(current);
	}

	/**
	 * Remove the sustain state of every point of the current bpf
	 */
	public void clearsustain() {
		((Courbe) Courbes.get(current)).clearSustain();
	}
	
	/**
	 * Set the fix state of every points of the current function to false 
	 */
	public void unfix() {
		((Courbe) Courbes.get(current)).unFix();
	}
	
	/**
	 * Send the number of point of the current function to the dumpout outlet.
	 */
	public void getnbpoints() {
		((Courbe) Courbes.get(current)).getNbPoints();
	}
	
	/**
	 * Send to the dump outlet every informations to synchronize the contents of this ej.fplay with another object like ej.fplay or ej.function.js</i>.
	 */
	public void sync() {
		outlet(DUMP_OUTLET, "nbfunctions", getNbFunctions());
		outlet(DUMP_OUTLET, "mode", mode);
		
		for (int c = 0; c < getNbFunctions(); c++) {
			((Courbe) Courbes.get(c)).syncCourbe(c);
			((Courbe) Courbes.get(c)).syncPoints(c);
		}
	}
	
	/**
	 * Send to the dump outlet every informations to synchronize the current function.
	 */
	public void synccurrent() {
		((Courbe) Courbes.get(current)).syncCourbe(current);
		((Courbe) Courbes.get(current)).syncPoints(current);
	}
	
	/**
 	 * Send to a receive object every information to synchronize the contents of this ej.fplay with another object like ej.fplay or ej.function.js</i>.
	 * @param sendName name of the receive object you'll send the values to
	 */
	public void sync(String sendName) {
		MaxSystem.sendMessageToBoundObject(sendName, "nbfunctions", new Atom[] { Atom.newAtom(getNbFunctions()) });
		MaxSystem.sendMessageToBoundObject(sendName, "mode", new Atom[] { Atom.newAtom(mode) });
		
		for (int c = 0; c < getNbFunctions(); c++) {
			((Courbe) Courbes.get(c)).syncCourbe(c, sendName);
			((Courbe) Courbes.get(c)).syncPoints(c, sendName);
		}

		MaxSystem.sendMessageToBoundObject(sendName, "redrawon", new Atom[] {});
	}
	
	/**
	 * Send to a receive object every informations to synchronize the current function.
	 * @param sendName name of the receive object you'll send the values to
	 */
    public void synccurrent(String sendName) {
		((Courbe) Courbes.get(current)).syncCourbe(current, sendName);
		((Courbe) Courbes.get(current)).syncPoints(current, sendName);

		MaxSystem.sendMessageToBoundObject(sendName, "redrawon", new Atom[] {});
    }

	/**
	 * Message used for the synchronisation. 
	 * @param args <i>[function index]</i> <i>[function name]</i> <i>domain and range</i> 
	 */
	public void syncfunctions(Atom[] args) {
		if (isNumber(args[0]))
			((Courbe) Courbes.get(args[0].toInt())).setSyncFunctions(args);
	}

	/**
	 * Message used for the synchronisation. 
	 * @param val <i>[function index]</i> <i>[val_x val_y state]*</i> 
	 */
	public void syncpoints(double[] val) {
		if (mode)
			((Courbe) Courbes.get((int) val[0])).addCurveTypedPoints(val);
		else
			((Courbe) Courbes.get((int) val[0])).addTypedPoints(val);
	}
	
	/**
	 * used internaly... to store parameters in the patch.
	 */
	public void save() {
		Atom[] names = new Atom[getNbFunctions()];
		Atom[] domainAndRange = new Atom[getNbFunctions() *4];
		
		for (int c = 0; c < getNbFunctions(); c++) {
			names[c] = Atom.newAtom((((Courbe) Courbes.get(c)).getName()));
			domainAndRange[c*4] = Atom.newAtom(((Courbe) Courbes.get(c)).domain[0]);
			domainAndRange[c*4+1] = Atom.newAtom(((Courbe) Courbes.get(c)).domain[1]);
			domainAndRange[c*4+2] = Atom.newAtom(((Courbe) Courbes.get(c)).range[0]);
			domainAndRange[c*4+3] = Atom.newAtom(((Courbe) Courbes.get(c)).range[1]);
		}

		// important informations to be embed in the patch
		embedMessage("nbfunctions", new Atom[]{ Atom.newAtom(getNbFunctions()) });
		embedMessage("name", names);
		embedMessage("domainAndRange", domainAndRange);
	}
	
	/**
	 * used internally... don't use it!
	 * @param args
	 */
	public void domainAndRange(Atom[] args) {
		// called only from the save() method!
		for (int c = 0; c < (args.length / 4); c++) {
			((Courbe) Courbes.get(c)).domain(args[c*4].toDouble(), args[c*4+1].toDouble());
			((Courbe) Courbes.get(c)).range(args[c*4+2].toDouble(), args[c*4+3].toDouble());
		}
	}
	
	/** Does nothing, it's just here for compatibility reasons... */
	public void redrawon() { ; }
	
	/** Does nothing, it's just here for compatibility reasons... */
	public void redrawoff() { ; }
	
	
	/*
	 * private methodes
	 */
	private void parseArgs(int courbeIdx, Atom[] args) {
		if (courbeIdx == -1) {
			error("bad function name or message");
			return;
		}
		
		String msgName = null;
		
		// d'abord les messages à longeur variables
		if (args[0].isString()) {
			msgName = args[0].getString();
			
			if (msgName.equals("clear")) {
				if (args.length == 1)
					((Courbe) Courbes.get(courbeIdx)).clearAllPoints(); // msg : functionName clear
				else
					((Courbe) Courbes.get(courbeIdx)).clearPoints(Atom.removeFirst(args)); // msg: functionName clear Atom[]
				return;
			} else if (msgName.equals("addpoints")) {
				((Courbe) Courbes.get(courbeIdx)).addPoints(Atom.toDouble(Atom.removeFirst(args)));
				return;
			}
		}
		
		if (args.length == 1) {
			if (isNumber(args[0])) {	// un seul argument numérique -> interpolation
				myInterp(courbeIdx, args[0].toFloat());
			} else {
				// args[0] is string
				if (msgName.equals("bang"))
					((Courbe) Courbes.get(courbeIdx)).line();
				else if (msgName.equals("next"))
					((Courbe) Courbes.get(courbeIdx)).next();
				else if (msgName.equals("dump"))
					((Courbe) Courbes.get(courbeIdx)).dump();
				else if (msgName.equals("listdump"))
					((Courbe) Courbes.get(courbeIdx)).listDump();
				else if (msgName.equals("dumpmatrix"))
					((Courbe) Courbes.get(courbeIdx)).dumpMatrix();
				else if (msgName.equals("autodomain"))
					((Courbe) Courbes.get(courbeIdx)).autoDomain();
				else if (msgName.equals("autorange"))
					((Courbe) Courbes.get(courbeIdx)).autoRange();
				else if (msgName.equals("normalize"))
					((Courbe) Courbes.get(courbeIdx)).normalize();
				else if (msgName.equals("normalize_x"))
					((Courbe) Courbes.get(courbeIdx)).normalizeX();
				else if (msgName.equals("normalize_y"))
					((Courbe) Courbes.get(courbeIdx)).normalizeY();
				else if (msgName.equals("flip"))
					((Courbe) Courbes.get(courbeIdx)).flip();
				else if (msgName.equals("flip_x"))
					((Courbe) Courbes.get(courbeIdx)).flipX();
				else if (msgName.equals("flip_y"))
					((Courbe) Courbes.get(courbeIdx)).flipY();
				else if (msgName.equals("removeduplicate"))
					((Courbe) Courbes.get(courbeIdx)).removeDuplicate();
				else if (msgName.equals("smooth"))
					((Courbe) Courbes.get(courbeIdx)).smooth();
				else if (msgName.equals("clearsustain"))
					((Courbe) Courbes.get(courbeIdx)).clearSustain();
				else if (msgName.equals("unfix"))
					((Courbe) Courbes.get(courbeIdx)).unFix();

				// les get(things) sont plus tard...
				else if (msgName.equals("getdomain"))
					((Courbe) Courbes.get(courbeIdx)).getDomain();
				else if (msgName.equals("getrange"))
					((Courbe) Courbes.get(courbeIdx)).getRange();
				else if (msgName.equals("getsustain"))
					myGetSustain(courbeIdx);
				else if (msgName.equals("getfix"))
					myGetFix(courbeIdx);
				else if (msgName.equals("nbpoints"))
					((Courbe) Courbes.get(courbeIdx)).getNbPoints();
				else {
					if (isAll)
						error("bad argument for message all");
					else
						error("bad argument for message anything");
				}
			}
		} else if (args.length == 2) { // 2 nombres
			if (isNumber(args[0]) && isNumber(args[1]))
				((Courbe) Courbes.get(courbeIdx)).addOnePoint(args[0].toFloat(), args[1].toFloat()); // comme dans listOfNumbers
			else {
				if (msgName.equals("dump") && args[1].isString())
					((Courbe) Courbes.get(courbeIdx)).dump(args[1].toString());
				else if (msgName.equals("listdump") && args[1].isString())
					((Courbe) Courbes.get(courbeIdx)).listDump(args[1].toString());
				else if (msgName.equals("dumpmatrix") && args[1].isString())
					((Courbe) Courbes.get(courbeIdx)).dumpMatrix(args[1].toString());
				else if (msgName.equals("domain") && isNumber(args[1]))
					((Courbe) Courbes.get(courbeIdx)).domain(0, args[1].toDouble());
				else if (msgName.equals("setdomain") && isNumber(args[1]))
					((Courbe) Courbes.get(courbeIdx)).setDomain(0, args[1].toDouble());
				else if (msgName.equals("jit_matrix") && args[1].isString())
					((Courbe) Courbes.get(courbeIdx)).jitMatrix(args[1].getString());
				else if (msgName.equals("nth") && isNumber(args[1]))
					myNth(courbeIdx, args[1].toInt());
			}
		} else if (args.length == 3) {
			// trois nombres
			if (isNumber(args[0]) && isNumber(args[1]) && isNumber(args[2]))
				((Courbe) Courbes.get(courbeIdx)).moveOnePoint(args[0].toInt(), args[1].toFloat(), args[2].toFloat());
			else  {
				if (msgName.equals("domain") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).domain(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("setdomain") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).setDomain(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("range") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).range(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("setrange") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).setRange(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("sustain") && isNumber(args[1]) && isNumber(args[2]))
					mySustain(courbeIdx, args[1].toInt(), args[2].toInt());
				else if (msgName.equals("fix") && isNumber(args[1]) && isNumber(args[2]))
					myFix(courbeIdx, args[1].toInt(), args[2].toInt());
			}

		} else if (args.length == 4 && isNumber(args[0]) && isNumber(args[1]) && isNumber(args[2]) && isNumber(args[3])) {
			((Courbe) Courbes.get(courbeIdx)).moveOnePoint(args[0].toInt(), args[1].toFloat(), args[2].toFloat(), args[3].toFloat());
		}
	}
	
	
	private int fileParsing(String filePath) {
		boolean isValidFileType = false;
		String str;
		boolean isEOFCorrect = false;
		ligneNumber = 0;
		
		try {
	        BufferedReader in = new BufferedReader(new FileReader(filePath));
	        
	        try {
	        	while ((str = lectureLigne(in)) != null) {
	        		if (str.matches("(?i).*ej\\.function format.*")) {
	        			isValidFileType = true;
	        			break;
	        		}
	        	}
	
	        	// if it contains ej.function format
	        	if (isValidFileType) {
	        		int idx;
	        		StringTokenizer tok;
		        	int versionNumber;
		        	
	        		try {
		        		tok = new StringTokenizer(lectureLigne(in));
		        		
		        		versionNumber = Integer.parseInt(tok.nextToken());
		        		if (versionNumber < 1 && versionNumber > 7) {
		        			error("bad file version number (line: " + ligneNumber + ")");
		        			in.close();
		        			return -1;			// il faut sortir !
		        		}
		        		
		        		setNbFunctions(Integer.parseInt(tok.nextToken()));	
		        		int[] np = new int[getNbFunctions()]; 
		        		
		        		if (versionNumber == 6 || versionNumber == 7)
		        			mode = CURVE_MODE;	// FPLAY 7 is compatible with ej.function mode 6
		        		else
		        			mode = LINE_MODE;
		        		
		        		if (getNbFunctions() > tok.countTokens()) {
		        			error("missing informations (line: " + ligneNumber + ")");
		        			in.close();
		        			return -1;			// il faut sortir !
		        		}
		        		
		        		for (idx = 0; idx < getNbFunctions(); idx++)
		        			np[idx] = Integer.parseInt(tok.nextToken());
		        		
		        		// for each function
		        		for (int c = 0; c < getNbFunctions(); c++) {
		        			String ligne = lectureLigne(in);

		        			// name, domain min, domain max, range min, range max, gridstep, active
			        		int tmpIdx = lectureFunctionName(c, ligne);
			        		tok = new StringTokenizer(ligne);
			        		for (int j = 0; j < tmpIdx; j++)
			        			tok.nextToken();
			        		
			        		if (versionNumber == 1)
			        			((Courbe) Courbes.get(c)).domain(0., Double.parseDouble(tok.nextToken()));
			        		else
			        			((Courbe) Courbes.get(c)).domain(Double.parseDouble(tok.nextToken()), Double.parseDouble(tok.nextToken()));
			        		
			        		((Courbe) Courbes.get(c)).range(Double.parseDouble(tok.nextToken()), Double.parseDouble(tok.nextToken()));
			        		// ignoring the extra things (gridstep_x, gridstep_y, active)
			        		
			        		if (versionNumber != 3) // saute la ligne contenant les couleurs
			        			lectureLigne(in);
			        		
			        		// add points
			        		for (int i = 0; i < np[c]; i++) {
			        			tok = new StringTokenizer(lectureLigne(in));
			        			if (mode)
				        			((Courbe) Courbes.get(c)).addTypedPoint(tok.nextToken(), tok.nextToken(), tok.nextToken(), tok.nextToken());
			        			else
			        				((Courbe) Courbes.get(c)).addTypedPoint(tok.nextToken(), tok.nextToken(), tok.nextToken());
			        		}
		        		}
	        		} catch (NoSuchElementException e) {
	        			error("ej.fplay: missing information in the file, the object may be corrupted now... (line: " + ligneNumber + ")");
	        			in.close();
	        			return -1;
	        		}
	        		isEOFCorrect = true;
	        	} else
	        		error("ej.fplay: bad file type (line: " + ligneNumber+ ")");
	        } catch (NullPointerException e) {
		        in.close();
	        	post("ej.fplay: end of file ? " + isEOFCorrect);
	        }
	        
	        in.close();
	    } catch (IOException e) {
	    	error("ej.fplay: can't open the file");
	    	return -1;
	    } catch (Exception e) {
	    	// everything else exception
	    	error("ej.fplay: something wrong happen (line: " + ligneNumber + ")");
	    	return -1;
	    }
	    
	    return (isEOFCorrect ? 1: 0);
	}
	
	private int lectureFunctionName(int c, String ligne) throws Exception {
		// get the name of the function, make sure if there's space, that it will work.
		// StreamTokenizer is used to know when the string contains numbers
		// the return value, is the index of the next token (which should be a Double)
		String tmp = "";
		int offsetInLigne = 0;
		
		StreamTokenizer test = new StreamTokenizer(new StringBufferInputStream(ligne));
		if (test.nextToken() == StreamTokenizer.TT_WORD) {
			tmp = test.sval;
			offsetInLigne++;
		
			while (test.nextToken() == StreamTokenizer.TT_WORD) {
				tmp += " " + test.sval; 
				offsetInLigne++;
			}
			((Courbe) Courbes.get(c)).setName(tmp);
			return offsetInLigne;
		}
		
		// else
		error("ej.fplay: error in the function name (line: " + ligneNumber + ")");
		return -1;
	}
	
	private String lectureLigne(BufferedReader in) throws NullPointerException, IOException {
		String str = null;
		do {
			str = in.readLine();
			ligneNumber++;
		} while (str != null && (str.length() < 4 || Pattern.matches(".*\\/\\//*", str)));
	
		return str;
	}

	private int writing(String filePath) {
		boolean isEOFCorrect = false;
		
		try {
			BufferedWriter out = new BufferedWriter(new FileWriter(filePath));
			StringBuffer sb = new StringBuffer();
			int i, c; // not elegant, but less garbage collector
			out.write("ej.function format");
			out.newLine();
	
			sb.append(FPLAY_VERSION_NUMBER[mode ? 1 : 0]+ " " + getNbFunctions()); // version, Nb functions
			for (c = 0; c <  getNbFunctions(); c++)
				sb.append(" " + ((Courbe) Courbes.get(c)).np());
	
			out.write(sb.toString());
			out.newLine();
			
			for (c = 0; c < getNbFunctions(); c++) {
				sb = new StringBuffer();
				out.newLine();
				sb.append(((Courbe) Courbes.get(c)).getName() + " ");
				sb.append(((Courbe) Courbes.get(c)).domain[0] + " ");
				sb.append(((Courbe) Courbes.get(c)).domain[1] + " ");
				sb.append(((Courbe) Courbes.get(c)).range[0] + " ");
				sb.append(((Courbe) Courbes.get(c)).range[1]);

				out.write(sb.toString());
				out.newLine();
	
				for (i = 0; i < ((Courbe) Courbes.get(c)).np(); i++ ) {
					sb = new StringBuffer();
					sb.append(((Courbe) Courbes.get(c)).getPoint(i).getX() + " ");
					sb.append(((Courbe) Courbes.get(c)).getPoint(i).getY() + " ");
					if (mode)
						sb.append(((Courbe) Courbes.get(c)).getPoint(i).getCurve() + " ");
					sb.append(((Courbe) Courbes.get(c)).getPoint(i).getSustainAndFix());

					out.write(sb.toString());
					out.newLine();
				}
			}
			
			isEOFCorrect = true;
			out.close();
		} catch  (IOException e) {
			error("can't write the file");
		}
		
		return (isEOFCorrect ? 1: 0);
	}

	
	private void setNbFunctions(int i) {
		nbfunctions = i;
		init();
	}
	
	// this one is called by the declareAttribute method
	private void setNbFunctions(Atom[] a) {
		if (a.length == 1 && isNumber(a[0]) && a[0].toInt() > 0)
			setNbFunctions( a[0].toInt());
	}
	
	private int  getNbFunctions() {
		return nbfunctions;
	}

	private void setCurveMode(Atom[] a) {
		if (a.length == 1 && isNumber(a[0]))
			mode = a[0].toInt() == 1 ? CURVE_MODE : LINE_MODE;
	}
	
	private boolean getCurveMode() {
		return mode;		
	}
	
	private void init() {
		Courbes = new ArrayList();
		for (int i = 0; i < nbfunctions; i++) {
			Courbes.add(new Courbe("function" + i));
		}
	}

	private void myInterp(int c, float f) {
		if (((Courbe) Courbes.get(c)).np() > 1)
			outlet(INTERP_OUTLET, ((Courbe) Courbes.get(c)).getName(), ((Courbe) Courbes.get(c)).interp(f));
		// else on s'en fiche
	}

	private void listOfNumbers(int courbeIdx, float[] args) {
		switch (args.length) {
		case 2:
			((Courbe) Courbes.get(courbeIdx)).addOnePoint(args[0], args[1]);
			break;
		case 3:
			((Courbe) Courbes.get(courbeIdx)).moveOnePoint((int) args[0], args[1], args[2]);
			break;
		case 4:
			((Courbe) Courbes.get(courbeIdx)).moveOnePoint((int) args[0], args[1], args[2], args[3]); 
		default:
			error("too many arguments");
		}
	}
	
	private void myName(int c, String s) {
		if (s != null) 
			((Courbe) Courbes.get(c)).name = s;
		else
			error("missing argument for message name");
	}
	
	private void mySustain(int courbeIdx, int idx, int state) {
		switch (state) {
			case 0:
				((Courbe) Courbes.get(courbeIdx)).setSustain(idx, false);
				break;
			case 1:
				((Courbe) Courbes.get(courbeIdx)).setSustain(idx, true);
				break;
			default:
				error("bad argument for message sustain");
		}
	}
	
	private void myFix(int courbeIdx, int idx, int state) {
		switch (state) {
			case 0:
				((Courbe) Courbes.get(courbeIdx)).setFix(idx, false);
				break;
			case 1:
				((Courbe) Courbes.get(courbeIdx)).setFix(idx, true);
				break;
			default:
				error("bad argument for message fix");
		}
	}

	private void myNth(int courbeIdx, int i) {
		if (i >= 0 && i < ((Courbe) Courbes.get(courbeIdx)).np())
			outlet(INTERP_OUTLET, ((Courbe) Courbes.get(courbeIdx)).getPoint(i).getY());
	}
	
	private int name2idx(String s) {
		for (int c = 0; c < Courbes.size(); c++) {
			if ((((Courbe) Courbes.get(c)).getName()).equals(s))
				return c;
		}
		return -1;
	}
	
	private void myGetSustain(int courbeIdx) {
		Atom[] tmp = ((Courbe) Courbes.get(courbeIdx)).getSustain();
		
		if (tmp != null) {
			outlet(DUMPOUT_OUTLET, ((Courbe) Courbes.get(courbeIdx)).getName(), tmp);
		}
	}

	private void myGetFix(int courbeIdx) {
		Atom[] tmp = ((Courbe) Courbes.get(courbeIdx)).getFix();
		
		if (tmp != null) {
			outlet(DUMPOUT_OUTLET, ((Courbe) Courbes.get(courbeIdx)).getName(), tmp);
		}
	}
	
	
	
	/**
	 * Courbe class
	 * @author jourdan
	 *
	 */
	class Courbe {
		private String name = "function0";
		private double[] domain = {0., 1000.};			// domain de la courbe
		private double[] range = {0., 1.};			// range de la courbe
		private ArrayList lPoints = new ArrayList();	// PointsArray
		private int NextFrom = 0;						// utilisé pour le message next

//		private int np = 0;										// used because of the reading
//		private double[] ZoomX = {0., 1000.};			// domain de la courbe
//		private double[] ZoomY = {0., 1.};			// range de la courbe
//		private boolean display = true;				// display while inactive ?
//		private double GridStep = 100;				// tout est dans lenom
		
		Courbe(String name) {
			this.name = name;
			lPoints = new ArrayList();
		}

		public String getName() {
			return name;
		}
		
		public void setName(String s) {
			name = s;
		}
		
		public void line() {
			if (lPoints.isEmpty())
				return;		// si pas de point... pas de line... pas de bras... pas de chocolat...
			
			NextFrom = 0;

			ArrayList tmpArray = new ArrayList();

			if (outputmode) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(0)).getY()));
				tmpArray.add(Atom.newAtom(0.));
			}
				
			for (int i = 1; i < np(); i++) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getY()));
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getX() - ((Point) lPoints.get(i - 1)).getX()));
				if (mode)
					tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getCurve()));
				if (getPoint(i).getSustain()) {
					NextFrom = i;
					break;
				}
			}

			Atom[] tmp = new Atom[tmpArray.size()];
			if (! outputmode)
				outlet(LINE_OUTLET, getName(), ((Point) lPoints.get(0)).getY());
			
			if (tmpArray.size() > 1)	// si on a qu'un point dans la courbe, il ne faut pas afficher la liste
				outlet(LINE_OUTLET, getName(), (Atom[]) tmpArray.toArray(tmp));
		}	

		public void next() {
			if (NextFrom == 0) {
				line();
				return;
			}

			ArrayList tmpArray = new ArrayList();
			int i;
			int OldNextFrom = NextFrom;
			
			for (i = (NextFrom + 1); i < np(); i++) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getY()));
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getX() - ((Point) lPoints.get(i-1)).getX() ));
				if (mode)
					tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getCurve()));
				if (getPoint(i).getSustain()) {
					NextFrom = i;
					break;
				}
			}
			
			if (OldNextFrom == NextFrom)	// il n'y a plus de sustain...
				NextFrom = 0;
			
			Atom[] tmp = new Atom[tmpArray.size()];			
			outlet(LINE_OUTLET, getName(), (Atom[]) tmpArray.toArray(tmp));
		}

		public double interp(float v) {
			if ( v < getPoint(0).getX() ) // v est plus petit que le premier point
				return getPoint(0).getY();

			if ( v > getPoint(np() - 1).getX() ) // v est plus grand que le dernier point
				return getPoint(np() - 1).getY();

			int i, a;
			for (i = 0, a = 0; i < np(); i++) {
				if (v > getPoint(i).getX())
					a = i;
				else
					break;
			}

			double result;
			double tmpRange = getPoint(a+1).getY() - getPoint(a).getY();
			double tmpDomain = getPoint(a+1).getX() - getPoint(a).getX();

			if (mode || Math.abs(getPoint(a+1).getCurve()) < 0.001) {
				// curves
				double hp; //h(p) = (((p + 1e-20) * 1.2) ** .41) * .91.
				double fp; //f(p) = h(p) / (1 - h(p))
				double gp; //g(x, p) = (exp(f(p) * x) - 1) / (exp(f(p)) - 1)
				double gx;
				double curve = getPoint(a+1).getCurve();
				
				if(curve < 0.) {
					gx = (getPoint(a+1).getX() - v) / tmpDomain;
					
					hp = Math.pow((1e-20 - curve) * 1.2, 0.41) * 0.91;
					fp = hp / (1. - hp);
					gp = (Math.exp(fp * gx) - 1.) / (Math.exp(fp) - 1.);
					
					result = getPoint(a+1).getY() - gp * tmpRange;
				} else {
					gx = (v - getPoint(a).getX()) / tmpDomain;
					
					hp = Math.pow((curve + 1e-20) * 1.2, 0.41) * 0.91;
					fp = hp / (1. - hp);
					gp = (Math.exp(fp * gx) - 1.) / (Math.exp(fp) - 1.);
					
					result = gp * tmpRange + getPoint(a).getY();
				}
			} else {
				// Linear
				result = ((v - getPoint(a).getX()) /  tmpDomain) * tmpRange + getPoint(a).getY();
			}
			
			return result;

		}
		
		public ArrayList getPoints() {
			return lPoints;
		}
		
		public Point getPoint(int idx) {
			return (Point) lPoints.get(idx);
		}

		public void dump() {
			// implicitement, il ne se passe rien si il n'y a pas de points
			for (int i = 0; i < np(); i++)
				outlet(DUMP_OUTLET, getName(), mode ? getPoint(i).getValuesWithCurve() : getPoint(i).getValues());
		}

		public void dump(String sendName) {
			// implicitement, il ne se passe rien si il n'y a pas de points
			for (int i = 0; i < np(); i++) {
				MaxSystem.sendMessageToBoundObject(sendName, getName(), mode ? Atom.newAtom(getPoint(i).getValuesWithCurve()) : Atom.newAtom(getPoint(i).getValues()));
			}
			
		}
		
		public void listDump() {
			if (np() > 0) {
				int i, idx;
				double[] tmp = new double[np() * (mode ? 3: 2)];

				for (i = idx = 0; i < np(); i++) {
					tmp[idx++] = getPoint(i).getX();
					tmp[idx++] = getPoint(i).getY();
					if (mode)
						tmp[idx++] = getPoint(i).getCurve();
				}

				outlet(DUMP_OUTLET, getName(), tmp);
			}
		}
		
		public void listDump(String sendName) {
			if (np() > 0 ) {
				int i, idx;
				Atom[] tmp = new Atom[np() * (mode ? 3 : 2)];
				
				for (i = idx = 0; i < np(); i++) {
					tmp[idx++] = Atom.newAtom(getPoint(i).getX());
					tmp[idx++] = Atom.newAtom(getPoint(i).getY());
					if (mode)
						tmp[idx++] = Atom.newAtom(getPoint(i).getCurve());
				}
	
				MaxSystem.sendMessageToBoundObject(sendName, getName(), tmp);
			}
		}
		
		public void dumpMatrix() {
			JitterMatrix myMatrix = new JitterMatrix(1, "float32", mode ? 3 : 2, np());
			Atom[] tmp = new Atom[3];
			tmp[0] = Atom.newAtom(getName());
			tmp[1] = Atom.newAtom("jit_matrix");
			tmp[2] = Atom.newAtom(myMatrix.getName());
			
			for (int i = 0; i < np(); i++) {
				myMatrix.setcell2d(0, i, new float[]{(float) getPoint(i).getX()});
				myMatrix.setcell2d(1, i, new float[]{(float) getPoint(i).getY()});
				if (mode)
					myMatrix.setcell2d(1, i, new float[]{(float) getPoint(i).getCurve()});
			}
			
			outlet(DUMP_OUTLET, tmp);
		}
		
		public void dumpMatrix(String sendName) {
			JitterMatrix myMatrix = new JitterMatrix(1, "float32", mode ? 3 : 2, np());
			Atom[] tmp = new Atom[2];
			tmp[0] = Atom.newAtom("jit_matrix");
			tmp[1] = Atom.newAtom(myMatrix.getName());
			
			for (int i = 0; i < np(); i++) {
				myMatrix.setcell2d(0, i, new float[]{(float) getPoint(i).getX()});
				myMatrix.setcell2d(1, i, new float[]{(float) getPoint(i).getY()});
				if (mode)
					myMatrix.setcell2d(1, i, new float[]{(float) getPoint(i).getCurve()});
			}

			MaxSystem.sendMessageToBoundObject(sendName, getName(), tmp);
		}
		
		public void jitMatrix(String inName) {
			int[] dim;
			JitterMatrix myMatrix = new JitterMatrix(inName);
			
			dim = myMatrix.getDim();
			if (dim.length != 2) {
				error("support only 2 dim matrix");
				return;
			}
			if (myMatrix.getPlanecount() != 1) {
				error("support only 1 plane matrix");
				return;
			}
			
			lPoints.clear();
			for (int i = 0; i < dim[1]; i++) {
				if (mode && dim[0] == 3) // if curve mode and the value is present
					lPoints.add(new Point(myMatrix.getcell2dDouble(0, i)[0], myMatrix.getcell2dDouble(1, i)[0], myMatrix.getcell2dDouble(2, i)[0]));
				else
					lPoints.add(new Point(myMatrix.getcell2dDouble(0, i)[0], myMatrix.getcell2dDouble(1, i)[0]));
			}
			
			quickSort(0, np() - 1);
			applyAutoSustain();
		}
		
		public void setSyncFunctions(Atom[] args) {
			setName(args[1].toString());
			domain[0] = args[2].toDouble();
			domain[1] = args[3].toDouble();
			range[0] = args[4].toDouble();
			range[1] = args[5].toDouble();
		}
		
		public void syncCourbe(int courbeIdx) {
			outlet(DUMP_OUTLET, "syncfunctions", getCourbeParams(courbeIdx));
		}

		public void syncCourbe(int courbeIdx, String sendName) {
			MaxSystem.sendMessageToBoundObject(sendName, "syncfunctions", getCourbeParams(courbeIdx));
		}
		
		private Atom[] getCourbeParams(int courbeIdx) {
			Atom[] tmp = new Atom[] {
					Atom.newAtom(courbeIdx),
					Atom.newAtom(getName()),
					Atom.newAtom(domain[0]),
					Atom.newAtom(domain[1]),
					Atom.newAtom(range[0]),
					Atom.newAtom(range[1])
					};

			return tmp;
		}
		
		public void syncPoints(int courbeIdx) {
			if (np() > 0) {
				double[] tmp = new double[(np() * (mode ? 4 : 3)) + 1];
				int idx = 0;
				
				tmp[idx++] = courbeIdx; // the first thing is the ID of the function
				
				for (int i = 0; i < np(); i++) {
					tmp[idx++] = getPoint(i).getX();
					tmp[idx++] = getPoint(i).getY();
					if (mode)
						tmp[idx++] = getPoint(i).getCurve();
					tmp[idx++] = getPoint(i).getSustainAndFix();
				}
				
				outlet(DUMP_OUTLET, "syncpoints",  tmp);
			}
		}
		
		public void syncPoints(int courbeIdx, String sendName) {
			if (np() > 0) {
				Atom[] tmp = new Atom[np() * (mode ? 4 : 3) + 1];
				int idx = 0;
				
				tmp[idx++] = Atom.newAtom(courbeIdx);
				
				for (int i = 0; i < np(); i++) {
					tmp[idx++] = Atom.newAtom(getPoint(i).getX());
					tmp[idx++] = Atom.newAtom(getPoint(i).getY());
					if (mode)
						tmp[idx++] = Atom.newAtom(getPoint(i).getCurve());
					tmp[idx++] = Atom.newAtom(getPoint(i).getSustainAndFix());
				}
				
				MaxSystem.sendMessageToBoundObject(sendName, "syncpoints", tmp);
			}
		}
		
		
		public int np() {
			return lPoints.size();
		}
	
		public void setRange(double min, double max) {
			if (min < max) {
				double factor = (max - min) / (range[1] - range[0]);
				
				double tmp; // pour des raisons de lisibilités
				for (int i = 0; i < lPoints.size(); i++) {
					tmp = ((((Point) lPoints.get(i)).getY() - range[0]) * factor) + min; 
					((Point) lPoints.get(i)).setY(tmp);
				}
				
				// je pourrais utiliser domain(min, max) mais il y a un test de plus,
				// qui est déjà effectué au début de setDomain()
				range[0] = min;
				range[1] = max;
			}
		}

		public void setDomain(double min, double max) {
			if (min < max) {
				double factor = (max - min) / (domain[1] - domain[0]);
				
				double tmp; // pour des raisons de lisibilités
				for (int i = 0; i <  np(); i++) {
					tmp = ((((Point) lPoints.get(i)).getX() - domain[0]) * factor) + min; 
					((Point) lPoints.get(i)).setX(tmp);
				}
				
				// je pourrais utiliser domain(min, max) mais il y a un test de plus,
				// qui est déjà effectué au début de setDomain()
				domain[0] = min;
				domain[1] = max;
			}
		}

		public void range(double min, double max) {
			if (min < max) {
				range[0] = min;
				range[1] = max;
			}
		}

		public void domain(double min, double max) {
			if (min < max) {
				domain[0] = min;
				domain[1] = max;
			}
		}

		public void autoDomain() {
			if (np() > 1) {
				double min = getPoint(0).getX();
				double max = getPoint(0).getX();
				for(int i = 1; i < np(); i++) {
					if (getPoint(i).getX() > max)
						max = getPoint(i).getX();
					else if (getPoint(i).getX() < min)
						min = getPoint(i).getX();
				}
				
				if (min != max)
					domain(min, max);			
			}
		}
		
		public void autoRange() {
			if (np() > 1 ) {
				double min = getPoint(0).getY();
				double max = getPoint(0).getY();
				for(int i = 1; i < np(); i++) {
					if (getPoint(i).getY() > max)
						max = getPoint(i).getY();
					else if (getPoint(i).getY() < min)
						min = getPoint(i).getY();
				}
				
				if (min != max)
					range(min, max);
			}
		}

		
		public void flip() {
			double xAmount = domain[0] + domain[1];
			double yAmount = range[0] + range[1];
			double tmpX, tmpY;
			boolean tmpSustain, tmpFix;
			int oppositePoint;
			
			// swap points so there's no need to reorder after (avoid the "same x value" problem for the ordering)
			// this method seems ugly... it's but, it avoids the reordering
			for (int i = 0; i < Math.round(np() / 2); i++) {
				if (i == np() - i - 1) { // odd number of points (the middle stay at the middle position)
					getPoint(i).setX(xAmount - getPoint(i).getX());
					getPoint(i).setY(yAmount - getPoint(i).getY());
				} else {
					tmpX = getPoint(i).getX();
					tmpY = getPoint(i).getY();
					tmpSustain = getPoint(i).getSustain();
					tmpFix = getPoint(i).getFix();

					oppositePoint = np() -i - 1;
					
					getPoint(i).setX(xAmount - getPoint(oppositePoint).getX());
					getPoint(i).setY(yAmount - getPoint(oppositePoint).getY());
					getPoint(i).setSustain(getPoint(oppositePoint).getSustain());
					getPoint(i).setFix(getPoint(oppositePoint).getFix());

					getPoint(oppositePoint).setX(xAmount - tmpX);
					getPoint(oppositePoint).setY(yAmount - tmpY);
					getPoint(oppositePoint).setSustain(tmpSustain);
					getPoint(oppositePoint).setFix(tmpFix);
				}
			}
			
			applyAutoSustain();
		}
		
		public void flipX() {
			double xAmount = domain[0] + domain[1];
			double tmpX, tmpY;
			boolean tmpSustain, tmpFix;
			int oppositePoint;

			// swap points so there's no need to reorder after (avoid the "same x value" problem for the ordering)
			for (int i = 0; i < Math.round(np() / 2); i++) {
				if (i == np() - i - 1) { // odd number of points (the middle stay at the middle position)
					getPoint(i).setX(xAmount - getPoint(i).getX());
				} else {
					tmpX = getPoint(i).getX();
					tmpY = getPoint(i).getY();
					tmpSustain = getPoint(i).getSustain();
					tmpFix = getPoint(i).getFix();

					oppositePoint = np() -i - 1;
					
					getPoint(i).setX(xAmount - getPoint(oppositePoint).getX());
					getPoint(i).setY(getPoint(oppositePoint).getY());
					getPoint(i).setSustain(getPoint(oppositePoint).getSustain());
					getPoint(i).setFix(getPoint(oppositePoint).getFix());

					getPoint(oppositePoint).setX(xAmount - tmpX);
					getPoint(oppositePoint).setY(tmpY);
					getPoint(oppositePoint).setSustain(tmpSustain);
					getPoint(oppositePoint).setFix(tmpFix);
				}
			}
			
			applyAutoSustain();
		}
		
		public void flipY() {
			double yAmount = range[0] + range[1];
			
			for (int i = 0; i < np(); i++)
				getPoint(i).setY(yAmount - getPoint(i).getY());

		}
		
		public void normalize() {
			// just a little bit more effficient, there's one loop less.
			if (np() > 1) {
				double minDomain = domain[1];
				double maxDomain = domain[0];
				double minRange = range[1];
				double maxRange = range[0];
				double tmp;
				
				for (int i = 0; i < np(); i++) {
					if ((tmp = getPoint(i).getX()) < minDomain)
						minDomain = tmp;
					else if ((tmp = getPoint(i).getX()) > maxDomain)
						maxDomain = tmp;
					if ((tmp = getPoint(i).getY()) < minRange)
						minRange = tmp;
					else if ((tmp = getPoint(i).getY()) > maxRange)
						maxRange = tmp;
				}
				
				if (minDomain != maxDomain)
					applyNormalizeX(minDomain, maxDomain);
				if (minRange != maxRange)
					applyNormalizeY(minRange, maxRange);
			}
		}

		public void normalizeX() {
			if (np() > 1) {
				double minDomain = domain[1];
				double maxDomain = domain[0];
				double tmp;
				
				for (int i = 0 ; i < np(); i++) {
					if ((tmp = getPoint(i).getX()) < minDomain)
						minDomain = tmp;
					else if ((tmp = getPoint(i).getX()) > maxDomain)
						maxDomain = tmp;
				}
				
				if (minDomain != maxDomain)
					applyNormalizeX(minDomain, maxDomain);
			}
		}
		
		public void normalizeY() {
			if (np() > 1) {
				double minRange = range[1];
				double maxRange = range[0];
				double tmp;
				
				for (int i = 0 ; i < np(); i++) {
					if ((tmp = getPoint(i).getY()) < minRange)
						minRange = tmp;
					else if ((tmp = getPoint(i).getY()) > maxRange)
						maxRange = tmp;
				}
				
				if (minRange != maxRange)
					applyNormalizeY(minRange, maxRange);
			}
		}

		private void applyNormalizeX(double min, double max) {
			double plageDeValeurs = (domain[1] - domain[0]) / (max - min);
			double offset = 0 - min;

			for (int i = 0; i < np(); i++)
				getPoint(i).setX((getPoint(i).getX() + offset) * plageDeValeurs - (0 - domain[0]));
		}

		private void applyNormalizeY(double min, double max) {
			double plageDeValeurs = (range[1] - range[0]) / (max - min);
			double offset = 0 - min;

			for (int i = 0; i < np(); i++)
				getPoint(i).setY((getPoint(i).getY() + offset) * plageDeValeurs - (0 - range[0]));
		}
		
		public void clearAllPoints() {
			lPoints.clear();
		}

		public void clearPoints(int idx) {
			if (idx >= 0 && idx < np())
				lPoints.remove(idx);
		}
		
		public void clearPoints(int[] idx) {
			// clear is reversed so the input index stay synchronized
			for (int i = (idx.length - 1); i >= 0; i--)
				clearPoints(idx[i]);
		}
		
		public void clearPoints(Atom[] a) {
			// utilisé quand ça vient par argparser
			// la suppression se fait à l'envers sinon, les numéros d'index ne sont plus bons.
			for (int i = (a.length - 1); i >= 0 ; i--) {
				if (isNumber(a[i]))
					clearPoints(a[i].toInt());
				else
					error("bad argument for message clear");
			}
		}
		
		public void removeDuplicate() {
			if (np() > 2) {
				for (int i = 1; i < (np() - 1); i++) {
					if (getPoint(i-1).getY() == getPoint(i).getY() && getPoint(i+1).getY() == getPoint(i-1).getY()) {
						removeOnePoint(i);
						i = Math.max(0, i - 2); // la prochaine fois qu'on rentre dans la boucle for ça commencera à partir de ce point
					}
				}
			}
		}
		
		public void smooth() {
			if (np() > 2) {
				for (int i = 1; i < (np() - 1); i++)
					getPoint(i).setY(getPoint(i-1).getY()*0.15 + getPoint(i).getY()*0.7 + getPoint(i+1).getY()*0.15);
			}
		}
		
		public void addOnePoint(double valx, double valy) {
			ListIterator listiter = lPoints.listIterator();

			while (listiter.hasNext()) {
				// si c'est plus petit on va ecrire tout de suite dans la liste
				if (valx < ((Point) listiter.next()).getX()) {
					lPoints.add(listiter.previousIndex(), new Point(valx, valy)); // previousIndex car on accède déjà à next avant
					return;
				}
			}
			// on est ici car le point est le plus grand 
			lPoints.add(new Point(valx, valy));
			applyAutoSustain();
		}
		
		public void addPoints(double[] args) {
			for (int i = 0; i < (args.length / 2); i += 2)
				lPoints.add(new Point(args[i], args[i+1]));
			
			quickSort(0, np() - 1);
			applyAutoSustain();
		}
		
		public void addCurvePoints(double[] args) {
			for (int i = 0; i < (args.length / 3); i += 3)
				lPoints.add(new Point(args[i], args[i+1], args[i+2]));
			
			quickSort(0, np() - 1);
			applyAutoSustain();
		}
		
		public void addTypedPoints(double[] args) {
			for (int i = 0; i < (args.length / 3); i++)
				lPoints.add(new Point(args[i*3+1], args[i*3+2], (int) args[i*3+3]));
			
			applyAutoSustain();
		}
		
		public void addCurveTypedPoints(double[] args) {
			for (int i = 0; i < (args.length / 4); i ++)
				lPoints.add(new Point(args[i*4+1], args[i*4+2], (int) args[i*4+4], args[i*4+3]));
			
			applyAutoSustain();
		}

		public void addTypedPoint(double valx, double valy, int state) {
			lPoints.add(new Point(valx, valy, state));
		}
		
		public void addCurveTypedPoint(double valx, double valy, int state, double curve) {
			lPoints.add(new Point(valx, valy, state, curve));
		}
		
		public void addTypedPoint(String x, String y, String state) { 
			lPoints.add(new Point(Double.parseDouble(x), Double.parseDouble(y), Integer.parseInt(state)));
		}

		public void addTypedPoint(String x, String y, String state, String curve) {
			lPoints.add(new Point(Double.parseDouble(x), Double.parseDouble(y), Integer.parseInt(state), Double.parseDouble(curve)));
		}
		
		public void removeOnePoint(int idx) {
			/**
			 * permet la suppression d'un point
			 */
			if (idx >= 0 && idx < np()) {
				lPoints.remove(idx);
				applyAutoSustain();
			}
		}

		public void moveOnePoint(int idx, double posX, double posY) {
			/**
			 * s'occupe du déplacement du point (il y a aussi un reordering effectué)
			 */
			if (idx >= 0 && idx < np() && ((Point) lPoints.get(idx)).getFix() == false) {
				((Point) lPoints.get(idx)).setValues(posX, posY);
				
				quickSort(0, np() - 1); // car on a peut-être trop déplacé le point
			}
			
			applyAutoSustain();
		}
		
		public void moveOnePoint(int idx, double posX, double posY, double curve) {
			/*
			 * s'occupe du déplacement du point, lorsque la valeur de curve est définie
			 */
			if (idx >= 0 && idx < np() && ((Point) lPoints.get(idx)).getFix() == false) {
				((Point) lPoints.get(idx)).setValues(posX, posY, curve);
				
				quickSort(0, np() - 1);	// car on a peut-être déplacé le point
			}
			
			applyAutoSustain();
		}
		
		public void moveCurveOnePoint(int idx, double posX, double posY, double curve) {
			if (idx >= 0 && idx < np() && ((Point) lPoints.get(idx)).getFix() == false) {
				((Point) lPoints.get(idx)).setValues(posX, posY, curve);
				
				quickSort(0, np() - 1);
			}
			
			applyAutoSustain();
		}
		
		private void applyAutoSustain() {
			if (autosustain) {
				if (np() > 3) {
					for (int i = 0; i < np(); i++) {
						if (i == (np() - 2))
							getPoint(i).setSustain(true);
						else
							getPoint(i).setSustain(false);
					}
				}
			}
		}
		
		private void quickSort(int g, int d) {
				// recursif et tout et tout...
				// merci wikipedia...
				int i, j;
				double v;
				
				if (d > g) {
					v = ((Point) lPoints.get(d)).getX();
					i = g - 1;
					j = d;
					while(true) {
						while ((++i <= d) && (((Point) lPoints.get(i)).getX() < v)) { ; };
						while ((--j >= g) && (((Point) lPoints.get(j)).getX() > v)) { ; };
						if (i > j) break;
						swapPoints(i, j);
					}
					swapPoints(i, d);
					quickSort(g, i-1);
					quickSort(i+1, d);
				}
			}
		
		private void swapPoints(int num1, int num2) {
			// échange des pointeurs
			Point tmp = (Point) lPoints.get(num1);
			lPoints.set(num2, lPoints.get(num2));
			lPoints.set(num1,  tmp);
		}
		
		public void setSustain(int idx, boolean state) {
			if (idx >= 0 && idx < np())
				((Point) lPoints.get(idx)).setSustain(state);
		}
		
		public void setFix(int idx, boolean state) {
			if (idx >= 0 && idx < np())
				((Point) lPoints.get(idx)).setFix(state);
		}

		public Atom[] getSustain() {
			ArrayList tmpArray = new ArrayList();
			
			tmpArray.add(Atom.newAtom("sustain"));
			for (int i = 0; i < np(); i++) {
				if (((Point) lPoints.get(i)).getSustain() == true)
					tmpArray.add(Atom.newAtom(i));
			}
			
			if (tmpArray.size() == 1)
				return null;

			// else
			Atom[] tmp = new Atom[tmpArray.size()];
			return (Atom[]) tmpArray.toArray(tmp);
		}

		public Atom[] getFix() {
			ArrayList tmpArray = new ArrayList();
			
			tmpArray.add(Atom.newAtom("fix"));
			for (int i = 0; i < np(); i++) {
				if (((Point) lPoints.get(i)).getFix() == true)
					tmpArray.add(Atom.newAtom(i));
			}
			
			if (tmpArray.size() == 1) // == 1 means "fix" is only there
				return null;
			
			// else
			Atom[] tmp = new Atom[tmpArray.size()];
			return (Atom[]) tmpArray.toArray(tmp);
		}
		
		public void getDomain() {
			outlet(DUMP_OUTLET, getName(), new Atom[] { Atom.newAtom("domain"), Atom.newAtom(domain[0]), Atom.newAtom(domain[1]) } );
		}
		
		public void getRange() {
			outlet(DUMP_OUTLET, getName(), new Atom[] { Atom.newAtom("range"), Atom.newAtom(range[0]), Atom.newAtom(range[1]) } );
		}
		
		public void getNbPoints() {
			outlet(DUMP_OUTLET, getName(), new Atom[] { Atom.newAtom("nbpoints"), Atom.newAtom(np()) } );
		}
		
		public void clearSustain() {
			for (int i = 0; i < np(); i++)
				((Point) lPoints.get(i)).setSustain(false);
		}
		
		public void unFix() {
			for (int i = 0; i < np(); i++) 
				((Point) lPoints.get(i)).setFix(false);
		}

	}

	class Point {
		/**
		 * Class Point
		 */
		private double valx;
		private double valy;
		private boolean sustain = false;
		private boolean fix = false;
		private double curve = 0;

		Point() {
			this(0, 0);
		}
		
		Point(double valx, double valy) {
			this(valx, valy, false, false, 0.);
		}
		
		Point(double valx, double valy, double curve) {
			this(valx, valy, false, false, curve);
		}

		Point(double valx, double valy, int state) {
			// x, y, sustain et fix codé en binaire
			this(valx, valy, (state & 2) == 2, (state & 1) == 1, 0.);
		}
		
		Point(double valx, double valy, double curve, int state) {
			this(valx, valy, (state & 2) == 2, (state & 1) == 1, curve);
		}
		
		Point(double valx, double valy, int state, double curve) {
			this(valx, valy, (state & 2) == 2, (state & 1) == 1, curve);
		}
		
		Point(double valx, double valy, boolean sustain, boolean fix, double curve) {
			this.valx = valx;
			this.valy = valy;
			this.sustain = sustain;
			this.fix = fix;
			this.curve = curve;
		}

		void setX(double valx) {
			this.valx = valx;
		}
		
		void setY(double valy) {
			this.valy = valy;
		}
		
		void setCurve(double curve) {
			this.curve = curve;
		}
		
		void setValues(double valx, double valy) {
			this.valx = valx;
			this.valy = valy;
		}
		
		void setValues(double valx, double valy, double curve) {
			this.valx = valx;
			this.valy = valy;
			this.curve = curve;
		}
		
		double getX() {
			return valx;
		}
		
		double getY() {
			return valy;
		}
		
		double getCurve() {
			return curve;
		}
		
		double[] getValues() {
			return new double[] { valx, valy };
		}
		
		double[] getValuesWithCurve() {
			return new double[] { valx, valy, curve };
		}
		
		public void setSustain(boolean sustain) {
			this.sustain = sustain;
		}

		public void setFix(boolean fix) {
			this.fix = fix;
		}
		
		public boolean getSustain() {
			return sustain;
		}
		
		public boolean getFix() {
			return fix;
		}
		
		public int getSustainAndFix() {
			// return the value coded in binary
			int tmp = 0;
			if (sustain == true)
				tmp += 2;
			if (fix == true)
				tmp += 1;
			
			return tmp;
		}
	}
}

