{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 8.0, 52.0, 728.0, 360.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 8.0, 52.0, 728.0, 360.0 ],
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
					"maxclass" : "ubutton",
					"numoutlets" : 4,
					"handoff" : "",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"presentation_rect" : [ 686.455444, 513.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 544.0, 331.0, 159.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.160198,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 591.0, 357.0, 370.0, 26.0 ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 686.0, 513.0, 158.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 545.0, 332.0, 158.0, 20.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation" : 1,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 4,
					"patching_rect" : [ 326.677704, 331.935364, 210.0, 20.0 ],
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stout~",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 196.0, 197.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 10.719761, 174.0, 30.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation" : 1,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction is a stereo sound output controller.",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 42.0, 273.0, 20.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 191.0, 193.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ],
					"shadow" : -1,
					"presentation" : 1,
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"text" : "open ejies overview",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "int" ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 150.0, 150.0, 147.471741, 24.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 13.914225,
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 394.0, 21.0, 147.471741, 24.0 ],
					"id" : "obj-57",
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 527.0, 20.0, 143.0, 18.0 ],
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 39.0, 57.0, 20.0 ],
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float as dB",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 623.0, 226.0, 99.0, 20.0 ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 40.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 574.0, 223.0, 40.0, 20.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 40.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 529.0, 223.0, 40.0, 20.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wopen",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 386.0, 202.0, 51.0, 18.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wclose",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 386.0, 223.0, 51.0, 18.0 ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Since Max 5, in order to use the shortcuts, you need to press the ctrl key, then the shortcut letter.",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 70.0, 512.0, 20.0 ],
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Other option:",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 261.0, 108.0, 20.0 ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "127",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 426.0, 132.0, 32.0, 20.0 ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "0",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 393.0, 131.0, 29.0, 20.0 ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 393.0, 107.0, 56.0, 20.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!- 1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 616.0, 157.0, 31.0, 20.0 ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script disconnect adc 0 selector 2, script connect adc 0 selector 2 $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 689.0, 158.0, 413.0, 18.0 ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script disconnect sfplay 0 selector 1, script connect sfplay 0 selector 1 $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 660.0, 136.0, 446.0, 18.0 ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 660.0, 192.0, 73.0, 20.0 ],
					"id" : "obj-24",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- 2 optionals arguments specify the channels you want",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 521.0, 281.0, 165.0, 33.0 ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<->",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 425.0, 279.0, 28.0, 20.0 ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 2 6",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 370.0, 279.0, 55.0, 20.0 ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stout~ 2 6",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 449.0, 279.0, 69.0, 20.0 ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 370.0, 253.0, 55.0, 20.0 ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "close MasterAudio window : ctrl + w",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 174.0, 240.0, 20.0 ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open DSP Statuts window : ctrl + i",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 195.0, 232.0, 20.0 ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- fader control",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 613.0, 204.0, 101.0, 20.0 ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 573.0, 201.0, 40.0, 20.0 ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 528.0, 201.0, 40.0, 20.0 ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stout~",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 449.0, 253.0, 43.0, 20.0 ],
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input switch ->",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 346.0, 174.0, 95.0, 20.0 ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 393.0, 175.0, 33.0, 20.0 ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "adc",
					"text" : "adc~",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 574.0, 140.0, 36.0, 20.0 ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 428.0, 175.0, 15.0, 15.0 ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "selector",
					"text" : "selector~ 2",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 11.595187,
					"numinlets" : 3,
					"patching_rect" : [ 449.0, 174.0, 144.0, 20.0 ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- double click or ctrl + o to open",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 494.0, 253.0, 202.0, 20.0 ],
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Faders to 0 dB (input multiplied by1.) : ctrl + 1",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 234.0, 300.0, 20.0 ],
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shortcuts",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 111.0, 91.0, 20.0 ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Faders to -∞ (no sound) : ctrl + 0 (zero)",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 214.0, 263.0, 20.0 ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open MasterAudio window : ctrl + o",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 155.0, 231.0, 20.0 ],
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sfplay",
					"text" : "splay~",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 511.5, 140.0, 50.0, 20.0 ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start/Stop the dac~ : ctrl + space",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 136.0, 223.0, 20.0 ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<->",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 426.0, 253.0, 28.0, 20.0 ],
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Move both sliders with control key modifier (right click on windows)",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 281.0, 352.0, 20.0 ],
					"id" : "obj-50"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 402.5, 126.0, 435.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 458.5, 220.0, 482.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
