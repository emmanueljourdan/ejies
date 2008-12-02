{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 342.0, 113.0, 126.0, 314.0 ],
		"bgcolor" : [ 0.7, 0.7, 0.7, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 342.0, 113.0, 126.0, 314.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"patching_rect" : [ 605.0, 326.0, 20.0, 20.0 ],
					"id" : "obj-111",
					"presentation" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 502.0, 365.0, 100.0, 20.0 ],
					"id" : "obj-114",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 352.0, 77.0, 889.0, 684.0 ],
						"bglocked" : 0,
						"defrect" : [ 352.0, 77.0, 889.0, 684.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script send out%i hidden 1",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 473.0, 615.0, 173.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "création des outlets et câbles signal",
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"patching_rect" : [ 472.0, 447.0, 185.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script disconnect play 0 out%i 0",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.0, 369.0, 198.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script hidden connect play 0 out%i 0",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 473.0, 579.0, 220.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-thispatcher",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 310.0, 87.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 24",
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 384.0, 311.0, 55.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 384.0, 342.0, 52.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 2",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 257.0, 129.0, 32.5, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 656.305786, 205.330597, 25.0, 25.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script newdefault out%i 115 500 outlet @varname out%i",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 576.0, 536.0, 317.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 24",
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 453.0, 464.0, 46.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script delete out%i",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 384.0, 369.0, 133.0, 19.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 354.0, 244.0, 32.5, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 24",
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 354.0, 265.0, 46.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "maximum 1",
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 401.0, 265.0, 67.0, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1==0 then 1 else out2 $i1",
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 122.0, 98.0, 152.0, 19.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 384.0, 288.0, 32.5, 19.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script connect play %i end 0",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 257.0, 157.0, 180.0, 19.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 121.0, 208.0, 32.5, 19.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 121.0, 364.0, 32.5, 19.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script hidden connect play %i out%i 0",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 386.0, 226.0, 19.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf script send out%i comment File Ch %i Output",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 312.0, 265.0, 19.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi #1",
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 91.0, 125.0, 46.0, 19.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int #1",
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 122.0, 72.0, 37.0, 19.0 ],
									"id" : "obj-67",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "décalage du au sfplay~ je ne sais pas pourquoi…",
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"patching_rect" : [ 289.0, 129.0, 251.0, 19.0 ],
									"id" : "obj-72",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 96.0, 12.0, 25.0, 25.0 ],
									"id" : "obj-111",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 127.0, 12.0, 25.0, 25.0 ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 259.0, 636.0, 25.0, 25.0 ],
									"id" : "obj-113",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-thispatcher",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 468.0, 122.0, 87.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.7 0.7 0.7 1.",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 11.137627,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 615.564331, 296.677551, 115.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p open",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 162.0, 36.0, 17.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 479.0, 349.0, 255.0, 378.0 ],
						"bglocked" : 0,
						"defrect" : [ 479.0, 349.0, 255.0, 378.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 0 -1 1 1.",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 164.0, 84.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.0, 59.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "v #0-sfplay 0",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 238.0, 102.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 308.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"comment" : "to sfplay~"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 58.0, 59.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s 1",
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "int" ],
									"patching_rect" : [ 58.0, 211.0, 40.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend preload 32767",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 136.0, 114.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog sound",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 58.0, 90.0, 83.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "preload 32767 0 -1 1 1.",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 270.0, 120.0, 15.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 164.0, 113.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 249.0, 181.0, 31.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "v #0-sfplay 0",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 152.0, 102.0, 17.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 331.0, 421.0, 32.0, 15.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "end",
					"text" : "t 0 b",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 313.0, 394.0, 30.0, 17.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 32767",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 396.0, 285.0, 50.0, 17.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"autopopulate" : 0,
					"fontface" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 12.0,
					"labelclick" : 0,
					"rounded" : 8,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"numoutlets" : 3,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"items" : [ "  Pause", ",", "Resume" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"showdotfiles" : 0,
					"outlettype" : [ "int", "", "" ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"prefix_mode" : 0,
					"prefix" : "",
					"pattrmode" : 0,
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"align" : 0,
					"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 26.0, 171.0, 66.0, 20.0 ],
					"arrowframe" : 1,
					"id" : "obj-25",
					"menumode" : 2,
					"fontname" : "Arial",
					"depth" : 0,
					"arrow" : 1,
					"presentation" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"background" : 0,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"numinlets" : 1,
					"types" : [  ],
					"arrowlink" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i2 then $i1",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 53.0, 74.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "& 512",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 410.0, 28.0, 38.0, 17.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 195.0, 218.0, 16.0, 15.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"ignoreclick" : 1,
					"numoutlets" : 1,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 85.0, 173.0, 18.0, 18.0 ],
					"id" : "obj-29",
					"presentation" : 0,
					"offcolor" : [ 0.0, 0.0, 0.466667, 1.0 ],
					"background" : 0,
					"oncolor" : [ 0.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"blinktime" : 250
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pause",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 188.0, 246.0, 33.0, 15.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "resume",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 137.0, 247.0, 41.0, 15.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 137.0, 212.0, 40.0, 17.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"patching_rect" : [ 137.0, 183.0, 15.0, 15.0 ],
					"id" : "obj-33",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 396.0, 232.0, 40.0, 17.0 ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "togedge",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 412.0, 97.0, 42.0, 17.0 ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 426.0, 286.0, 40.0, 17.0 ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i i",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 396.0, 255.0, 40.0, 17.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 538.0, 141.0, 46.0, 17.0 ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b 0",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 350.0, 134.0, 40.0, 17.0 ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wclose",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 503.0, 101.0, 39.0, 15.0 ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "front",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 468.0, 100.0, 31.0, 15.0 ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "master",
					"text" : "Sound File Play",
					"fontface" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 13.0, 8.460526, 114.0, 20.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "200",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 538.0, 187.0, 26.0, 15.0 ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.772549 ],
					"ignoreclick" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"format" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"outlettype" : [ "int", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"minimum" : 10,
					"triscale" : 0.9,
					"patching_rect" : [ 37.600475, 269.50119, 58.0, 19.0 ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"presentation" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : "<none>",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Smoothing",
					"fontface" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"patching_rect" : [ 27.839714, 248.588516, 76.0, 20.0 ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 521.0, 187.0, 16.0, 15.0 ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 1.",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 193.0, 400.0, 40.0, 17.0 ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack f i",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 193.0, 376.0, 41.0, 17.0 ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.772549 ],
					"ignoreclick" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"minimum" : "<none>",
					"triscale" : 0.9,
					"patching_rect" : [ 38.13636, 230.33493, 56.193787, 19.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"presentation" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : "<none>",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speed",
					"fontface" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"patching_rect" : [ 41.513157, 209.174637, 47.0, 20.0 ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"patching_rect" : [ 396.0, 203.0, 15.0, 15.0 ],
					"id" : "obj-57",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"varname" : "titi",
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"ignoreclick" : 1,
					"numoutlets" : 1,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 85.0, 82.667465, 18.0, 18.0 ],
					"id" : "obj-58",
					"presentation" : 0,
					"offcolor" : [ 0.6, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"oncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"blinktime" : 250
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.772549 ],
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"patching_rect" : [ 85.0, 128.0, 20.0, 20.0 ],
					"id" : "obj-59",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loop",
					"fontface" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"patching_rect" : [ 37.0, 127.600479, 44.0, 20.0 ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 61 47 42 79 87 77 45",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 8,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 380.0, 73.0, 125.0, 17.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 4,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 380.0, 9.0, 40.0, 17.0 ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pict 1",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 441.0, 327.0, 35.0, 15.0 ],
					"id" : "obj-63",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pict 0, set 0",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 426.0, 359.0, 65.0, 15.0 ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 411.0, 386.0, 55.0, 17.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 3",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 538.0, 164.0, 72.0, 17.0 ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 502.0, 556.0, 59.0, 17.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 342, 113, 468, 427, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"fontface" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 117.0, 383.0, 41.0, 15.0 ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"presentation" : 0,
					"gradient" : 0,
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "sfplay~ #1",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 121.0, 432.0, 98.0, 17.0 ],
					"id" : "obj-70",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2,
					"save" : [ "#N", "sfplay~", "$1", 1, 40320, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Open file",
					"fontface" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"ignoreclick" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"patching_rect" : [ 30.0, 37.200954, 62.0, 20.0 ],
					"id" : "obj-71",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"ignoreclick" : 0,
					"numoutlets" : 4,
					"stay" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hilite" : 0,
					"handoff" : "",
					"handoffdelay" : 250,
					"patching_rect" : [ 16.0, 167.0, 94.0, 29.0 ],
					"id" : "obj-73",
					"toggle" : 0,
					"presentation" : 0,
					"background" : 0,
					"dragtrack" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"ignoreclick" : 0,
					"numoutlets" : 4,
					"stay" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hilite" : 0,
					"handoff" : "",
					"handoffdelay" : 250,
					"patching_rect" : [ 16.0, 33.0, 94.0, 29.0 ],
					"id" : "obj-74",
					"toggle" : 0,
					"presentation" : 0,
					"background" : 0,
					"dragtrack" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"ignoreclick" : 0,
					"numoutlets" : 4,
					"stay" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hilite" : 0,
					"handoff" : "",
					"handoffdelay" : 250,
					"patching_rect" : [ 16.0, 123.0, 94.0, 29.0 ],
					"id" : "obj-75",
					"toggle" : 0,
					"presentation" : 0,
					"background" : 0,
					"dragtrack" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"autopopulate" : 0,
					"fontface" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 12.0,
					"labelclick" : 0,
					"rounded" : 8,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"numoutlets" : 3,
					"underline" : 0,
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"hidden" : 0,
					"items" : [ "Play", ",", "Stop" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"showdotfiles" : 0,
					"outlettype" : [ "int", "", "" ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"prefix_mode" : 0,
					"prefix" : "",
					"pattrmode" : 0,
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"align" : 0,
					"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 35.0, 80.667465, 57.0, 23.0 ],
					"arrowframe" : 1,
					"id" : "obj-76",
					"menumode" : 2,
					"fontname" : "Chicago",
					"depth" : 0,
					"arrow" : 1,
					"presentation" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"background" : 0,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"numinlets" : 1,
					"types" : [  ],
					"arrowlink" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 8,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"mode" : 0,
					"border" : 2,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"bordercolor" : [ 0.266667, 0.384314, 0.576471, 1.0 ],
					"patching_rect" : [ 16.0, 167.0, 94.0, 29.0 ],
					"id" : "obj-77",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 8,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"mode" : 0,
					"border" : 2,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"bordercolor" : [ 0.266667, 0.384314, 0.576471, 1.0 ],
					"patching_rect" : [ 16.0, 123.0, 94.0, 29.0 ],
					"id" : "obj-78",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 8,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"mode" : 0,
					"border" : 2,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"bordercolor" : [ 0.266667, 0.384314, 0.576471, 1.0 ],
					"patching_rect" : [ 16.0, 34.0, 94.0, 29.0 ],
					"id" : "obj-79",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 8,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"mode" : 0,
					"border" : 2,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"bordercolor" : [ 0.266667, 0.384314, 0.576471, 1.0 ],
					"patching_rect" : [ 16.0, 208.0, 94.0, 87.0 ],
					"id" : "obj-80",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"ignoreclick" : 0,
					"numoutlets" : 4,
					"stay" : 1,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hilite" : 0,
					"handoff" : "",
					"handoffdelay" : 250,
					"patching_rect" : [ 16.0, 77.0, 94.0, 29.0 ],
					"id" : "obj-81",
					"toggle" : 0,
					"presentation" : 0,
					"background" : 0,
					"dragtrack" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 8,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"mode" : 0,
					"border" : 2,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"bordercolor" : [ 0.266667, 0.384314, 0.576471, 1.0 ],
					"patching_rect" : [ 16.0, 78.0, 94.0, 29.0 ],
					"id" : "obj-82",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"ignoreclick" : 1,
					"rounded" : 10,
					"numoutlets" : 0,
					"angle" : 0.0,
					"shadow" : 0,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"mode" : 1,
					"border" : 0,
					"grad2" : [ 0.14902, 0.282353, 0.494118, 0.627451 ],
					"bordercolor" : [ 0.996078, 0.996078, 0.952941, 1.0 ],
					"patching_rect" : [ 7.725009, 6.647645, 110.528923, 295.949554 ],
					"id" : "obj-1",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"ignoreclick" : 1,
					"rounded" : 0.0,
					"numoutlets" : 2,
					"folderslash" : 1,
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"border" : 0.0,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 127.75, 313.157898 ],
					"id" : "obj-83",
					"presentation" : 0,
					"background" : 1,
					"numinlets" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 24.0, 15.0, 15.0 ],
					"id" : "obj-84",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 0,
					"comment" : "signal/msg to sfplay~"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p route-things",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 54.0, 73.0, 17.0 ],
					"id" : "obj-85",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 115.0, 433.0, 451.0, 279.0 ],
						"bglocked" : 0,
						"defrect" : [ 115.0, 433.0, 451.0, 279.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wclose",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 106.0, 41.0, 15.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 248.0, 105.0, 33.0, 15.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-thispatcher",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 131.0, 87.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 205.0, 131.0, 21.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route open wopen wclose",
									"fontsize" : 9.0,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 205.0, 75.0, 139.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "v #0-sfplay 0",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.0, 155.0, 102.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 28.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 334.0, 219.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "don't know if the file have been found...",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 133.0, 186.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p window",
					"fontface" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 460.0, 163.0, 52.0, 17.0 ],
					"id" : "obj-86",
					"fontname" : "Arial",
					"presentation" : 0,
					"background" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 110.0, 233.0, 715.0, 417.0 ],
						"bglocked" : 0,
						"defrect" : [ 110.0, 233.0, 715.0, 417.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-thispatcher",
									"fontsize" : 20.028343,
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 212.75, 151.0, 30.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow zoom nofloat, window title, window exec",
									"fontsize" : 18.845108,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 159.411758, 502.0, 26.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "togedge",
									"fontsize" : 20.028343,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 28.0, 42.411766, 81.0, 30.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow nozoom float, window size 342 113 468 427, savewindow 1, window exec, write",
									"linecount" : 2,
									"fontsize" : 16.882771,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 83.058823, 83.705879, 606.0, 43.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 28.0, 8.0, 25.808823, 25.808823 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out1",
					"ignoreclick" : 0,
					"numoutlets" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 116.0, 500.0, 25.0, 25.0 ],
					"id" : "obj-15",
					"presentation" : 0,
					"background" : 0,
					"numinlets" : 1,
					"comment" : "File"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-114", 2 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 421.5, 122.0, 94.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 444.5, 122.0, 94.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 126.5, 422.0, 130.5, 422.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 6 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 9.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 2 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 2 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 419.5, 49.0, 444.5, 49.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 5 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 3 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 4 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 547.5, 185.0, 527.0, 185.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 547.5, 185.0, 547.5, 185.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-114", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
