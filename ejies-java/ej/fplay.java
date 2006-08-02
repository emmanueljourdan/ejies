/*
 *	ej.fplay by Emmanuel Jourdan, Ircam Ñ 04 2006
 *	function player
 *
 *	$Revision: 1.15 $
 *	$Date: 2006/08/02 10:59:10 $
 */

/**
 * TODO 	dump/listdump with extra arguement for the send
 * TODO	lecture/sauvegarde en fichier texte
 * TODO	messages spŽciaux pour la communication avec ej.function.js
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
	
	public void getcurrent() {
		outlet(DUMPOUT_OUTLET, "current", ((Courbe) Courbes.get(current)).getName());
	}
			
	public void bang() {
		myBang(current);
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
	}
	
	public void listdump(String s) {
		// methode listdump qui envoie vers un send
	}
	
	public void clear() {
		((Courbe) Courbes.get(current)).clearAllPoints();
	}
	
	public void clear(int[] idx) {
		((Courbe) Courbes.get(current)).clearPoints(idx);
	}

	public void sustain(int idx, int state) {
		if (idx >= 0 && idx < ((Courbe) Courbes.get(current)).np() && (state == 0 || state == 1)) {
			if (state == 1)
				((Courbe) Courbes.get(current)).setSustain(idx, true);
			else
				((Courbe) Courbes.get(current)).getPoint(idx).setSustain(false);
		}
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
		isAll = true;
		for (int c = 0; c < Courbes.size(); c++)
			parseArgs(c, args);
	}
	
	public void name(String[] args) {
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
	
	
	/*
	 * get methods
	 */
	public void getname() {
		outlet(DUMPOUT_OUTLET, "name", "clear");
		
		for (int c = 0; c < Courbes.size(); c++)
			outlet(DUMPOUT_OUTLET, new String[] {  "name", "append", ((Courbe) Courbes.get(c)).getName() });
	}

	public void getsustain() {
		boolean[] tmp = new boolean[((Courbe) Courbes.get(current)).np()];
		
		for (int i = 0; i < ((Courbe) Courbes.get(current)).np(); i++)
			tmp[i] = ((Courbe) Courbes.get(current)).getPoint(i).getSustain();
		
		outlet(LINE_OUTLET, "sustain", tmp);
	}
	
	public void getnbfunctions() {
		outlet(DUMPOUT_OUTLET, "nbfunctions", Courbes.size());
	}


	
	/*
	 * private methodes
	 */
	private void init() {
		for (int i = 0; i < NBCOURBES; i++) {
			Courbes.add(new Courbe("function" + i));
		}
	}
	
	private void parseArgs(int idx, Atom[] args) {
		if (idx == -1)
			return;
		
		if (args.length == 1) {
			if (isNumber(args[0])) {	// un seul argument numŽrique -> interpolation
				((Courbe) Courbes.get(idx)).interp(args[0].toFloat());
			} else {
				// args[0] is string
				if (args[0].getString().equals("clear"))
					((Courbe) Courbes.get(idx)).clearAllPoints();
				else if (args[0].getString().equals("dump"))
					((Courbe) Courbes.get(idx)).dump();
				else if (args[0].getString().equals("listdump"))
					((Courbe) Courbes.get(idx)).listdump();
				else {
					if (isAll)
						error("bad argument for message all");
					else
						error("bad argument for message anything");
				}
			}
		} else if (args.length == 2) {
			// 2 nombres
			if (isNumber(args[0]) && isNumber(args[1]))
				((Courbe) Courbes.get(idx)).addOnePoint(args[0].toFloat(), args[1].toFloat()); // comme dans listOfNumbers
			else if (args[0].isString()) {
				if (args[0].getString().equals("nth") && isNumber(args[1]))
					myNth(idx, args[1].toInt());
				else if (args[0].getString().equals("domain") && isNumber(args[1]))
					((Courbe) Courbes.get(idx)).domain(0, args[1].toDouble());
				else if (args[0].getString().equals("clear")) {
					// methode clear avec Atom[] sans le premier qui est une String "clear"
					((Courbe) Courbes.get(args[1].toInt())).clearPoints(Atom.toInt(Atom.removeFirst(args)));
				}
			}
		} else if (args.length == 3) {
			// trois nombres
			if (isNumber(args[0]) && isNumber(args[1]) && isNumber(args[2]))
				((Courbe) Courbes.get(idx)).moveOnePoint((int) args[0].toInt(), args[1].toFloat(), args[2].toFloat());
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
	
	private void listOfNumbers(int c, float[] args) {
		switch (args.length) {
		case 2:
			((Courbe) Courbes.get(c)).addOnePoint(args[0], args[1]);
			break;
		case 3:
			((Courbe) Courbes.get(c)).moveOnePoint((int) args[0], args[1], args[2]);
			break;
		default:
			error("too many arguments");
		}
	}
	
	private void myName(int c, String[] s) {
		if (s.length == 1) 
			((Courbe) Courbes.get(c)).setName(s[0]);
		else if (s.length == 0)
			error("missing argument for message name");
		else
			error("too many arguments for message name");
	}
	
	private void myNth(int c, int i) {
		if (i >= 0 && i < ((Courbe) Courbes.get(c)).np())
			outlet(INTERP_OUTLET, ((Courbe) Courbes.get(c)).getPoint(i).getY());
	}

	private int name2idx(String s) {
		for (int c = 0; c < Courbes.size(); c++) {
			if ((((Courbe) Courbes.get(c)).getName()).equals(s))
				return c;
		}
		return -1;
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
//		private double[] brgb = {0.8,0.8,0.8};			// Couleur de fond
//		private double[] frgb = {0.32,0.32,0.32};		// Couleur des points
//		private double[] rgb2 = {0.42,0.42,0.42};		// Couleur des traits
//		private double[] rgb3 = {1,0.,0.};			// Couleur sustain
//		private double[] rgb4 = {0.2,0.2,0.2};			// couleur texte
//		private double[] rgb5 = {0.5,0.5,0.5};			// Couleur grille
//		private boolean display = true;				// display while inactive ?
//		private double GridStep = 100;				// tout est dans lenom
//		private double PixelDomain;					// ...
//		private double PixelRange;					// ...
		private int NextFrom = 0;						// utilisŽ pour le message next
//		private boolean OnePointAtZero = false;		// 1 si un des points de la courbe ˆ 0 pour valeur y
		
		Courbe(String name) {
			this.name = name;
			this.lPoints = new ArrayList();
		}

		public void setName(String s) {
			this.name = s;
		}
		
		public void line() {
			if (lPoints.isEmpty())
				return;		// si pas de point... pas de line... pas de bras... pas de chocolat...
			
			this.NextFrom = 0;

			ArrayList tmpArray = new ArrayList();
			
			for (int i = 1; i < this.np(); i++) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getY()));
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getX() - ((Point) lPoints.get(i - 1)).getX()));
				if (this.getPoint(i).getSustain()) {
					this.NextFrom = i;
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
			
			for (i = (NextFrom + 1); i < this.np(); i++) {
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getY()));
				tmpArray.add(Atom.newAtom(((Point) lPoints.get(i)).getX() - ((Point) lPoints.get(i-1)).getX() ));
				if (this.getPoint(i).getSustain()) {
					NextFrom = i;
					break;
				}
			}
			
			if (OldNextFrom == this.NextFrom)	// il n'y a plus de sustain...
				this.NextFrom = 0;
			
			Atom[] tmp = new Atom[tmpArray.size()];			
			outlet(LINE_OUTLET, this.getName(), (Atom[]) tmpArray.toArray(tmp));
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
			for (int i = 0; i < this.np(); i++) {
				outlet(DUMP_OUTLET, getName(), getPoint(i).getValues());
			}
		}

		public void listdump() {
			int i, idx;
			double[] tmp = new double[np()*2];
			
			for (i = idx = 0; i < this.np(); i++) {
				tmp[idx++] = getPoint(i).getX();
				tmp[idx++] = getPoint(i).getY();
			}
			
			outlet(DUMP_OUTLET, getName(), tmp);
		}
		
		public int np() {
			return lPoints.size();
		}
		
		public String getName() {
			return name;		
		}
		
		public void clearAllPoints() {
			lPoints.clear();
		}

		public void clearPoints(int idx) {
			lPoints.remove(idx);
		}
		
		public void clearPoints(int[] idx) {
			for (int i = 0; i < idx.length; i++) {
				lPoints.remove(idx[i]);
			}
		}
		
		public void addOnePoint(double valx, double valy) {
			/**
			 * permet d'ajouter un point (il sera automatiquement insŽrer dans l'ordre croissant x)
			 */
			ListIterator listiter = lPoints.listIterator();

			while (listiter.hasNext()) {
				// si c'est plus petit on va ecrire tout de suite dans la liste
				if (valx < ((Point) listiter.next()).getX()) {
					lPoints.add(listiter.previousIndex(), new Point(valx, valy)); // previousIndex car on accde dŽjˆ ˆ next avant
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
			if (idx >= 0 && idx < this.np()) {
				lPoints.remove(idx);
			}
		}

		public void moveOnePoint(int idx, double posX, double posY) {
			/**
			 * s'occupe du dŽplacement du point (il y a aussi un reordering effectuŽ)
			 */
			if (idx >= 0 && idx < this.np()) {
				((Point) lPoints.get(idx)).setValues(posX, posY);
				
				quickSort(0, this.np() - 1); // car on a peut-tre trop dŽplacŽ le point
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
						if (i >= j) break;
						swapPoints(i, j);
					}
					swapPoints(i, d);
					quickSort(g, i-1);
					quickSort(i+1, d);
				}
			}
		
		private void swapPoints(int num1, int num2) {
			/**
			 * Žchange des pointeurs
			 */
			Point tmp;
			tmp = (Point) lPoints.get(num1);
			lPoints.set(num2, (Point) lPoints.get(num2));
			lPoints.set(num1,  tmp);
		}
		
		public void setSustain(int idx, boolean state) {
			((Point) lPoints.get(idx)).setSustain(state);
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
				
				double tmp; // pour des raisons de lisibilitŽs
				for (int i = 0; i < lPoints.size(); i++) {
					tmp = ((((Point) lPoints.get(i)).getX() - domain[0]) * factor) + min; 
					((Point) lPoints.get(i)).setX(tmp);
				}
				
				// je pourrais utiliser domain(min, max) mais il y a un test de plus,
				// qui est dŽjˆ effectuŽ au dŽbut de setDomain()
				domain[0] = min;
				domain[1] = max;
			}
		}

		public void setRange(double min, double max) {
			if (min < max) {
				double factor = (max - min) / (range[1] - range[0]);
				
				double tmp; // pour des raisons de lisibilitŽs
				for (int i = 0; i < lPoints.size(); i++) {
					tmp = ((((Point) lPoints.get(i)).getY() - range[0]) * factor) + min; 
					((Point) lPoints.get(i)).setY(tmp);
				}
				
				// je pourrais utiliser domain(min, max) mais il y a un test de plus,
				// qui est dŽjˆ effectuŽ au dŽbut de setDomain()
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
			return this.valx;
		}
		
		double getY() {
			return this.valy;
		}
		
		double[] getValues() {
			return new double[] { this.valx, this.valy };
		}
		
		public void setSustain(boolean sustain) {
			this.sustain = sustain;
		}

		public void setFix(boolean fix) {
			this.fix = fix;
		}
		
		public boolean getSustain() {
			return this.sustain;
		}
		
		public boolean getFix() {
			return this.fix;
		}
	}
}

