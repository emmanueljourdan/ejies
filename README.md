# ejies

## What's ejies?
The ejies is a collection of abstractions utilities, digital signal processing, JavaScripts and Java tools I have developed in [Max](http://www.cycling74.com) for my own pedagogical purposes, using the knowledge I gained while teaching at [Ircam](http://www.ircam.fr).

Take a look at [e--j dev's website](http://www.e--j.com) to learn more about it.

## Compatibility
This version requires Max 6.1.x or Max 7.x. Max 7.1 or higher recommanded.

Older Version compatibility:
- Max 6.0.x: use ejies 3.0b2
- Max 5.1.7 or higher, use ejies 3.0b1
- Max 4.6.x, you might want to download ejies 1.58.

## Content
### Java externals:
- ej.buffer2l: output "meaningful" samples of a buffer as a list
- ej.dx2x: create a list from intervals
- ej.fplay: Non-graphical multi-breakpoint function editor 
- ej.ftom: Frequency to MIDI (with tuning adjustment, works for lists)
- ej.l2buffer: fill a buffer~ with a list 
- ej.lchange: aware of list changes
- ej.lclip: constrains a list within a certain range
- ej.ldrunk: drunk for list
- ej.linterp: more than a list interpolator 
- ej.lop: basic mathematic operations on (big) list
- ej.lquant: Quantize a stream of number or a list (sort of multiple rounding process)
- ej.lscale: maps input range of lists to output range
- ej.lslide: smooth-out changes in list
- ej.mmmm: calculate minimum, mean, median and maximum
- ej.mtof: MIDI to Frequency (with tuning adjustment, works for lists)
- ej.urn: like urn, for larger random range
- ej.x2dx: get the interval between successive values of a list

### JS:
- ej.4m.js: (obsolete) calculate minimum, mean, median and maximum
- ej.cc.js: Change object Color
- ej.cn.js: Change Name of named object
- ej.cycle.js: send value to different outlets
- ej.dn.js: display a named object
- ej.lock.js: get/set locked mode
- ej.lui.js: use the arguement to load a jsui file.
- ej.nthru.js: like thru object (number of inlet/outlet can change)
- ej.op.js: Open subPatcher
- ej.route.js: route data types

### JSUI:
- ej.function.js: multi bpf editor (compatible with the function object)
- ej.led.js: new jsui... which does the same as the standard LED object / button object
- ej.numbox.js: an alternative number box

### Abstractions:
- ej.dialog: alternative dialog box for text entry
- ej.jit.preview: (BPatcher) Patcher window with slowing down
- ej.line: multi-segment line
- ej.mout~: panpot on multiple output
- ej.vdb~: Variable delay without clicks or transposition (cheaper than vdb~ in the Bennies)
- ej.vdb-sig~: Same as ej.vdb~ but accepts signal as delay time
- jit.getparam: grab attributes/message from jitter (and others?) objects
- jit.fullscreen: create a jit.window on the second screen
- kaf: kill and activate finder (OS X only, shell object required)
- kd&u: report key down (1) and up (0)
- ptt: push to talk (usefull during conferences...)
- splay~: sound file player with interface
- stout~: control stereo (replace dac~ or ezdac~)

### Unclassified:
Collection of Aqua sliders.


## Installation:
Use Max 7.1's package manager or Drag the folder in one of Max's supported package folder.


## Support

If you have question or need assistance, visit [e--j dev support](http://support.e--j.com).
