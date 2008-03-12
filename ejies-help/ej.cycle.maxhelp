{
	"patcher" : 	{
		"rect" : [ 10.0, 89.0, 567.0, 306.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 89.0, 567.0, 306.0 ],
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
					"maxclass" : "newobj",
					"text" : "loadmess textcolor 0. 0. 0. 1.",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 53.0, 216.0, 159.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.cycle.js",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontface" : 3,
					"id" : "obj-49",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 76.0, 77.0, 166.0, 30.0 ],
					"fontsize" : 18.0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 14.719757, 12.719761, 166.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send any type of data to the next outlet",
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 14.719757, 44.0, 365.0, 20.0 ],
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
					"presentation_rect" : [ 71.0, 73.0, 632.0, 58.0 ],
					"shadow" : -1,
					"patching_rect" : [ 9.719757, 8.719761, 382.01355, 57.248684 ],
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
					"presentation_rect" : [ 30.0, 30.0, 147.527267, 23.99996 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 394.0, 23.0, 147.527267, 23.99996 ],
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
					"presentation_rect" : [ 551.455444, 378.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"patching_rect" : [ 397.0, 276.0, 159.0, 21.0 ],
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
					"patching_rect" : [ 439.0, 342.0, 370.0, 26.0 ],
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
					"presentation_rect" : [ 551.0, 378.0, 158.0, 20.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"patching_rect" : [ 398.0, 277.0, 158.0, 20.0 ],
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
					"patching_rect" : [ 236.677704, 277.935394, 210.0, 20.0 ],
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
					"patching_rect" : [ 527.0, 22.0, 143.0, 18.0 ],
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
					"patching_rect" : [ 527.0, 41.0, 57.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p why?",
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontsize" : 10.0,
					"patching_rect" : [ 508.0, 130.0, 50.0, 20.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"rect" : [ 385.0, 246.0, 407.0, 207.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 385.0, 246.0, 407.0, 207.0 ],
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
									"text" : "loadmess textcolor 0. 0. 0. 1.",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"hidden" : 1,
									"patching_rect" : [ 13.0, 136.0, 159.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "textcolor 1. 0. 0. 1.",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 134.0, 66.0, 106.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 335.0, 159.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "select",
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.0, 66.0, 41.0, 18.0 ],
									"numinlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 271.75, 159.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-25",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 208.5, 159.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 145.25, 159.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-27",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.0, 159.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle 5",
									"numoutlets" : 5,
									"id" : "obj-29",
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.0, 110.0, 272.0, 20.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cycle send only the message to the outlet, the arguments are dispatched over the others outlets.",
									"linecount" : 2,
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 84.0, 18.0, 281.0, 33.0 ],
									"numinlets" : 1,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 4 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 3 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1
								}

							}
 ]
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
					"text" : "set the next outlet",
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 6.0, 115.0, 102.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 1. 0. 0. 1.",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 386.0, 120.0, 106.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 48.0, 137.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 47.0, 163.0, 47.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 0. 0. 1. 1.",
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 274.0, 120.0, 106.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 375.0, 239.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "select",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 227.0, 120.0, 41.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg: int analysis window",
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 393.0, 190.0, 133.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 122.0, 120.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 311.75, 239.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 248.5, 239.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-26",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 185.25, 239.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 122.0, 239.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 174.0, 120.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ej.cycle 5",
					"numoutlets" : 5,
					"id" : "obj-29",
					"outlettype" : [ "", "", "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 122.0, 190.0, 272.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 4 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 3 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
