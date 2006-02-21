/*
 * class called by ej.lop
 * lucky me, this is automatically generated :-)
 *
 */

package ej;

public class ListAtan2 implements ListOperator {

	public float[] operate(float a, float b[])
	{
		float[] resultat = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = (float) Math.atan2(a, b[i]);
		
		return resultat;
	}

	public float[] operate(float a[], float b)
	{
		float[] resultat = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = (float) Math.atan2(a[i], b);
		
		return resultat;
	}

	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = (float) Math.atan2(a[i], b[i]);
		
		return resultat;
	}
}
