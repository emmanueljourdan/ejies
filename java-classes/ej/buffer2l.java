/*
 *	ej.buffer2l by Emmanuel Jourdan, e--j dev Ñ 07 2013
 *	output "best" samples of a buffer as list
 *
 */

package ej;

import com.cycling74.max.*;
import com.cycling74.msp.MSPBuffer;

/**
 * output samples from a buffer
 * @author jourdan
 * @see ej
 * @version $Revision: 1.10 $
 */
public class buffer2l extends ejies {
	private static final String[] INLET_ASSIST = new String[]{ "Messages in" };
	private static final String[] OUTLET_ASSIST = new String[]{ "(list) positive peaks", "(list) negative peaks", "(list) RMS", "(list) RMS * -1" };

	private int grain = 512;
	private String buf_name = null;
	private float[] sb = new float[0];
	private float[] sbNegatives = new float[0];
	private float[] sRMS = new float[0];
	private float[] sRMStimesMinus1 = new float[0];
	
	public buffer2l() {
		declareIO(1, 4);
		createInfoOutlet(false);
		
		declareAttribute("grain",  null, "setattrGrain");
		declareAttribute("buf_name", null, "setattrBufName");

		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
	}

	public void bang() {
		calculateSamples();
		outputSamples();
	}
	
	private void setattrGrain(int grain) {
		if (grain > 0)
			this.grain = grain;
	}
	
	private void setattrBufName(String s) {
		if (s != null)
			this.buf_name = s;
	}
	
	private void calculateSamples() {
		if (buf_name == null) {
			error("ej.buffer2l: no buffer set");
			return;
		}
		
		long frames = MSPBuffer.getFrames(buf_name);
		if (frames <= 0) {
			error("ej.buffer2l: this buffer is empty");
			return;
		}
		
		this.sb = new float[this.grain];
		this.sRMS = new float[this.grain];
		this.sbNegatives = new float[this.grain];
		this.sRMStimesMinus1 = new float[this.grain];
		long blocks = this.grain;
		double inc = (double)frames / (double)blocks;
		
		for (int i = 0; i < Math.round(blocks); i++) {
			sb[i] = peak(MSPBuffer.peek(buf_name, 0, Math.round(i * inc), Math.round(inc)));
			sRMS[i] = rms(MSPBuffer.peek(buf_name, 0, Math.round(i *inc), Math.round(inc)));
			sbNegatives[i] = peakNegatives(MSPBuffer.peek(buf_name, 0, Math.round(i * inc), Math.round(inc)));
			sRMStimesMinus1[i] = sRMS[i] * -1;
		}
	}
	
	private float peak(float[] f) {
		float max = 0f;
		
		if (f == null)
			return max;
		
		for (int i = 0; i < f.length; i++) {
			if (f[i] > max)
				max = Math.abs(f[i]);
		}
		return max;
	}
		
	private float peakNegatives(float[] f) {
		float min = 0f;
		
		if (f == null)
			return min;
		
		for (int i = 0; i < f.length; i++) {
			if (f[i] < min)
				min = f[i];
		}
		return min;
	}
	
	
	private float rms(float[] f) {
		double sum = 0.0;
		
		if (f == null)
			return (float)sum;
		
		for (int i = 0; i < f.length; i++) {
			sum += f[i] * f[i];	// root
		}
		
		sum /= f.length;	// mean
		
		return (float)Math.sqrt(sum);	// square
	}
	
	private void outputSamples() {
		outlet(3, this.sRMStimesMinus1);
		outlet(2, this.sRMS);
		outlet(1, this.sbNegatives);
		outlet(0, this.sb);
	}
}