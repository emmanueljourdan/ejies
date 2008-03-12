{
	"patcher" : 	{
		"rect" : [ 129.0, 138.0, 552.0, 335.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 129.0, 138.0, 552.0, 335.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.cc.js",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontface" : 3,
					"id" : "obj-49",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 46.0, 47.0, 166.0, 30.0 ],
					"fontsize" : 18.0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 15.719765, 14.719761, 166.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change object's color",
					"numoutlets" : 0,
					"id" : "obj-23",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.719765, 46.0, 365.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-83",
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 41.0, 43.0, 632.0, 58.0 ],
					"shadow" : -1,
					"patching_rect" : [ 10.719765, 10.719761, 382.01355, 57.248684 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"fontface" : 3,
					"id" : "obj-55",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"fontlink" : 1,
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 147.527267, 23.99996 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 395.0, 25.0, 147.527267, 23.99996 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"text" : "open ejies overview",
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 1,
					"numoutlets" : 4,
					"id" : "obj-48",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"presentation_rect" : [ 521.455444, 348.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"patching_rect" : [ 381.0, 303.0, 159.0, 21.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 7.9,
					"hidden" : 1,
					"patching_rect" : [ 423.0, 369.0, 370.0, 26.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-51",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 521.0, 348.0, 158.0, 20.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"patching_rect" : [ 382.0, 304.0, 158.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 220.677689, 304.935394, 210.0, 20.0 ],
					"numinlets" : 4,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.pat",
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 528.0, 24.0, 143.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"id" : "obj-32",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 528.0, 43.0, 57.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[object name] [color index]",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 204.0, 232.0, 146.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 15,
					"fontsize" : 10.0,
					"minimum" : 0,
					"patching_rect" : [ 150.0, 205.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "send $1",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 150.0, 233.0, 52.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 1",
					"numoutlets" : 1,
					"id" : "obj-8",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 111.0, 59.0, 89.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- my favorite colors",
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 105.0, 129.0, 115.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recursive ? (1 by default)",
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 98.0, 166.0, 138.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 81.0, 165.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "global $1",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 81.0, 191.0, 58.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p subpatch",
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontsize" : 10.0,
					"patching_rect" : [ 458.0, 178.0, 67.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"rect" : [ 387.0, 390.0, 361.0, 282.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 387.0, 390.0, 361.0, 282.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s truc",
									"numoutlets" : 0,
									"id" : "obj-1",
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 7.9,
									"patching_rect" : [ 112.0, 61.0, 52.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "send sdfg",
									"numoutlets" : 0,
									"id" : "obj-2",
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 7.9,
									"patching_rect" : [ 71.0, 99.0, 51.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- the life in gray...",
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 86.0, 90.0, 106.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "resetall",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 37.0, 91.0, 48.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll machin 1",
					"numoutlets" : 4,
					"id" : "obj-16",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 458.0, 152.0, 78.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"save" : [ "#N", "coll", "machin", 1, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive sdfg",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 458.0, 124.0, 73.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s truc",
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontsize" : 10.0,
					"patching_rect" : [ 379.0, 178.0, 39.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send sdfg",
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontsize" : 10.0,
					"patching_rect" : [ 379.0, 152.0, 61.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send toto",
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontsize" : 10.0,
					"patching_rect" : [ 379.0, 124.0, 58.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "defaults",
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 54.0, 129.0, 51.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ej.cc.js",
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 37.0, 266.0, 58.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg (optional): recursive mode (0 disable, 1 enable - default)",
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 95.0, 268.0, 318.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
