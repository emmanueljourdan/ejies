{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 24.0, 110.0, 547.0, 304.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 24.0, 110.0, 547.0, 304.0 ],
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
					"outlettype" : [ "bang", "bang", "", "int" ],
					"presentation_rect" : [ 641.455444, 468.968689, 155.0, 18.0 ],
					"handoff" : "",
					"patching_rect" : [ 365.0, 274.0, 159.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 4,
					"hilite" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 412.0, 300.0, 370.0, 26.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.160198
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"presentation_rect" : [ 641.0, 468.0, 158.0, 20.0 ],
					"patching_rect" : [ 366.0, 275.0, 158.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"numinlets" : 1,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"patching_rect" : [ 204.677704, 275.935364, 210.0, 20.0 ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 4,
					"hidden" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "kd&u",
					"presentation_rect" : [ 151.0, 152.0, 166.0, 30.0 ],
					"patching_rect" : [ 14.719757, 10.719761, 166.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 1,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numoutlets" : 0,
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "key down and up...",
					"patching_rect" : [ 14.719757, 42.0, 205.0, 20.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 146.0, 148.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"shadow" : -1,
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"id" : "obj-83",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "int", "", "int" ],
					"presentation_rect" : [ 105.0, 105.0, 147.471741, 24.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 394.0, 21.0, 147.471741, 24.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontlink" : 1,
					"numoutlets" : 3,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 13.914225,
					"text" : "open ejies overview",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 527.0, 20.0, 143.0, 18.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 39.0, 57.0, 20.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "second : modifiers number (default 0 on mac, 128 on windows)",
					"patching_rect" : [ 81.0, 138.0, 390.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arguments :",
					"patching_rect" : [ 15.0, 98.0, 117.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Helvetica",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.0, 253.0, 20.0, 20.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "kd&u 32",
					"outlettype" : [ "int", "bang", "bang" ],
					"patching_rect" : [ 97.0, 226.0, 59.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 0,
					"numoutlets" : 3,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for example : Press space bar…",
					"linecount" : 2,
					"patching_rect" : [ 65.0, 188.0, 104.0, 33.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output is 1 when the desired key is down, 0 when it's going up…",
					"patching_rect" : [ 14.0, 71.0, 378.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "first: key number",
					"patching_rect" : [ 81.0, 119.0, 239.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- double click to see key number and modifier's number",
					"patching_rect" : [ 161.0, 228.0, 330.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
