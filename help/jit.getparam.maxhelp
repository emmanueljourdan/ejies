{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 58.0, 74.0, 545.0, 576.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 58.0, 74.0, 545.0, 576.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "'defaults' (doesn't work with all jitter objects)",
					"presentation_rect" : [ 28.719757, 110.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 28.719757, 110.0, 243.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "special message:",
					"presentation_rect" : [ 14.719757, 92.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 94.0, 103.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg: name of the receive connected to the jitter object",
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 73.0, 293.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation_rect" : [ 611.455444, 438.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 547.0, 159.0, 21.0 ],
					"numoutlets" : 4,
					"presentation" : 1,
					"id" : "obj-48",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 417.0, 613.0, 370.0, 26.0 ],
					"numoutlets" : 1,
					"id" : "obj-50",
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.160198
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"presentation_rect" : [ 611.0, 438.0, 158.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 376.0, 548.0, 158.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"numinlets" : 4,
					"patching_rect" : [ 214.677704, 548.935364, 210.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jit.getparam",
					"presentation_rect" : [ 121.0, 122.0, 166.0, 30.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 10.719761, 166.0, 30.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "getter/setter interface for obex objects",
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 42.0, 205.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 116.0, 118.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1,
					"shadow" : -1,
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 75.0, 75.0, 147.471741, 24.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 394.0, 21.0, 147.471741, 24.0 ],
					"numoutlets" : 3,
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 13.914225,
					"text" : "open ejies overview"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 527.0, 20.0, 143.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-36",
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 39.0, 57.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-37",
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "defaults",
					"numinlets" : 2,
					"patching_rect" : [ 241.0, 139.0, 51.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toto",
					"numinlets" : 0,
					"patching_rect" : [ 26.0, 185.0, 37.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 327.5, 263.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"fontname" : "Arial",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "char",
					"numinlets" : 1,
					"patching_rect" : [ 384.0, 263.0, 125.0, 25.0 ],
					"numoutlets" : 3,
					"id" : "obj-10",
					"fontname" : "Geneva",
					"outlettype" : [ "", "int", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "(Parameters)", ",", "outputmode", ",", "adapt", ",", "out_name", ",", "type", ",", "dim", ",", "planecount", ",", "brightness", ",", "contrast", ",", "saturation" ],
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 240.0, 263.0, 86.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.getparam titi",
					"numinlets" : 2,
					"patching_rect" : [ 240.0, 236.0, 194.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"numinlets" : 2,
					"patching_rect" : [ 179.244446, 168.0, 38.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 65.0, 298.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numinlets" : 2,
					"patching_rect" : [ 141.555557, 168.0, 36.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 109.0, 143.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-16",
					"fontname" : "Arial",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.5,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 143.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 20",
					"numinlets" : 2,
					"patching_rect" : [ 65.0, 167.0, 63.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 320 240",
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 213.0, 103.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "closebang",
					"numinlets" : 0,
					"patching_rect" : [ 380.0, 83.0, 63.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numinlets" : 2,
					"patching_rect" : [ 380.0, 107.0, 36.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 329.0, 189.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"fontname" : "Arial",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "1.",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 189.0, 124.0, 25.0 ],
					"numoutlets" : 3,
					"id" : "obj-28",
					"fontname" : "Geneva",
					"outlettype" : [ "", "int", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "(Parameters)", ",", "outputmode", ",", "out_name", ",", "type", ",", "dim", ",", "planecount", ",", "bitrate", ",", "blacklevel", ",", "brightness", ",", "channels", ",", "codeclist", ",", "codecquality", ",", "colormode", ",", "colorspace", ",", "contrast", ",", "dfg_colormode", ",", "dfg_offset", ",", "dropreport", ",", "dstrect", ",", "field", ",", "framerate", ",", "framereport", ",", "gain", ",", "gamma", ",", "hue", ",", "input", ",", "interp", ",", "maxfps", ",", "playthru", ",", "pll", ",", "samplerate", ",", "saturation", ",", "sharpness", ",", "singlefield", ",", "snd_active", ",", "sndcodec", ",", "snddevice", ",", "sndinput", ",", "srcrect", ",", "standard", ",", "unique", ",", "uniqueid", ",", "usedstrect", ",", "usesrcrect", ",", "vdevice", ",", "vmode", ",", "volume", ",", "whitelevel", ",", "window", ",", "write_audio", ",", "write_length", ",", "write_preview", ",", "write_split", ",", "write_video" ],
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 241.0, 189.0, 86.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r titi",
					"numinlets" : 0,
					"patching_rect" : [ 26.0, 243.0, 29.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.getparam toto",
					"numinlets" : 2,
					"patching_rect" : [ 241.0, 162.0, 195.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-31",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.brcosa 4 char 320 240",
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 270.0, 137.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-32",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 11.595187
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 426.5, 185.0, 394.5, 185.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [ 338.5, 218.0, 520.0, 218.0, 520.0, 155.0, 426.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [ 394.5, 218.0, 520.0, 218.0, 520.0, 155.0, 426.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 424.5, 259.0, 393.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 393.5, 292.0, 521.0, 292.0, 521.0, 233.0, 424.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 337.0, 292.0, 521.0, 292.0, 521.0, 233.0, 424.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 250.5, 211.0, 232.0, 211.0, 232.0, 157.0, 250.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 283.0, 286.0, 234.0, 286.0, 234.0, 230.0, 249.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 266.0, 74.5, 266.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.744446, 198.0, 74.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 151.055557, 198.0, 74.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 208.0, 74.5, 208.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
