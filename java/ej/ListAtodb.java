/*
 * class called by ej.lop
 * lucky me, this is automatically generated :-)
 *
 */

package ej;


/**
 * ListAtodb:
 * interface used to perform ListAtodb math operation
 * @author jourdan
 * @version $Revision: 1.3 $
 * @see ej.lop
 */
public class ListAtodb implements ListOperator {
	/**
	 * perform the ListAtodb math operation 
	 * @param a floating point value from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a, float b[])
	{
		float[] resultat = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = (float) (20 * (Math.log(a) / Math.log(10)));
		
		return resultat;
	}

	/**
	 * perform the ListAtodb math operation 
	 * @param a list from the leftmost input
	 * @param b floating point value from the rightmost input
	 */
	public float[] operate(float a[], float b)
	{
		float[] resultat = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (float) (20 * (Math.log(a[i]) / Math.log(10)));
		
		return resultat;
	}

	/**
	 * perform the ListAtodb math operation 
	 * @param a list from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (float) (20 * (Math.log(a[i]) / Math.log(10)));
		
		return resultat;
	}
}
