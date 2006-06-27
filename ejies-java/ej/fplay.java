/*
 *	ej.fplay by Emmanuel Jourdan, Ircam — 04 2006
 *	function player
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/06/27 18:02:05 $
 */

/**
 * TODO MEessages standards : fait jusqu'à dump inclu
 * TODO getsustatin / sustain
 * TODO getfix / fix
 * 
 * TODO	lecture/sauvegarde en fichier texte
 * TODO	messages spéciaux pour la communication avec ej.function.js
 * TODO domain/range/setdomain/setrange
 * 
 */


 package ej;

import java.util.ArrayList;
import java.util.ListIterator;
import com.cycling74.max.*;

public class fplay extends ej
{
	private static final String[] INLET_ASSIST = new String[]{ "quite anything..."};
	private static final String[] OUTLET_ASSIST = new String[]{ "interpolated Y for input X", "points in line~ format", "dump message output"	};
	private static final int INTERP_OUTLET = 0;
	private static final int LINE_OUTLET = 1;
	private static final int DUMP_OUTLET = 2;
	private static final int DUMPOUT_OUTLET = 3;
	private static final int NBCOURBES = 1;
	
	private boolean isAll = false;
	
	private ArrayList Courbes = new ArrayList();
	private int current = 0;
	
	public fplay(Atom[] args)
	{
		declareTypedIO("a", "aaa");
		createInfoOutlet(true);

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

		init();
	}

	// standart messages
	public void bang() {
		myBang(current);
	}

	public void inlet(float f) {
		myInterp(current, f);
	}

	public void list(float[] args) {
		listOfNumbers(current, args);
	}

	public void anything(String s, Atom[] args) {
		isAll = false;
		parseArgs(name2idx(s), args);
	}
	
	public void all(Atom[] args) {
		isAll = true;	// used to make the differences with anything
		for (int c = 0; c < Courbes.size(); c++)
			parseArgs(c, args);
	}

	// add/remove functions 
	public void addfunction() {
		this.addfunction("function" + Courbes.size());
	}
	
	public void addfunction(String s) {
		Courbes.add(new Courbe(s));
	}

	public void deletefunction(int i) {
		if (i >= 0 && i < Courbes.size())
			Courbes.remove(i);
	}
	
	public void deletefunction(String s) {
		int tmp = name2idx(s);
		if (tmp != -1)
			Courbes.remove(tmp);
		else
			error("function named " + s + " doesn't exist");
	}

	
	public void display(int idx) {
		if (idx >= 0 && idx < Courbes.size()) {
			current = idx;
		}
	}

	public void display(String s) {
		for (int c = 0; c < Courbes.size(); c++) {
			if ((((Courbe) Courbes.get(c)).getName()).equals(s))
				current = c;
		}
	}

	public void nth(int i) {
		myNth(current, i);
	}
	
	public void next() {
		myNext(current);
	}

	public void dump() {
		((Courbe) Courbes.get(current)).dump();
	}
	
	public void listdump() {
		((Courbe) Courbes.get(current)).listdump();
	}

	public void dump(String s) {
		// methode dump qui envoie vers un send
		((Courbe) Courbes.get(current)).dump(s);
	}
	
	public void listdump(String s) {
		// methode listdump qui envoie vers un send
		((Courbe) Courbes.get(current)).listdump(s);
	}
	
	public void clear() {
		((Courbe) Courbes.get(current)).clearAllPoints();
	}
	
	public void clear(int[] idx) {
		((Courbe) Courbes.get(current)).clearPoints(idx);
	}

	public void name(String args) {
		myName(current, args);
	}

	public void domain(double max) {
		((Courbe) Courbes.get(current)).domain(0, max);
	}
	
	public void domain(double min, double max) {
		((Courbe) Courbes.get(current)).domain(min, max);
	}

	public void range(double min, double max) {
		((Courbe) Courbes.get(current)).range(min, max);
	}
	
	public void setdomain(double max) {
		((Courbe) Courbes.get(current)).setDomain(0, max);
	}
	
	public void setdomain(double min, double max) {
		((Courbe) Courbes.get(current)).setDomain(min, max);
	}

