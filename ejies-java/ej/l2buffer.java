/*
 *	ej.l2buffer by Emmanuel Jourdan, Ircam Ñ 06 2005
 *
 *	$Revision: 1.3 $
 *	$Date: 2006/08/07 14:05:02 $
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.*;

public class l2buffer extends ej {
	private static final String[] INLET_ASSIST = new String[]{ "Samples values to write", "Channel" };

	private String buf_name = null;
	private int channel = 1;
	private boolean isDblClickAllowed = false; // dblclick() seems to be triggered too often!
	
	public l2buffer(Atom[] args)	{
		declareIO(2, 0);
		
		switch (args.length) {
		case 0:
			post("don't forget the argument..."); break;
		case 1:
			set(args[0].toString()); break;
		case 2:
			set(args[0].toString());
			setChannel(args[1].toInt());
			break;
		default:
			error("what can I do with all thoses arguments?");
		}
		
		declareAttribute("buf_name", null, "setBufName");
		declareAttribute("channel", null, "setChannel");
		createInfoOutlet(false);
		setInletAssist(INLET_ASSIST);
		isDblClickAllowed = true;
	}

	public void dblclick() {
		if (isDblClickAllowed) {
			post("ej.l2buffer");
	
			// if the number of channels is not greater than 0, the buffer doesn't exist.
			if (MSPBuffer.getChannels(buf_name) > 0) {
				post("  buffer name: " + buf_name);
				post("  channels: " + MSPBuffer.getChannels(buf_name));
				post("  writing to channel: " + channel);
			} else 
				post("  " + buf_name + " is not a valid buffer...");
		}
	}
	
	public void list(float[] args) {
		writeToBuffer(args);
	}

	public void inlet(int i) {
		if (getInlet() == 1)
			setChannel(i);
	}
	
	public void set(String s) {
		setBufName(s);
	}
	
	public void set(String s, int i) {
		setBufName(s);
		setChannel(i);
	}
	
	public void setBufName(String s) {
		buf_name = s;
	}

	private void setChannel(int i) {
		if (i >= 1 && i <= 4) {
			channel = i;
		} else
			error("bad channel number");
	}
	
	private void writeToBuffer(float[] args) {
		MSPBuffer.poke(buf_name, channel, args);
	}
}