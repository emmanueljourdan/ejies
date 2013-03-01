{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 53.0, 584.0, 349.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 53.0, 584.0, 349.0 ],
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
					"text" : "ej.lquant",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 256.0, 257.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-49",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 14.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "maps input range of lists to output range.",
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
					"id" : "obj-12",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 46.0, 221.0, 20.0 ]
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
					"presentation_rect" : [ 251.0, 253.0, 632.0, 58.0 ],
					"id" : "obj-83",
					"background" : 0,
					"numinlets" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"patching_rect" : [ 10.719757, 10.719761, 382.01355, 57.248684 ],
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
					"presentation_rect" : [ 75.0, 75.0, 147.471741, 24.0 ],
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
					"patching_rect" : [ 396.0, 25.0, 147.471741, 24.0 ],
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
					"presentation_rect" : [ 731.455444, 558.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"dragtrack" : 0,
					"id" : "obj-48",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 396.0, 316.0, 159.0, 21.0 ]
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
					"patching_rect" : [ 439.0, 340.0, 417.0, 31.0 ]
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
					"presentation_rect" : [ 731.0, 558.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"id" : "obj-51",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 397.0, 317.0, 158.0, 20.0 ]
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
					"patching_rect" : [ 58.677704, 322.935364, 210.0, 20.0 ]
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
					"id" : "obj-13",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 529.0, 24.0, 143.0, 18.0 ]
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
					"id" : "obj-14",
					"background" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Do you need 2D?[1]",
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
					"patching_rect" : [ 360.0, 278.0, 95.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 21.0, 427.0, 649.0, 295.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 21.0, 427.0, 649.0, 295.0 ],
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
									"patching_rect" : [ 7.0, 17.0, 78.0, 20.0 ]
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
									"patching_rect" : [ 7.0, 65.0, 86.0, 20.0 ]
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
									"patching_rect" : [ 7.0, 114.0, 94.0, 18.0 ]
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
									"patching_rect" : [ 432.0, 156.0, 63.0, 20.0 ]
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
									"patching_rect" : [ 432.0, 180.0, 122.0, 18.0 ]
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
									"patching_rect" : [ 537.0, 156.0, 96.0, 20.0 ]
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
									"patching_rect" : [ 432.0, 203.0, 200.0, 74.0 ],
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
									"patching_rect" : [ 313.0, 112.0, 210.0, 20.0 ]
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
									"patching_rect" : [ 109.0, 203.0, 241.0, 73.0 ]
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
									"setminmax" : [ 0.0, 127.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"id" : "obj-11",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 109.0, 9.0, 241.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.lscale 0 127 -1. 1. @buf_name toto @outputmode 2",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ],
									"fontsize" : 11.595187,
									"id" : "obj-12",
									"numinlets" : 6,
									"patching_rect" : [ 109.0, 156.0, 311.0, 20.0 ]
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
									"patching_rect" : [ 11.0, 46.0, 86.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p clip",
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
					"id" : "obj-2",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 360.0, 249.0, 94.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 316.0, 258.0, 586.0, 299.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 316.0, 258.0, 586.0, 299.0 ],
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
									"maxclass" : "comment",
									"text" : "-1",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 305.0, 234.0, 19.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 308.0, 163.0, 26.0, 20.0 ]
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
									"id" : "obj-3",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 321.0, 170.0, 241.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.lscale 0 127 1. 0. 5",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ],
									"fontsize" : 11.595187,
									"id" : "obj-4",
									"numinlets" : 6,
									"patching_rect" : [ 321.0, 143.0, 141.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-1",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 231.0, 19.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 165.0, 26.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "255",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 47.0, 29.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 31.0, 113.0, 18.0, 20.0 ]
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
									"patching_rect" : [ 304.0, 75.0, 210.0, 20.0 ]
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
									"id" : "obj-10",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 50.0, 170.0, 241.0, 73.0 ]
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
									"setminmax" : [ 0.0, 200.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"id" : "obj-11",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numinlets" : 1,
									"size" : 2048,
									"patching_rect" : [ 50.0, 50.0, 241.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.lscale 0 127 1. 0. 5 @clip 1",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "list", "" ],
									"fontsize" : 11.595187,
									"id" : "obj-12",
									"numinlets" : 6,
									"patching_rect" : [ 50.0, 143.0, 183.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the clip attribute allows you to constrain the list within the output range.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 74.0, 20.0, 372.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 129.0, 330.5, 129.0 ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
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
					"id" : "obj-3",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 294.0, 18.0, 20.0 ]
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
					"id" : "obj-4",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 225.0, 29.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "127",
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
					"patching_rect" : [ 28.0, 113.0, 29.0, 20.0 ]
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
					"id" : "obj-6",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 179.0, 18.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg1 is input low value (default 0.)\rarg2 is input high value(default 127.)\rarg3 is output low value (default 0.)\rarg4 is output high value (default 1.)\rarg5 is exponent value (default 1. = linear)\r",
					"linecount" : 5,
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
					"id" : "obj-7",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 313.0, 123.0, 229.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y[n] = pow(((x[n] - LowInVal)/ (HighInVal-LowInVal)), expFactor)) * (HighOutVal-LowOutVal) + LowOutVal",
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
					"id" : "obj-8",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 79.0, 548.0, 20.0 ]
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
					"id" : "obj-9",
					"background" : 0,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"size" : 2048,
					"patching_rect" : [ 53.0, 231.0, 241.0, 73.0 ]
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
					"setminmax" : [ 0.0, 127.0 ],
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
					"id" : "obj-10",
					"background" : 0,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"size" : 2048,
					"patching_rect" : [ 53.0, 119.0, 241.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.lscale 0 127 0. 100.",
					"presentation" : 0,
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "list", "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 6,
					"patching_rect" : [ 53.0, 204.0, 143.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
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
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
