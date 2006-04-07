/*
 *	ej.urn by Emmanuel Jourdan, Ircam Ñ 02 2005
 *	urn data types
 *
 *	$Revision: 1.1 $
 *	$Date: 2006/04/07 10:07:32 $
 */

package ej;

import com.cycling74.max.*;
import java.util.Random; 

public class urn extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "bang", "urn size" };
	private static final String[] OUTLET_ASSIST = new String[]{ "random value", "bang when done"};
	private int urnSize = 0;
	private int howManyLeft = 0;
	private boolean[] urnTable = new boolean[urnSize];
	private int tmpValue = 0;
	private Random generator = new Random();
	
	public urn(int size, int seed) {
		declareTypedIO("ba", "ib");
		createInfoOutlet(true);
		
		urnInit(size);
		setSeed(seed);
	
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}
	
	public void bang() {
		if (howManyLeft != 0)
			urner();
		else
			outlet(1, "bang");
	}
	
	public void inlet(int i) {
		if (getInlet() == 1)
			urnInit(i);
	}
	
	public void clear() {
		urnClear();
	}
	
	public void seed(int seed) {
		setSeed(seed);
	}
		
/*
 *
 1. fill blackstack
 2. get random item i from blackstack (i.e. generate an integer 1 <= i 
									   <= blackstacksize)
 3. move item i to whitestack
 4. reduce size of blackstack by 1
 5. if size balckstack =0 exit, else
 6. move top-of-blackstack to index i
 7. goto 2
 
 like this *every time a getrandom routine is called one item will 
 become "white"
 and there's an exit too...
 and the case where i = blackstacksize shoudl work ok
 */
	
	private void urner() {
		do {
			tmpValue = generator.nextInt(urnSize);
		} while (urnTable[tmpValue] == true);

		urnTable[tmpValue] = true;

		outlet(0, tmpValue);
	}
		
	private void urnInit(int size) {
		urnSize = size;
		urnTable = new boolean[size];
		urnClear();
	}
	
	private void urnClear() {
		for (int i = 0; i < urnSize; i++) {
			urnTable[i] = false;
		}
		
		howManyLeft = urnSize;
	}
	
	private void setSeed(int seed) {
		if (seed < 1)
			generator = new Random(System.currentTimeMillis());
		else
			generator = new Random(seed);
	}
}