/*
 * normally called by ej.lop
 */

package ej;

public class ListMinimum implements ListOperator {
	public float[] operate(float a[], float b[])
	{
		float resultat[] = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = Math.min(a[i], b[i]);
		
		return resultat;
	}
}
