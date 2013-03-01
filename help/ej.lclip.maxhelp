{
	"patcher" : 	{
		"fileversion" : 1,
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
		"imprint" : 1,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.lclip",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 181.0, 182.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-49",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 15.719757, 12.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Constrains a list within a certain range",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-14",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 15.719757, 44.0, 365.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"angle" : 0.0,
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"shadow" : -1,
					"hidden" : 0,
					"mode" : 0,
					"border" : 0,
					"presentation_rect" : [ 176.0, 178.0, 632.0, 58.0 ],
					"id" : "obj-83",
					"background" : 0,
					"numinlets" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"patching_rect" : [ 9.719757, 8.719761, 382.01355, 57.248684 ],
					"rounded" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation" : 0,
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"ignoreclick" : 0,
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"tosymbol" : 1,
					"fontname" : "Arial",
					"spacing_x" : 4.0,
					"hidden" : 0,
					"outlettype" : [ "int", "", "int" ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"mode" : 0,
					"align" : 1,
					"spacing_y" : 4.0,
					"border" : 2,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 147.471741, 24.0 ],
					"texton" : "Button On",
					"outputmode" : 1,
					"fontface" : 3,
					"text" : "open ejies overview",
					"fontsize" : 13.914225,
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"underline" : 0,
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"truncate" : 1,
					"id" : "obj-55",
					"background" : 0,
					"numinlets" : 1,
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 395.0, 23.0, 147.471741, 24.0 ],
					"rounded" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 1,
					"numoutlets" : 4,
					"ignoreclick" : 0,
					"stay" : 0,
					"handoff" : "",
					"hidden" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hilite" : 0,
					"handoffdelay" : 250,
					"presentation_rect" : [ 656.455444, 483.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"dragtrack" : 0,
					"id" : "obj-48",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 372.0, 306.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-50",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 304.0, 377.0, 417.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 656.0, 483.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"id" : "obj-51",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 373.0, 307.0, 158.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-47",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 4,
					"patching_rect" : [ 408.677704, 154.935394, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 528.0, 22.0, 143.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-32",
					"background" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 528.0, 41.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Do you need 2D?[3]",
					"text" : "p \"link to buffer\"",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 390.0, 200.0, 92.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
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
									"text" : "loadmess 2",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"id" : "obj-1",
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 17.0, 70.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"pattrmode" : 1,
									"items" : [ "outlet", ",", "buffer", ",", "outlet", "+", "buffer" ],
									"types" : [  ],
									"fontsize" : 11.595187,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 65.0, 104.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.595187,
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 89.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outputmode $1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"id" : "obj-4",
									"numinlets" : 2,
									"patching_rect" : [ 7.0, 114.0, 86.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"fontsize" : 11.595187,
									"id" : "obj-5",
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 129.0, 56.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set toto, buftime 50",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"id" : "obj-6",
									"numinlets" : 2,
									"patching_rect" : [ 416.0, 158.0, 107.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ toto 50",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.595187,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 533.0, 156.0, 84.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"numoutlets" : 6,
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"fontsize" : 11.595187,
									"setmode" : 1,
									"buffername" : "toto",
									"textcolor" : [  ],
									"id" : "obj-8",
									"numinlets" : 5,
									"patching_rect" : [ 416.0, 200.0, 200.0, 74.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 11.595187,
									"id" : "obj-9",
									"numinlets" : 4,
									"patching_rect" : [ 413.0, 96.0, 210.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"contdata" : 1,
									"ghostbar" : 30,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"numoutlets" : 2,
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"id" : "obj-10",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 116.0, 200.0, 241.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"contdata" : 1,
									"ghostbar" : 30,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"numoutlets" : 2,
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"id" : "obj-11",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 116.0, 11.0, 241.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.lclip -0.5 0.5 @buf_name toto @outputmode 2",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "list" ],
									"fontsize" : 11.595187,
									"id" : "obj-12",
									"numinlets" : 3,
									"patching_rect" : [ 116.0, 158.0, 282.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output modes",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 46.0, 79.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 157.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "100",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-3",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 86.0, 28.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 61.0, 308.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "100",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 49.0, 235.0, 28.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 80",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 140.0, 93.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 20",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 116.0, 93.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 0,
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"minimum" : "<none>",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : "<none>",
					"cantchange" : 0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numdecimalplaces" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"triscale" : 1.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 185.0, 192.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 198.0, 174.0, 62.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 0,
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"minimum" : "<none>",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : "<none>",
					"cantchange" : 0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numdecimalplaces" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"triscale" : 1.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 130.5, 192.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 139.0, 174.0, 47.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"contdata" : 1,
					"ghostbar" : 30,
					"presentation" : 0,
					"border_left" : 1,
					"compatibility" : 0,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"spacing" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"orientation" : 1,
					"border_bottom" : 1,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 100.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"candycane" : 1,
					"border_right" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setstyle" : 0,
					"signed" : 0,
					"settype" : 1,
					"border_top" : 1,
					"id" : "obj-12",
					"background" : 0,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"size" : 2048,
					"patching_rect" : [ 76.0, 243.0, 241.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"contdata" : 1,
					"ghostbar" : 30,
					"presentation" : 0,
					"border_left" : 1,
					"compatibility" : 0,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"spacing" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"orientation" : 1,
					"border_bottom" : 1,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 100.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"candycane" : 1,
					"border_right" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setstyle" : 0,
					"signed" : 0,
					"settype" : 1,
					"border_top" : 1,
					"id" : "obj-13",
					"background" : 0,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"size" : 2048,
					"patching_rect" : [ 76.0, 94.0, 241.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.lclip 20 80",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "list" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-25",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 76.0, 217.0, 128.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
