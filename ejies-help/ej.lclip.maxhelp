{
	"patcher" : 	{
		"rect" : [ 21.0, 52.0, 545.0, 339.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 21.0, 52.0, 545.0, 339.0 ],
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
					"text" : "ej.lclip",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 181.0, 182.0, 166.0, 30.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.719757, 12.719761, 166.0, 30.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation" : 1,
					"fontface" : 3,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Constrains a list within a certain range",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.719757, 44.0, 365.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : -1,
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 176.0, 178.0, 632.0, 58.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 9.719757, 8.719761, 382.01355, 57.248684 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 147.527267, 23.99996 ],
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 23.0, 147.527267, 23.99996 ],
					"fontlink" : 1,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"text" : "open ejies overview",
					"fontname" : "Arial",
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontface" : 3,
					"id" : "obj-55",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hilite" : 0,
					"presentation_rect" : [ 656.455444, 483.968689, 155.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 372.0, 306.0, 159.0, 21.0 ],
					"numoutlets" : 4,
					"presentation" : 1,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"id" : "obj-48",
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 304.0, 377.0, 417.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 656.0, 483.0, 158.0, 20.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 373.0, 307.0, 158.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"hidden" : 1,
					"numinlets" : 4,
					"patching_rect" : [ 408.677704, 154.935394, 210.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.pat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 528.0, 22.0, 143.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 528.0, 41.0, 57.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Do you need 2D?[3]",
					"text" : "p link to buffer",
					"numinlets" : 0,
					"patching_rect" : [ 390.0, 200.0, 92.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-1",
					"patcher" : 					{
						"rect" : [ 187.0, 199.0, 639.0, 302.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 187.0, 199.0, 639.0, 302.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 17.0, 68.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"pattrmode" : 1,
									"numinlets" : 1,
									"types" : [  ],
									"patching_rect" : [ 7.0, 65.0, 104.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-2",
									"items" : [ "outlet", ",", "buffer", ",", "outlet", "+", "buffer" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 89.0, 50.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outputmode $1",
									"numinlets" : 2,
									"patching_rect" : [ 7.0, 114.0, 86.0, 18.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 129.0, 56.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set toto, buftime 50",
									"numinlets" : 2,
									"patching_rect" : [ 416.0, 158.0, 107.0, 18.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ toto 50",
									"numinlets" : 1,
									"patching_rect" : [ 533.0, 156.0, 84.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"textcolor" : [  ],
									"buffername" : "toto",
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
									"numinlets" : 5,
									"patching_rect" : [ 416.0, 200.0, 200.0, 74.0 ],
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"numoutlets" : 6,
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"id" : "obj-8",
									"setmode" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
									"hidden" : 1,
									"numinlets" : 4,
									"patching_rect" : [ 413.0, 96.0, 210.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"contdata" : 1,
									"numinlets" : 1,
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"patching_rect" : [ 116.0, 200.0, 241.0, 73.0 ],
									"ghostbar" : 30,
									"numoutlets" : 2,
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.682353, 0.72549, 0.752941, 1.0 ],
									"size" : 2048,
									"id" : "obj-10",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"contdata" : 1,
									"numinlets" : 1,
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"patching_rect" : [ 116.0, 11.0, 241.0, 73.0 ],
									"ghostbar" : 30,
									"numoutlets" : 2,
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"outlettype" : [ "", "" ],
									"slidercolor" : [ 0.682353, 0.72549, 0.752941, 1.0 ],
									"size" : 2048,
									"id" : "obj-11",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.lclip -0.5 0.5 @buf_name toto @outputmode 1",
									"numinlets" : 3,
									"patching_rect" : [ 116.0, 158.0, 280.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "list" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output modes",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 48.0, 79.0, 20.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 157.0, 18.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "100",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 86.0, 28.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 61.0, 308.0, 18.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "100",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 49.0, 235.0, 28.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 80",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 140.0, 93.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 20",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 116.0, 93.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 192.0, 50.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 198.0, 174.0, 62.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 130.5, 192.0, 50.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 139.0, 174.0, 47.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"contdata" : 1,
					"numinlets" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"patching_rect" : [ 76.0, 243.0, 241.0, 73.0 ],
					"ghostbar" : 30,
					"numoutlets" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.682353, 0.72549, 0.752941, 1.0 ],
					"size" : 2048,
					"id" : "obj-12",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"contdata" : 1,
					"numinlets" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"patching_rect" : [ 76.0, 94.0, 241.0, 73.0 ],
					"ghostbar" : 30,
					"numoutlets" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"slidercolor" : [ 0.682353, 0.72549, 0.752941, 1.0 ],
					"size" : 2048,
					"id" : "obj-13",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.lclip 20 80",
					"numinlets" : 3,
					"patching_rect" : [ 76.0, 217.0, 128.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "list" ],
					"id" : "obj-25"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-32", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