	public void setrange(double min, double max) {
		((Courbe) Courbes.get(current)).setRange(min, max);
	}
	
	

	public void sustain(int idx, int state) {
		mySustain(current, idx, state);
	}

	public void fix(int idx, int state) {
		myFix(current, idx, state);
	}


	/*
	 * get methods
	 */
	public void getname() {
		outlet(DUMPOUT_OUTLET, "name", "clear");
		
		for (int c = 0; c < Courbes.size(); c++)
			outlet(DUMPOUT_OUTLET, new String[] {  "name", "append", ((Courbe) Courbes.get(c)).getName() });
	}

	public void getdomain() {
		((Courbe) Courbes.get(current)).getDomain();
	}
	
	public void getrange() {
		((Courbe) Courbes.get(current)).getRange();
	}
	
	public void getcurrent() {
		outlet(DUMPOUT_OUTLET, "current", ((Courbe) Courbes.get(current)).getName());
	}

	public void getsustain() {
		myGetSustain(current);
	}
	
	public void getfix() {
		myGetFix(current);
	}

	public void clearsustain() {
		((Courbe) Courbes.get(current)).clearSustain();
	}
	
	public void unfix() {
		((Courbe) Courbes.get(current)).unFix();
	}
	
	public void getnbfunctions() {
		outlet(DUMPOUT_OUTLET, "nbfunctions", Courbes.size());
	}

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
				
