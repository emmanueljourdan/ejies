{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 53.0, 585.0, 319.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 53.0, 585.0, 319.0 ],
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
		"imprint" : 1,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p extra",
					"presentation" : 0,
					"id" : "obj-1",
					"numinlets" : 0,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"patching_rect" : [ 481.0, 226.0, 73.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 43.0, 321.0, 284.0, 240.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 43.0, 321.0, 284.0, 240.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- never finished",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"patching_rect" : [ 177.782059, 188.15152, 97.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 156.0, 185.666672, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "autoclear makes clear for you...",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"patching_rect" : [ 51.153847, 133.484848, 172.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display the memory occupation",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"patching_rect" : [ 83.0, 55.0, 170.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 32.0, 131.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-6",
									"numinlets" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 32.0, 185.666672, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.urn 5 @autoclear 1",
									"id" : "obj-7",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 32.0, 158.333328, 143.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.urn 5000",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 32.0, 83.0, 90.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sizeInfo",
									"id" : "obj-9",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 32.0, 54.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
									"id" : "obj-10",
									"numinlets" : 4,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 11.595187,
									"patching_rect" : [ 43.0, 231.0, 210.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p why?",
					"presentation" : 0,
					"id" : "obj-2",
					"numinlets" : 0,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"patching_rect" : [ 481.0, 248.0, 73.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 43.0, 321.0, 238.0, 264.0 ],
						"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 43.0, 321.0, 238.0, 264.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 142.0, 101.0, 36.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 47.0, 51.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 103.0, 82.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-4",
									"numinlets" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 142.0, 211.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "int", "int" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 142.0, 183.0, 46.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-6",
									"numinlets" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 47.0, 211.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"id" : "obj-7",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "int", "int" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 47.0, 183.0, 46.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 5000",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 47.0, 82.0, 54.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "urn 5000",
									"id" : "obj-9",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 142.0, 132.0, 56.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ej.urn 5000",
									"id" : "obj-10",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "" ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 47.0, 132.0, 90.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
									"id" : "obj-11",
									"numinlets" : 4,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 11.595187,
									"patching_rect" : [ 60.0, 237.0, 210.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "urn is limited to 4095 items",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"patching_rect" : [ 50.0, 17.0, 146.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "seed 0",
					"presentation" : 0,
					"id" : "obj-3",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 450.0, 137.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "seed 4526",
					"presentation" : 0,
					"id" : "obj-4",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 370.0, 138.0, 63.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang out right outlet indicates all numbers have been generated",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-5",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 193.0, 253.0, 118.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-6",
					"numinlets" : 1,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 170.0, 254.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "int in right inlet sets new maximum",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-7",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 243.0, 105.0, 108.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "16",
					"presentation" : 0,
					"id" : "obj-8",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 264.0, 134.0, 26.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"presentation" : 0,
					"id" : "obj-9",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 125.0, 140.0, 37.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• click to generate a number with a bang message",
					"linecount" : 4,
					"presentation" : 0,
					"id" : "obj-10",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 12.0, 115.0, 97.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"id" : "obj-11",
					"numinlets" : 1,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"hidden" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 91.0, 135.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation" : 0,
					"id" : "obj-12",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"format" : 0,
					"outputonclick" : 0,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"triangle" : 1,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"hidden" : 0,
					"minimum" : "<none>",
					"outlettype" : [ "int", "bang" ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : "<none>",
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"fontface" : 0,
					"cantchange" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"patching_rect" : [ 112.0, 254.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set random number generator seed",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-13",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 358.0, 108.0, 109.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset the \"all numbers have been generated\" flag",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-14",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 126.0, 95.0, 111.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "seed 0 sets seed to time-based value",
					"linecount" : 4,
					"presentation" : 0,
					"id" : "obj-15",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 490.0, 127.0, 68.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "takes two optional arguments: first sets maximum (default 1), second sets random number seed (default 0)",
					"linecount" : 3,
					"presentation" : 0,
					"id" : "obj-16",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 192.0, 202.0, 212.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "int out left outlet is random value",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-17",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 20.0, 246.0, 95.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.urn 10",
					"presentation" : 0,
					"id" : "obj-29",
					"numinlets" : 2,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "int", "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"patching_rect" : [ 112.0, 216.0, 77.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"presentation" : 0,
					"id" : "obj-47",
					"numinlets" : 4,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"patching_rect" : [ 189.677704, 328.935364, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.urn",
					"presentation" : 1,
					"id" : "obj-49",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 301.0, 302.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 16.719757, 14.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Generate random numbers without duplicates",
					"presentation" : 0,
					"id" : "obj-40",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 16.719757, 46.0, 260.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-83",
					"numinlets" : 1,
					"rounded" : 8,
					"ignoreclick" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"shadow" : -1,
					"numoutlets" : 0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 0,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"presentation_rect" : [ 296.0, 298.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 10.719757, 10.719761, 382.01355, 57.248684 ],
					"angle" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation" : 0,
					"id" : "obj-55",
					"numinlets" : 1,
					"rounded" : 14.0,
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"underline" : 0,
					"ignoreclick" : 0,
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"truncate" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"hidden" : 0,
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"align" : 1,
					"outlettype" : [ "int", "", "int" ],
					"mode" : 0,
					"tosymbol" : 1,
					"spacing_x" : 4.0,
					"border" : 2,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 120.0, 120.0, 147.471741, 24.0 ],
					"outputmode" : 1,
					"fontface" : 3,
					"text" : "open ejies overview",
					"fontsize" : 13.914225,
					"spacing_y" : 4.0,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"texton" : "Button On",
					"background" : 0,
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"patching_rect" : [ 396.0, 25.0, 147.471741, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"handoffdelay" : 250,
					"presentation" : 1,
					"id" : "obj-48",
					"numinlets" : 1,
					"ignoreclick" : 0,
					"dragtrack" : 0,
					"numoutlets" : 4,
					"hidden" : 0,
					"stay" : 0,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"presentation_rect" : [ 776.455444, 603.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"hilite" : 0,
					"background" : 0,
					"patching_rect" : [ 408.0, 287.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"presentation" : 0,
					"id" : "obj-50",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 451.0, 311.0, 417.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"presentation" : 1,
					"id" : "obj-51",
					"numinlets" : 1,
					"underline" : 0,
					"ignoreclick" : 1,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 776.0, 603.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"background" : 0,
					"patching_rect" : [ 409.0, 288.0, 158.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"presentation" : 0,
					"id" : "obj-41",
					"numinlets" : 2,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"gradient" : 0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"patching_rect" : [ 529.0, 24.0, 143.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"presentation" : 0,
					"id" : "obj-42",
					"numinlets" : 1,
					"ignoreclick" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 273.5, 189.0, 179.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 100.5, 168.0, 121.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 379.5, 168.0, 121.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 134.5, 168.0, 121.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 459.5, 168.0, 121.5, 168.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
