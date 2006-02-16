/*
 * normally called by ej.lop
 */

package ej;

public class ListSin implements ListOperator {
	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (float) Math.sin(a[i]);
		
		return resultat;
	}
}
