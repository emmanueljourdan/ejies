/*
 * normally called by ej.lop
 */

package ej;

public class ListLTPass implements ListOperator {
	public float[] operate(float a[], float b[])
	{
		float resultat[] = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = a[i] < b[i] ? a[i] : 0;
		
		return resultat;
	}
}
