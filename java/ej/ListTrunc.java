/*
 * class called by ej.lop
 * lucky me, this is automatically generated :-)
 *
 */

package ej;


/**
 * ListTrunc:
 * interface used to perform ListTrunc math operation
 * @author jourdan
 * @version $Revision: 1.4 $
 * @see ej.lop
 */
public class ListTrunc implements ListOperator {
	/**
	 * perform the ListTrunc math operation 
	 * @param a floating point value from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a, float b[])
	{
		float[] resultat = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = (int) a;
		
		return resultat;
	}

	/**
	 * perform the ListTrunc math operation 
	 * @param a list from the leftmost input
	 * @param b floating point value from the rightmost input
	 */
	public float[] operate(float a[], float b)
	{
		float[] resultat = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (int) a[i];
		
		return resultat;
	}

	/**
	 * perform the ListTrunc math operation 
	 * @param a list from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (int) a[i];
		
		return resultat;
	}
}