				return;
			}
		}
		
		if (args.length == 1) {
			if (isNumber(args[0])) {	// un seul argument numérique -> interpolation
				myInterp(courbeIdx, args[0].toFloat());
			} else {
				// args[0] is string
				if (msgName.equals("bang"))
					myBang(courbeIdx);
				else if (msgName.equals("dump"))
					((Courbe) Courbes.get(courbeIdx)).dump();
				else if (msgName.equals("listdump"))
					((Courbe) Courbes.get(courbeIdx)).listdump();
				
				else if (msgName.equals("getdomain"))
					((Courbe) Courbes.get(courbeIdx)).getDomain();
				else if (msgName.equals("getrange"))
					((Courbe) Courbes.get(courbeIdx)).getRange();
				else if (msgName.equals("getsustain"))
					myGetSustain(courbeIdx);
				else if (msgName.equals("getfix"))
					myGetFix(courbeIdx);
				else if (msgName.equals("clearsustain"))
					((Courbe) Courbes.get(courbeIdx)).clearSustain();
				else if (msgName.equals("unfix"))
					((Courbe) Courbes.get(courbeIdx)).unFix();
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
				if (msgName.equals("dump"))
					((Courbe) Courbes.get(courbeIdx)).dump(args[1].toString());
				else if (msgName.equals("listdump"))
					((Courbe) Courbes.get(courbeIdx)).listdump(args[1].toString());
				else if (msgName.equals("domain") && isNumber(args[1]))
					((Courbe) Courbes.get(courbeIdx)).domain(0, args[1].toDouble());
				else if (msgName.equals("setdomain") && isNumber(args[1]))
					((Courbe) Courbes.get(courbeIdx)).setDomain(0, args[1].toDouble());
				else if (msgName.equals("nth") && isNumber(args[1]))
					myNth(courbeIdx, args[1].toInt());
			
			}
		} else if (args.length == 3) {
			// trois nombres
			if (isNumber(args[0]) && isNumber(args[1]) && isNumber(args[2]))
				((Courbe) Courbes.get(courbeIdx)).moveOnePoint((int) args[0].toInt(), args[1].toFloat(), args[2].toFloat());
			else  {
				if (msgName.equals("domain") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).domain(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("setdomain") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).setDomain(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("sustain") && isNumber(args[1]) && isNumber(args[2]))
					mySustain(courbeIdx, args[1].toInt(), args[2].toInt());
				else if (msgName.equals("fix") && isNumber(args[1]) && isNumber(args[2]))
					myFix(courbeIdx, args[1].toInt(), args[2].toInt());
				else if (msgName.equals("range") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).range(args[1].toDouble(), args[2].toDouble());
				else if (msgName.equals("setrange") && isNumber(args[1]) && isNumber(args[2]))
					((Courbe) Courbes.get(courbeIdx)).setRange(args[1].toDouble(), args[2].toDouble());
			}

		}
	}
	
	private void init() {
		for (int i = 0; i < NBCOURBES; i++) {
			Courbes.add(new Courbe("function" + i));
		}
	}

	private void myBang(int c) {
		((Courbe) Courbes.get(c)).line();
	}

	private void myNext(int c) {
		((Courbe) Courbes.get(c)).next();
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
		if (idx >= 0 && idx < ((Courbe) Courbes.get(courbeIdx)).np() && (state == 0 || state == 1)) {
			switch (state) {
			case 1:
				((Courbe) Courbes.get(courbeIdx)).setSustain(idx, true);
				break;
			case 0:
				((Courbe) Courbes.get(courbeIdx)).setSustain(idx, false);
				break;
			}
		}
	}

	private void myFix(int courbeIdx, int idx, int state) {
		if (idx >= 0 && idx < ((Courbe) Courbes.get(courbeIdx)).np() && (state == 0 || state == 1)) {
			switch (state) {
			case 1:
				((Courbe) Courbes.get(courbeIdx)).setFix(idx, true);
				break;
			case 0:
				((Courbe) Courbes.get(courbeIdx)).setFix(idx, false);
				break;
			}
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
//		private double[] ZoomX = {0., 1000.};			// domain de la courbe
//		private double[] ZoomY = {0., 1.};			// range de la courbe
//		private boolean display = true;				// display while inactive ?
//		private double GridStep = 100;				// tout est dans lenom
		private int NextFrom = 0;						// utilisé pour le message next
		
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
			
			for (int i = 1; i < np(); i++) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getY()));
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getX() - ((Point) lPoints.get(i - 1)).getX()));
				if (getPoint(i).getSustain()) {
					NextFrom = i;
					break;
				}
			}

			Atom[] tmp = new Atom[tmpArray.size()];
			outlet(LINE_OUTLET, getName(), ((Point) lPoints.get(0)).getY());
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
			
			return (((v - getPoint(a).getX()) /  (getPoint(a + 1).getX() - getPoint(a).getX())) *
					(getPoint(a + 1).getY() - getPoint(a).getY()) + getPoint(a).getY()
					);

		}
		
		public ArrayList getPoints() {
			return lPoints;
		}
		
		public Point getPoint(int idx) {
			return (Point) lPoints.get(idx);
		}

		public void dump() {
			for (int i = 0; i < np(); i++) {
				outlet(DUMP_OUTLET, getName(), getPoint(i).getValues());
			}
		}

		public void dump(String sendName) {
			for (int i = 0; i < np(); i++) {
				if ( MaxSystem.sendMessageToBoundObject(sendName, getName(), Atom.newAtom(getPoint(i).getValues())) == false) {
					// on est ici seulement si le nom du receive n'est pas bon
					error(sendName + " bad receive name");
					return;	// s'il n'est pas bon une fois, il ne sera pas meilleur plus tard...
				}
			}
		}
		
		public void listdump() {
			int i, idx;
			double[] tmp = new double[np()*2];
			
			for (i = idx = 0; i < np(); i++) {
				tmp[idx++] = getPoint(i).getX();
				tmp[idx++] = getPoint(i).getY();
			}
			
			outlet(DUMP_OUTLET, getName(), tmp);
		}
		
		public void listdump(String sendName) {
			int i, idx;
			Atom[] tmp = new Atom[np()*2];
			
			for (i = idx = 0; i < np(); i++) {
				tmp[idx++] = Atom.newAtom(getPoint(i).getX());
				tmp[idx++] = Atom.newAtom(getPoint(i).getY());
			}

			if ( MaxSystem.sendMessageToBoundObject(sendName, getName(), tmp) == false)
				error(sendName + " bad receive name");
		}
		
		public int np() {
			return lPoints.size();
		}
	
		public void clearAllPoints() {
			lPoints.clear();
		}

		public void clearPoints(int idx) {
			if (idx >= 0 && idx < np())
				lPoints.remove(idx);
		}
		
		public void clearPoints(int[] idx) {
			for (int i = 0; i < idx.length; i++) {
				clearPoints(idx[i]);
			}
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
		
		public void addOnePoint(double valx, double valy) {
			/**
			 * permet d'ajouter un point (il sera automatiquement insérer dans l'ordre croissant x)
			 */
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
		}

		public void removeOnePoint(int idx) {
			/**
			 * permet la suppression d'un point
			 */
			if (idx >= 0 && idx < np()) {
				lPoints.remove(idx);
			}
		}

		public void moveOnePoint(int idx, double posX, double posY) {
			/**
			 * s'occupe du déplacement du point (il y a aussi un reordering effectué)
			 */
			if (idx >= 0 && idx < np() && ((Point) lPoints.get(idx)).getFix() == false) {
				((Point) lPoints.get(idx)).setValues(posX, posY);
				
				quickSort(0, np() - 1); // car on a peut-être trop déplacé le point
			} else if (((Point) lPoints.get(idx)).getFix() == true)
				post("le point est fixé, on ne peut donc pas le déplacer...");
				
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
			lPoints.set(num2, (Point) lPoints.get(num2));
			lPoints.set(num1,  tmp);
		}
		
		public void setSustain(int idx, boolean state) {
			((Point) lPoints.get(idx)).setSustain(state);
		}
		
		public void setFix(int idx, boolean state) {
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
			else {
				Atom[] tmp = new Atom[tmpArray.size()];
				return (Atom[]) tmpArray.toArray(tmp);
			}
		}

		public Atom[] getFix() {
			ArrayList tmpArray = new ArrayList();
			
			tmpArray.add(Atom.newAtom("fix"));
			for (int i = 0; i < np(); i++) {
				if (((Point) lPoints.get(i)).getFix() == true)
					tmpArray.add(Atom.newAtom(i));
			}
			
			if (tmpArray.size() == 1)
				return null;
			else {
				Atom[] tmp = new Atom[tmpArray.size()];
				return (Atom[]) tmpArray.toArray(tmp);
			}
		}
		
		public void getDomain() {
			outlet(DUMP_OUTLET, getName(), new Atom[] { Atom.newAtom("domain"), Atom.newAtom(domain[0]), Atom.newAtom(domain[1]) } );
		}
		
		public void getRange() {
			outlet(DUMP_OUTLET, getName(), new Atom[] { Atom.newAtom("range"), Atom.newAtom(range[0]), Atom.newAtom(range[1]) } );
		}
		
		public void clearSustain() {
			for (int i = 0; i < np(); i++)
				((Point) lPoints.get(i)).setSustain(false);
		}
		
		public void unFix() {
			for (int i = 0; i < np(); i++) 
				((Point) lPoints.get(i)).setFix(false);
		}
		
		public void domain(double min, double max) {
			if (min < max) {
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
				
		public void setDomain(double min, double max) {
			if (min < max) {
				double factor = (max - min) / (domain[1] - domain[0]);
				
				double tmp; // pour des raisons de lisibilités
				for (int i = 0; i < lPoints.size(); i++) {
					tmp = ((((Point) lPoints.get(i)).getX() - domain[0]) * factor) + min; 
					((Point) lPoints.get(i)).setX(tmp);
				}
				
				// je pourrais utiliser domain(min, max) mais il y a un test de plus,
				// qui est déjà effectué au début de setDomain()
				domain[0] = min;
				domain[1] = max;
			}
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

	}

	class Point {
		/**
		 * Class Point
		 */
		private double valx;
		private double valy;
		private boolean sustain = false;
		private boolean fix = false;

		Point() {
			this(0, 0);
		}
		
		Point(double valx, double valy) {
			this.valx = valx;
			this.valy = valy;
		}

		void setX(double valx) {
			this.valx = valx;
		}
		
		void setY(double valy) {
			this.valy = valy;
		}
		
		void setValues(double valx, double valy) {
			this.valx = valx;
			this.valy = valy;
		}
		
		double getX() {
			return valx;
		}
		
		double getY() {
			return valy;
		}
		
		double[] getValues() {
			return new double[] { valx, valy };
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
	}
}

