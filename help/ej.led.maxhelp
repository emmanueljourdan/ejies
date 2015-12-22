{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 40.0, 45.0, 544.0, 432.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.5, 276.0, 490.5, 11.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 100 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-24",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 223.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429[5]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 200 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-25",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 245.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429[4]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 300 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-26",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 267.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429[3]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 500 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-27",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 311.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429[2]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 400 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-28",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 289.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 223.0, 211.0, 23.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.72 ], [ "frgb", 111, 158, 167 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 600 ], [ "brgb", 174, 185, 192 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-30",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 333.0, 252.0, 17.0, 17.0 ],
					"varname" : "ej.lui-2164429"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 20.871338,
					"frgb" : 0.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.719757, 13.719761, 166.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.0, 197.0, 166.0, 30.0 ],
					"text" : "ej.led.js",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.719757, 45.0, 365.0, 19.0 ],
					"text" : "an alternative LED",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.719757, 9.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"presentation_rect" : [ 191.0, 193.0, 632.0, 58.0 ],
					"shadow" : -1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontface" : 3,
					"fontlink" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.914225,
					"id" : "obj-56",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 393.0, 24.0, 147.471756, 23.544798 ],
					"presentation_rect" : [ 15.0, 15.0, 147.471756, 23.544798 ],
					"text" : "open ejies overview",
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hilite" : 0,
					"id" : "obj-48",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 356.0, 401.0, 159.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.455444, 498.968689, 155.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-57",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 279.0, 453.0, 417.0, 30.0 ],
					"text" : ";\rmax launchbrowser http://support.e--j.com"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 357.0, 402.0, 166.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.0, 498.0, 166.0, 19.0 ],
					"text" : "© Emmanuel Jourdan, e--j dev",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 421.677704, 178.935394, 210.0, 19.0 ],
					"text" : "bgcolor 0.937255 0.92549 0.792157 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.0, 23.0, 149.0, 17.0 ],
					"text" : "load ejies-overview.maxpat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.0, 42.0, 57.0, 19.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.5, 150.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 103.0, 46.0, 17.0 ],
					"text" : "toggle"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 153, 0, 0 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-3",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 401.0, 127.0, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 282.0, 124.0, 19.0 ],
					"text" : "button mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Sans Serif",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 358.0, 85.0, 32.0 ],
					"text" : "and watch the Max window"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 300.0, 39.0, 17.0 ],
					"text" : "bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.0, 365.0, 33.0, 19.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 170, 170, 170 ], [ "mode", 1 ], [ "frgb2", 255, 243, 59 ], [ "blinktime", 150 ], [ "brgb", 221, 221, 221 ], [ "brgb2", 221, 221, 221 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-10",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 355.0, 329.0, 27.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 263.0, 300.0, 80.0, 17.0 ],
					"text" : "wash the dog"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.0, 300.0, 22.0, 17.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 384.0, 332.0, 85.0, 19.0 ],
					"text" : "or click here"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-14",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 88.0, 219.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 43.0, 219.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 66.0, 219.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 153, 0, 0 ], [ "mode", 0 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-17",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 67.0, 184.876282, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[8]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.917358, 160.752579, 23.0, 17.0 ],
					"text" : "11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.917358, 137.835052, 22.0, 17.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.917358, 114.917526, 22.0, 17.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.917358, 92.0, 23.0, 17.0 ],
					"text" : "-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 25.0, 155.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.0, 155.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 0, 0, 119 ], [ "mode", 0 ], [ "frgb2", 0, 255, 255 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-31",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.0, 117.0, 20.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[13]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 204, 127, 0 ], [ "mode", 0 ], [ "frgb2", 255, 255, 0 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-32",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 286.0, 117.0, 20.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[14]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 127, 127, 127 ], [ "mode", 0 ], [ "frgb2", 255, 255, 255 ], [ "blinktime", 150 ], [ "brgb", 0, 0, 0 ], [ "brgb2", 0, 0, 0 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-33",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 312.0, 117.0, 20.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[15]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.75 ], [ "frgb", 0, 68, 0 ], [ "mode", 0 ], [ "frgb2", 0, 255, 0 ], [ "blinktime", 150 ], [ "brgb", 84, 84, 84 ], [ "brgb2", 119, 119, 119 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-34",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 236.0, 117.0, 20.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ],
					"varname" : "ej.lui-2164429[16]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 273.0, 85.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 137.0, 131.0, 19.0 ],
					"text" : "Color selections"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-37",
					"maxclass" : "number",
					"maximum" : 4,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 127.768593, 139.041245, 50.0, 19.0 ],
					"presentation_rect" : [ 0.0, 0.0, 50.0, 18.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Sans Serif",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-38",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 122.438019, 95.618553, 69.0, 45.0 ],
					"text" : "Click in the message boxes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.768593, 160.752579, 48.0, 17.0 ],
					"text" : "pict $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-40",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 192.0, 200.0, 45.0 ],
					"text" : "Fun \"meter\" effects can be achieved by clever setting of the led \"flash time\" in the Get Info… dialog."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 176.0, 160.0, 223.0, 19.0 ],
					"text" : "\"pict N\" changes color immediately"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-53",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 357.0, 128.0, 32.0 ],
					"text" : "<- click & drag to resize (in edit mode)"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "circlesize", 0.83 ], [ "frgb", 153, 0, 0 ], [ "mode", 1 ], [ "frgb2", 255, 0, 0 ], [ "blinktime", 150 ], [ "brgb", 239, 236, 202 ], [ "brgb2", 174, 185, 192 ] ],
					"filename" : "ej.led.js",
					"id" : "obj-54",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 46.0, 316.0, 59.0, 59.0 ],
					"varname" : "ej.lui-2164429[9]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 405.5, 321.0, 364.5, 321.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 107.417358, 181.257736, 76.5, 181.257736 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 107.417358, 158.34021, 76.5, 158.34021 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 107.417358, 135.422684, 76.5, 135.422684 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 107.417358, 112.505157, 76.5, 112.505157 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 34.5, 181.0, 76.5, 181.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 58.5, 181.0, 76.5, 181.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 232.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 254.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 276.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 320.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 298.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 232.5, 243.0, 342.5, 243.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 137.268585, 181.257736, 76.5, 181.257736 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "ej.led.js",
				"bootpath" : "/Users/jourdan/Ircam-Works/Repositories/ejies/jsui",
				"patcherrelativepath" : "../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ]
	}

}
