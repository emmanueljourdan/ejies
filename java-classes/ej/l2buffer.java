/*
 *	ej.l2buffer by Emmanuel Jourdan, e--j dev Ñ 06 2005
 *
 *	$Revision: 1.6 $
 *	$Date: 2007/09/06 15:47:59 $
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.*;

/**
 * store a list into a buffer~
 * @author jourdan
 * @see ej
 */
public class l2buffer extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "Samples values to write", "Channel" };

	private String buf_name = null;
	private int channel = 1;
	private boolean isDblClickAllowed = false; // dblclick() seems to be triggered too often!
	
	/**
	 * create a l2buffer object
	 * @param args 1st argument is the name of the buffer~
	 * @param args 2nd argument is the channel index (starting at 1)
	 */
	public l2buffer(Atom[] args)	{
		declareIO(2, 0);
		
		switch (args.length) {
		case 0:
			post("¥ warning: ej.l2buffer: don't forget the argument..."); break;
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

	/**
	 * Post some information about the object to the Max window when you dble clik on the object.
	 */
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
	
	/**
	 * Store the list to the buffer.
	 * @param args the list
	 */
	public void list(float[] args) {
		writeToBuffer(args);
	}

	/**
	 * When coming form the right inlet, set the channel index.
	 * 	@param i channel index (starting at 1)
	 */
	public void inlet(int i) {
		if (getInlet() == 1)
			setChannel(i);
		else
			error("no int expected here!");
	}
	
	/**
	 * The message <i>set</i> followed by a symbol specify the name of the buffer~.
	 * @param s name of the buffer~
	 */
	public void set(String s) {
		setBufName(s);
	}
	
	/**
	 * Set the buffer~ and the channel at once.
	 * @param s name of the buffer~
	 * @param i channel index (starting at 1)
	 */
	public void set(String s, int i) {
		setBufName(s);
		setChannel(i);
	}
	
	private void setBufName(String s) {
		buf_name = s;
	}

	private void setChannel(int i) {
		if (i >= 1) {	// no upper limit (MSPBuffer will clamp to the buffer channelcount)
			channel = i;
		} else
			error("bad channel number (index starts at 1)");
	}
	
	private void writeToBuffer(float[] args) {
		if (buf_name != null && args.length > 0) {
			MSPBuffer.poke(buf_name, channel, args);
		}
	}
}