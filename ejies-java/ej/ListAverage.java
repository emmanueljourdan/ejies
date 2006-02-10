/*
 * normally called by ej.lop
 */

package ej;

public class ListAverage implements ListOperator {
	public float[] operate(float a[], float b[])
	{
		float resultat[] = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (float) ((a[i] + b[i]) / 2.);
		
		return resultat;
	}
}
