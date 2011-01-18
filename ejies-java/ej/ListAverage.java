/*
 * class called by ej.lop
 * lucky me, this is automatically generated :-)
 *
 */

package ej;


/**
 * ListAverage:
 * interface used to perform ListAverage math operation
 * @author jourdan
 * @version $Revision: 1.7 $
 * @see ej.lop
 */
public class ListAverage implements ListOperator {
	/**
	 * perform the ListAverage math operation 
	 * @param a floating point value from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a, float b[])
	{
		float[] resultat = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = (float) ((a + b[i]) / 2.);
		
		return resultat;
	}

	/**
	 * perform the ListAverage math operation 
	 * @param a list from the leftmost input
	 * @param b floating point value from the rightmost input
	 */
	public float[] operate(float a[], float b)
	{
		float[] resultat = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (float) ((a[i] + b) / 2.);
		
		return resultat;
	}

	/**
	 * perform the ListAverage math operation 
	 * @param a list from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (float) ((a[i] + b[i]) / 2.);
		
		return resultat;
	}
}
