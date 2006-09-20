/*
 * normally called by ej.lop
 */

package ej;

/**
 * interface used to perform any math operation
 * @author jourdan
 * @version $Revision: 1.4 $
 * @see ej.lop
 * @see ej
 */
public interface ListOperator {
	/**
	 * permform some math operations 
	 * @param a floating point value from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a[], float b[]);

	/**
	 * permform some math operations 
	 * @param a list from the leftmost input
	 * @param b floating point value from the rightmost input
	 */
	public float[] operate(float a[], float b);

	/**
	 * permform some math operations 
	 * @param a list from the leftmost input
	 * @param b list from the rightmost input
	 */
	public float[] operate(float a, float b[]);
}