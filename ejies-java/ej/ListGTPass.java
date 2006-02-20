/*
 * class called by ej.lop
 * lucky me, this is automaticaly generated :-)
 */

package ej;

//import com.cycling74.max.*;

public class ListGTPass implements ListOperator {

	public float[] operate(float a, float b[])
	{
		float resultat[] = new float[b.length];
		
		for (int i = 0; i < b.length; i++)
			resultat[i] = a > b[i] ? a : 0;
		
		return resultat;
	}

	public float[] operate(float a[], float b)
	{
		float resultat[] = new float[a.length];
		
		for (int i = 0; i < a.length; i++)
			resultat[i] = a[i] > b ? a[i] : 0;
		
		return resultat;
	}

	public float[] operate(float a[], float b[])
	{
		int listLength = Math.min(a.length, b.length);
		float resultat[] = new float[listLength];
		
		for (int i = 0; i < listLength; i++)
			resultat[i] = a[i] > b[i] ? a[i] : 0;
		
		return resultat;
	}
}
