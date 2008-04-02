{
	"patcher" : 	{
		"rect" : [ 25.0, 55.0, 766.0, 362.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 55.0, 766.0, 362.0 ],
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
					"text" : "ej.l2buffer",
					"patching_rect" : [ 19.719757, 12.719761, 166.0, 30.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"fontname" : "Arial",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 18.0,
					"presentation_rect" : [ 151.0, 152.0, 166.0, 30.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fill a buffer~ with a list",
					"patching_rect" : [ 19.719757, 44.0, 365.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
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
					"patching_rect" : [ 13.719757, 8.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-83",
					"shadow" : -1,
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 146.0, 148.0, 632.0, 58.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 399.0, 23.0, 147.527267, 23.99996 ],
					"fontlink" : 1,
					"numoutlets" : 3,
					"id" : "obj-55",
					"fontname" : "Arial",
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"fontface" : 3,
					"fontsize" : 12.0,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 105.0, 105.0, 147.527267, 23.99996 ],
					"text" : "open ejies overview",
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"patching_rect" : [ 582.0, 323.0, 159.0, 21.0 ],
					"hilite" : 0,
					"presentation" : 1,
					"numoutlets" : 4,
					"id" : "obj-48",
					"handoff" : "",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"presentation_rect" : [ 626.455444, 453.968689, 155.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"patching_rect" : [ 405.0, 383.0, 370.0, 26.0 ],
					"numoutlets" : 1,
					"id" : "obj-50",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"fontsize" : 7.9,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"patching_rect" : [ 583.0, 324.0, 158.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 626.0, 453.0, 158.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"patching_rect" : [ 367.677704, 323.935394, 210.0, 20.0 ],
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
					"patching_rect" : [ 532.0, 22.0, 143.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
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
					"patching_rect" : [ 532.0, 41.0, 57.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set titi 2",
					"patching_rect" : [ 52.0, 269.0, 50.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "args: [buffer name] [channel]",
					"patching_rect" : [ 124.0, 322.0, 156.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set titi",
					"patching_rect" : [ 44.0, 244.0, 41.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"patching_rect" : [ 525.0, 246.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set titi 2, buftime 50",
					"patching_rect" : [ 526.0, 185.0, 109.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"patching_rect" : [ 553.0, 207.0, 200.0, 74.0 ],
					"numoutlets" : 6,
					"id" : "obj-6",
					"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
					"chanoffset" : 2,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
					"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
					"textcolor" : [  ],
					"buffername" : "titi",
					"setmode" : 1,
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"numinlets" : 5,
					"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"patching_rect" : [ 553.0, 83.0, 56.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set titi, buftime 50",
					"patching_rect" : [ 553.0, 114.0, 99.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"patching_rect" : [ 553.0, 134.0, 200.0, 74.0 ],
					"numoutlets" : 6,
					"id" : "obj-9",
					"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
					"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
					"textcolor" : [  ],
					"buffername" : "titi",
					"setmode" : 1,
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"numinlets" : 5,
					"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"patching_rect" : [ 525.0, 170.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right",
					"patching_rect" : [ 284.0, 247.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set toto",
					"patching_rect" : [ 36.0, 219.0, 47.0, 18.0 ],
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
					"maxclass" : "message",
					"text" : "set toto 2, buftime 50",
					"patching_rect" : [ 285.0, 186.0, 117.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"patching_rect" : [ 312.0, 208.0, 200.0, 74.0 ],
					"numoutlets" : 6,
					"id" : "obj-14",
					"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
					"chanoffset" : 2,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
					"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
					"textcolor" : [  ],
					"buffername" : "toto",
					"setmode" : 1,
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"numinlets" : 5,
					"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 105.0, 294.0, 100.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-15",
					"fontname" : "Arial",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : [ "(Channel)", ",", "Left", ",", "Right" ],
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"patching_rect" : [ 312.0, 84.0, 56.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set toto, buftime 50",
					"patching_rect" : [ 312.0, 115.0, 107.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"patching_rect" : [ 312.0, 135.0, 200.0, 74.0 ],
					"numoutlets" : 6,
					"id" : "obj-18",
					"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
					"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
					"textcolor" : [  ],
					"buffername" : "toto",
					"setmode" : 1,
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"numinlets" : 5,
					"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"size" : 4095,
					"patching_rect" : [ 14.0, 112.0, 200.0, 74.0 ],
					"contdata" : 1,
					"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"signed" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ toto 93 2",
					"patching_rect" : [ 417.0, 110.0, 95.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-20",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p multichannel",
					"patching_rect" : [ 312.0, 302.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"rect" : [ 435.0, 44.0, 441.0, 487.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 435.0, 44.0, 441.0, 487.0 ],
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
									"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
									"patching_rect" : [ 165.0, 455.0, 210.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 10.0,
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set tutu 4, buftime 50",
									"patching_rect" : [ 222.0, 351.0, 117.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set tutu 3, buftime 50",
									"patching_rect" : [ 222.0, 245.0, 117.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set tutu 2, buftime 50",
									"patching_rect" : [ 222.0, 137.0, 117.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"patching_rect" : [ 222.0, 371.0, 210.0, 73.0 ],
									"numoutlets" : 6,
									"id" : "obj-5",
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"chanoffset" : 4,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"textcolor" : [  ],
									"buffername" : "tutu",
									"setmode" : 1,
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
									"numinlets" : 5,
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"size" : 4095,
									"patching_rect" : [ 20.0, 371.0, 200.0, 74.0 ],
									"contdata" : 1,
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-6",
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.l2buffer tutu 4",
									"patching_rect" : [ 20.0, 455.0, 115.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"patching_rect" : [ 222.0, 264.0, 210.0, 73.0 ],
									"numoutlets" : 6,
									"id" : "obj-8",
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"chanoffset" : 3,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"textcolor" : [  ],
									"buffername" : "tutu",
									"setmode" : 1,
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
									"numinlets" : 5,
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"size" : 4095,
									"patching_rect" : [ 20.0, 264.0, 200.0, 74.0 ],
									"contdata" : 1,
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.l2buffer tutu 3",
									"patching_rect" : [ 20.0, 348.0, 115.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"patching_rect" : [ 222.0, 157.0, 210.0, 73.0 ],
									"numoutlets" : 6,
									"id" : "obj-11",
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"chanoffset" : 2,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"textcolor" : [  ],
									"buffername" : "tutu",
									"setmode" : 1,
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
									"numinlets" : 5,
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"size" : 4095,
									"patching_rect" : [ 20.0, 157.0, 200.0, 74.0 ],
									"contdata" : 1,
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-12",
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.l2buffer tutu 2",
									"patching_rect" : [ 20.0, 241.0, 115.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"patching_rect" : [ 222.0, 7.0, 56.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set tutu 1, buftime 50",
									"patching_rect" : [ 222.0, 30.0, 117.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"patching_rect" : [ 222.0, 50.0, 210.0, 73.0 ],
									"numoutlets" : 6,
									"id" : "obj-16",
									"waveformcolor" : [ 0.129412, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"tickmarkcolor" : [ 0.392157, 0.392157, 0.392157, 1.0 ],
									"bgcolor" : [ 0.235294, 0.698039, 0.678431, 1.0 ],
									"textcolor" : [  ],
									"buffername" : "tutu",
									"setmode" : 1,
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
									"numinlets" : 5,
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"size" : 4095,
									"patching_rect" : [ 20.0, 50.0, 200.0, 74.0 ],
									"contdata" : 1,
									"slidercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-17",
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"signed" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.l2buffer tutu 1",
									"patching_rect" : [ 20.0, 134.0, 115.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ tutu 93 4",
									"patching_rect" : [ 339.0, 27.0, 93.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-19",
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left",
					"patching_rect" : [ 284.0, 171.0, 100.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-33",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.l2buffer toto",
					"patching_rect" : [ 14.0, 322.0, 110.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set [buffer name] [channel]: change the destination",
					"patching_rect" : [ 28.0, 199.0, 269.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ titi 93 2",
					"patching_rect" : [ 665.0, 110.0, 88.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-36",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 562.5, 107.0, 535.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 321.5, 108.0, 294.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-34", 0 ],
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
