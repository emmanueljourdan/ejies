/*
 * class called by ej.lop
 * lucky me, this is automatically generated :-)
 *
 */

package ej;


/**
 * ListCos:
 * interface used to perform ListCos math operation
 * @author jourdan
 * @version $Revision: 1.6 $
 * @see ej.lop
 */
public class ListCos implements ListOperator {
	/**
	 * perform the ListCos math operation 
	 * @param a floating point value from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a, float b[])
	{
		float[] resultat = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = (float) Math.cos(a);
		
		return resultat;
	}

	/**
	 * perform the ListCos math operation 
	 * @param a list from the leftmost input
	 * @param b floating point value from the rightmost input
	 */
	public float[] operate(float a[], float b)
	{
		float[] resultat = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (float) Math.cos(a[i]);
		
		return resultat;
	}

	/**
	 * perform the ListCos math operation 
	 * @param a list from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (float) Math.cos(a[i]);
		
		return resultat;
	}
}
