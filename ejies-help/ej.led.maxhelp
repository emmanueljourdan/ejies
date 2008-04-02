{
	"patcher" : 	{
		"rect" : [ 40.0, 44.0, 544.0, 432.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 44.0, 544.0, 432.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"text" : "ej.led.js",
					"patching_rect" : [ 13.719757, 13.719761, 166.0, 30.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"fontname" : "Arial",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 18.0,
					"presentation_rect" : [ 196.0, 197.0, 166.0, 30.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "an alternative LED",
					"patching_rect" : [ 13.719757, 45.0, 365.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : -1,
					"patching_rect" : [ 7.719757, 9.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-83",
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 191.0, 193.0, 632.0, 58.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 393.0, 24.0, 147.527267, 23.99996 ],
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-56",
					"fontname" : "Arial",
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontlink" : 1,
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 12.0,
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 15.0, 15.0, 147.527267, 23.99996 ],
					"text" : "open ejies overview",
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"patching_rect" : [ 356.0, 401.0, 159.0, 21.0 ],
					"handoff" : "",
					"presentation" : 1,
					"numoutlets" : 4,
					"id" : "obj-48",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"presentation_rect" : [ 671.455444, 498.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"patching_rect" : [ 279.0, 453.0, 417.0, 31.0 ],
					"numoutlets" : 1,
					"id" : "obj-57",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"patching_rect" : [ 357.0, 402.0, 158.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 671.0, 498.0, 158.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"patching_rect" : [ 421.677704, 178.935394, 210.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.pat",
					"patching_rect" : [ 526.0, 23.0, 143.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-59",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 526.0, 42.0, 57.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-60",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 399.5, 150.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "toggle",
					"patching_rect" : [ 401.0, 103.0, 46.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[12]",
					"patching_rect" : [ 401.0, 127.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 497.0, 279.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 24.0, 265.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "button mode",
					"patching_rect" : [ 45.0, 282.0, 124.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "and watch the Max window",
					"linecount" : 2,
					"patching_rect" : [ 389.0, 358.0, 85.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Sans Serif",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bang",
					"patching_rect" : [ 355.0, 300.0, 39.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"patching_rect" : [ 355.0, 365.0, 33.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"patching_rect" : [ 355.0, 329.0, 27.0, 27.0 ],
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wash the dog",
					"patching_rect" : [ 263.0, 300.0, 80.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 396.0, 300.0, 22.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or click here",
					"patching_rect" : [ 384.0, 332.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 85.0, 209.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 40.0, 209.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 63.0, 209.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[11]",
					"patching_rect" : [ 64.0, 179.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "11",
					"patching_rect" : [ 93.0, 159.0, 23.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 93.0, 140.0, 22.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"patching_rect" : [ 93.0, 121.0, 22.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-1",
					"patching_rect" : [ 93.0, 102.0, 23.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 22.0, 145.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 46.0, 145.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[5]",
					"patching_rect" : [ 225.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[4]",
					"patching_rect" : [ 247.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[3]",
					"patching_rect" : [ 269.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-26",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[2]",
					"patching_rect" : [ 313.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[1]",
					"patching_rect" : [ 291.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 225.0, 208.0, 23.0, 23.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429",
					"patching_rect" : [ 335.0, 249.0, 17.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[9]",
					"patching_rect" : [ 261.0, 117.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[7]",
					"patching_rect" : [ 286.0, 117.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-32",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[8]",
					"patching_rect" : [ 312.0, 117.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-33",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[10]",
					"patching_rect" : [ 236.0, 117.0, 20.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-34",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 273.0, 85.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Color selections",
					"patching_rect" : [ 236.0, 137.0, 131.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 121.0, 141.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 4,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click in the message boxes",
					"linecount" : 3,
					"patching_rect" : [ 116.0, 105.0, 69.0, 46.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Sans Serif",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pict $1",
					"patching_rect" : [ 121.0, 159.0, 48.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fun \"meter\" effects can be achieved by clever setting of the led \"flash time\" in the Get Info… dialog.",
					"linecount" : 3,
					"patching_rect" : [ 250.0, 192.0, 200.0, 46.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\"pict N\" changes color immediately",
					"patching_rect" : [ 164.0, 160.0, 223.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click & drag to resize (in edit mode)",
					"linecount" : 2,
					"patching_rect" : [ 106.0, 357.0, 128.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-53",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ej.lui-2164429[6]",
					"patching_rect" : [ 46.0, 316.0, 59.0, 59.0 ],
					"numoutlets" : 2,
					"id" : "obj-54",
					"outlettype" : [ "", "" ],
					"jsarguments" : [  ],
					"border" : 0,
					"filename" : "ej.led.js",
					"numinlets" : 1,
					"embedstate" : [ [ "redrawoff" ], [ "mode", 0 ], [ "circlesize", 0.75 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ], [ "frgb", 153, 0, 0 ], [ "frgb2", 255, 0, 0 ], [ "redrawon" ] ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 157.0, 73.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 176.0, 73.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 119.0, 73.5, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 31.5, 171.0, 73.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 138.0, 73.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 171.0, 73.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 176.0, 73.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 234.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 256.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 278.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 300.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 405.5, 321.0, 364.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 322.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 240.0, 344.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.019608, 0.388235, 0.501961, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
