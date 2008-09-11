{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 203.0, 107.0, 130.0, 269.0 ],
		"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 203.0, 107.0, 130.0, 269.0 ],
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
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr ($f1/0.6) + 128",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 180.0, -98.0, 109.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr ($f1/0.6) + 128",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 336.0, -99.0, 109.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 38 72 126",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"numinlets" : 4,
					"patching_rect" : [ 616.0, 500.0, 94.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-prepost",
					"fontsize" : 9.0,
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 281.0, 70.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-prepost",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"numinlets" : 0,
					"patching_rect" : [ 97.0, -103.0, 70.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-prepost",
					"fontsize" : 9.0,
					"id" : "obj-6",
					"numinlets" : 0,
					"patching_rect" : [ 19.0, -107.0, 70.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float wopen wclose",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 304.0, -131.0, 138.0, 17.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "front",
					"fontsize" : 9.0,
					"id" : "obj-8",
					"numinlets" : 2,
					"patching_rect" : [ 212.0, 16.0, 32.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wclose",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"numinlets" : 2,
					"patching_rect" : [ 244.0, 16.0, 41.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float wopen wclose",
					"fontsize" : 9.0,
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, -131.0, 138.0, 17.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 99.0, 203.0, 26.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "temp-20051165327[2]",
					"presentation_rect" : [ 0.0, 0.0, 32.0, 16.0 ],
					"border" : 0,
					"filename" : "ej.numbox.js",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 69.0, 203.0, 32.0, 16.0 ],
					"jsarguments" : [ 38, 72, 126, 38, 72, 126, 200, 200, 200, 200, 200, 200, 200, 200, 200, 0, 0, 1, 0, 0.0, 0.0, 0, 0, 0 ],
					"numoutlets" : 3,
					"ignoreclick" : 1,
					"outlettype" : [ "", "", "" ],
					"embedstate" : [ [ "redrawoff" ], [ "brgb", 38, 72, 126 ], [ "brgb2", 38, 72, 126 ], [ "brgb3", 200, 200, 200 ], [ "frgb", 200, 200, 200 ], [ "frgb2", 200, 200, 200 ], [ "roundmode", 0 ], [ "leading0", 0 ], [ "approximation", 1 ], [ "clip", 0 ], [ "minmax", 0.0, 0.0 ], [ "initvalue", 0 ], [ "change", 0 ], [ "mouseup", 0 ], [ "allowkeyboard", 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"fontsize" : 9.0,
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 433.0, 553.0, 49.0, 17.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 260.0, 304.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 260.0, 304.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 201.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 166.0, 131.0, 33.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 < -75 then out2 0 else $f1",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 101.0, 155.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1 -128)*0.6",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 76.0, 105.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 21.0, 33.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 != 2 then bang",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 667.0, 100.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl len",
					"fontsize" : 9.0,
					"id" : "obj-16",
					"numinlets" : 2,
					"patching_rect" : [ 241.0, 646.0, 33.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"fontsize" : 9.0,
					"id" : "obj-17",
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 624.0, 63.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.0,
					"id" : "obj-18",
					"numinlets" : 1,
					"patching_rect" : [ 433.0, 527.0, 50.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"numinlets" : 1,
					"patching_rect" : [ 349.0, 526.0, 50.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "temp-20051165327[1]",
					"presentation_rect" : [ 0.0, 0.0, 32.0, 16.0 ],
					"border" : 0,
					"filename" : "ej.numbox.js",
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 203.0, 32.0, 16.0 ],
					"jsarguments" : [ 38, 72, 126, 38, 72, 126, 200, 200, 200, 200, 200, 200, 200, 200, 200, 0, 0, 1, 0, 0.0, 0.0, 0, 0, 0 ],
					"numoutlets" : 3,
					"ignoreclick" : 1,
					"outlettype" : [ "", "", "" ],
					"embedstate" : [ [ "redrawoff" ], [ "brgb", 38, 72, 126 ], [ "brgb2", 38, 72, 126 ], [ "brgb3", 200, 200, 200 ], [ "frgb", 200, 200, 200 ], [ "frgb2", 200, 200, 200 ], [ "roundmode", 0 ], [ "leading0", 0 ], [ "approximation", 1 ], [ "clip", 0 ], [ "minmax", 0.0, 0.0 ], [ "initvalue", 0 ], [ "change", 0 ], [ "mouseup", 0 ], [ "allowkeyboard", 0 ], [ "redrawon" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"id" : "obj-21",
					"numinlets" : 1,
					"cantchange" : 1,
					"patching_rect" : [ 61.0, 252.0, 30.0, 17.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"border" : 0,
					"filename" : "jsui_texttoggle.js",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 227.0, 57.0, 17.0 ],
					"jsarguments" : [ "DSP Off", "DSP On", 220, 220, 240, 38, 72, 126 ],
					"numoutlets" : 2,
					"ignoreclick" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-loadbang",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 564.0, 73.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dspstate~",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 574.0, 212.0, 53.0, 17.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "int", "float", "int", "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 250",
					"fontsize" : 9.0,
					"id" : "obj-25",
					"numinlets" : 2,
					"patching_rect" : [ 574.0, 234.0, 55.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 91.0, 252.0, 26.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CPU",
					"frgb" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 252.0, 30.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus cpu",
					"fontsize" : 9.0,
					"id" : "obj-28",
					"numinlets" : 2,
					"patching_rect" : [ 574.0, 256.0, 64.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dspstate~",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 147.0, 199.0, 53.0, 17.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "int", "float", "int", "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-30",
					"numinlets" : 1,
					"patching_rect" : [ 223.0, 237.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 2",
					"fontsize" : 9.0,
					"id" : "obj-31",
					"numinlets" : 1,
					"patching_rect" : [ 122.0, 406.0, 27.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "2",
					"fontsize" : 9.0,
					"id" : "obj-32",
					"numinlets" : 2,
					"patching_rect" : [ 167.0, 522.0, 16.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "1",
					"fontsize" : 9.0,
					"id" : "obj-33",
					"numinlets" : 2,
					"patching_rect" : [ 139.0, 524.0, 16.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 2",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 685.0, 357.0, 85.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 2",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"numinlets" : 2,
					"patching_rect" : [ 655.0, 332.0, 40.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf script send inlet%i comment Audio Channel %i",
					"fontsize" : 9.0,
					"id" : "obj-36",
					"numinlets" : 2,
					"patching_rect" : [ 575.0, 447.0, 251.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int #2",
					"fontsize" : 9.0,
					"id" : "obj-37",
					"numinlets" : 2,
					"patching_rect" : [ 722.0, 384.0, 35.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int #1",
					"fontsize" : 9.0,
					"id" : "obj-38",
					"numinlets" : 2,
					"patching_rect" : [ 685.0, 384.0, 35.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print \"• error\"",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 714.0, 78.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stout~ one argument missing (see help file)",
					"fontsize" : 9.0,
					"id" : "obj-40",
					"numinlets" : 2,
					"patching_rect" : [ 241.0, 693.0, 203.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontsize" : 9.0,
					"id" : "obj-41",
					"numinlets" : 1,
					"patching_rect" : [ 139.0, 498.0, 20.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 2",
					"fontsize" : 9.0,
					"id" : "obj-42",
					"numinlets" : 2,
					"patching_rect" : [ 57.0, 351.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontsize" : 9.0,
					"id" : "obj-43",
					"numinlets" : 2,
					"patching_rect" : [ 49.0, 372.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "match 0 0",
					"fontsize" : 9.0,
					"id" : "obj-44",
					"numinlets" : 1,
					"patching_rect" : [ 139.0, 450.0, 53.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1 #2",
					"fontsize" : 9.0,
					"id" : "obj-45",
					"numinlets" : 2,
					"patching_rect" : [ 139.0, 430.0, 35.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ #1 #2",
					"fontsize" : 9.0,
					"id" : "obj-46",
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 396.0, 61.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wclose",
					"fontsize" : 9.0,
					"id" : "obj-47",
					"numinlets" : 2,
					"patching_rect" : [ 431.0, 149.0, 39.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-droite",
					"fontsize" : 9.0,
					"id" : "obj-48",
					"numinlets" : 0,
					"patching_rect" : [ 448.0, 180.0, 62.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-gauche",
					"fontsize" : 9.0,
					"id" : "obj-49",
					"numinlets" : 0,
					"patching_rect" : [ 378.0, 180.0, 65.0, 17.0 ],
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ctrl",
					"fontsize" : 9.0,
					"id" : "obj-50",
					"numinlets" : 3,
					"patching_rect" : [ 349.0, 492.0, 95.0, 17.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 414.0, 301.0, 649.0, 543.0 ],
						"bglocked" : 0,
						"defrect" : [ 414.0, 301.0, 649.0, 543.0 ],
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
									"maxclass" : "newobj",
									"text" : "t i i i i",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 339.0, 61.0, 53.0, 17.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 1",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numinlets" : 2,
									"patching_rect" : [ 307.0, 95.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "128",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 75.0, 26.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-loadbang",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 54.0, 73.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 2",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"patching_rect" : [ 470.0, 320.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 7",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"numinlets" : 2,
									"patching_rect" : [ 470.0, 293.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "togedge",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 470.0, 251.0, 42.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"numinlets" : 2,
									"patching_rect" : [ 470.0, 228.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "color 1",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"numinlets" : 2,
									"patching_rect" : [ 418.0, 319.0, 40.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "color $1",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"numinlets" : 2,
									"patching_rect" : [ 470.0, 354.0, 45.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-ctrlOn/Off",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 339.0, 36.0, 83.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p ctrlclic",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"patching_rect" : [ 321.0, 289.0, 49.0, 17.0 ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 460.0, 210.0, 392.0, 440.0 ],
										"bglocked" : 0,
										"defrect" : [ 460.0, 210.0, 392.0, 440.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 0",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"numinlets" : 1,
													"patching_rect" : [ 138.0, 114.0, 31.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 0",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"patching_rect" : [ 55.0, 114.0, 31.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 0 157",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"numinlets" : 3,
													"patching_rect" : [ 96.0, 335.0, 54.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"numinlets" : 2,
													"patching_rect" : [ 96.0, 288.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"numinlets" : 2,
													"patching_rect" : [ 96.0, 221.0, 35.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"numinlets" : 2,
													"patching_rect" : [ 13.0, 221.0, 35.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 0 157",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"numinlets" : 3,
													"patching_rect" : [ 197.0, 335.0, 54.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"numinlets" : 2,
													"patching_rect" : [ 197.0, 288.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"numinlets" : 2,
													"patching_rect" : [ 214.0, 247.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-droite",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"numinlets" : 0,
													"patching_rect" : [ 301.0, 153.0, 62.0, 17.0 ],
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-gauche",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"numinlets" : 0,
													"patching_rect" : [ 231.0, 153.0, 65.0, 17.0 ],
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-12",
													"numinlets" : 0,
													"patching_rect" : [ 214.0, 17.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"numinlets" : 2,
													"patching_rect" : [ 231.0, 196.0, 80.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"numinlets" : 1,
													"patching_rect" : [ 38.0, 41.0, 93.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"numinlets" : 1,
													"patching_rect" : [ 121.0, 62.0, 27.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"numinlets" : 1,
													"patching_rect" : [ 38.0, 62.0, 27.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"numinlets" : 1,
													"patching_rect" : [ 138.0, 83.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"numinlets" : 1,
													"patching_rect" : [ 55.0, 83.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-19",
													"numinlets" : 1,
													"patching_rect" : [ 13.0, 371.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-20",
													"numinlets" : 1,
													"patching_rect" : [ 197.0, 371.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-21",
													"numinlets" : 0,
													"patching_rect" : [ 38.0, 17.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 103.0, 40.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"patching_rect" : [ 321.0, 260.0, 45.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"numinlets" : 1,
									"patching_rect" : [ 356.0, 208.0, 28.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"numinlets" : 2,
									"patching_rect" : [ 356.0, 235.0, 28.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"numinlets" : 2,
									"patching_rect" : [ 284.0, 434.0, 35.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"fontsize" : 9.0,
									"id" : "obj-18",
									"numinlets" : 2,
									"patching_rect" : [ 189.0, 418.0, 35.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $1",
									"fontsize" : 9.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"patching_rect" : [ 240.0, 273.0, 35.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"fontsize" : 9.0,
									"id" : "obj-20",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 317.0, 41.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontsize" : 9.0,
									"id" : "obj-21",
									"numinlets" : 2,
									"patching_rect" : [ 205.0, 293.0, 45.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p average",
									"fontsize" : 9.0,
									"id" : "obj-22",
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 148.0, 52.0, 17.0 ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 741.0, 276.0, 270.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 741.0, 276.0, 270.0, 305.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mean",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"numinlets" : 1,
													"patching_rect" : [ 37.0, 67.0, 31.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"patching_rect" : [ 148.0, 88.0, 38.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-average",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 141.0, 71.0, 17.0 ],
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-droite",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"numinlets" : 1,
													"patching_rect" : [ 176.0, 141.0, 62.0, 17.0 ],
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-gauche",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"numinlets" : 1,
													"patching_rect" : [ 148.0, 171.0, 65.0, 17.0 ],
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-6",
													"numinlets" : 1,
													"patching_rect" : [ 37.0, 238.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-7",
													"numinlets" : 0,
													"patching_rect" : [ 37.0, 13.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 9.0,
									"id" : "obj-23",
									"numinlets" : 1,
									"patching_rect" : [ 85.0, 104.0, 27.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"fontsize" : 9.0,
									"id" : "obj-24",
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 176.0, 35.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"fontsize" : 9.0,
									"id" : "obj-25",
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 126.0, 28.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-26",
									"numinlets" : 1,
									"patching_rect" : [ 66.0, 471.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-27",
									"numinlets" : 1,
									"patching_rect" : [ 162.0, 471.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-28",
									"numinlets" : 1,
									"patching_rect" : [ 284.0, 471.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-29",
									"numinlets" : 0,
									"patching_rect" : [ 282.0, 31.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-30",
									"numinlets" : 0,
									"patching_rect" : [ 165.0, 31.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-31",
									"numinlets" : 0,
									"patching_rect" : [ 67.0, 31.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p click",
					"fontsize" : 9.0,
					"id" : "obj-51",
					"numinlets" : 0,
					"patching_rect" : [ 450.0, 494.0, 35.0, 17.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 467.0, 66.0, 183.0, 320.0 ],
						"bglocked" : 0,
						"defrect" : [ 467.0, 66.0, 183.0, 320.0 ],
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
									"maxclass" : "newobj",
									"text" : "t 1 b",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 115.0, 30.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 63.0, 40.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-ctrlOn/Off",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 76.0, 234.0, 83.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 0",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 49.0, 115.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"patching_rect" : [ 49.0, 151.0, 31.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-loadbang",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 34.0, 18.0, 73.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 90.0, 40.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mousestate",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 38.0, 66.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 176.0, 66.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 43.5, 111.0, 23.5, 111.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"linecount" : 2,
					"fontsize" : 9.0,
					"id" : "obj-52",
					"numinlets" : 2,
					"patching_rect" : [ 374.0, 139.0, 28.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2 1",
					"fontsize" : 9.0,
					"id" : "obj-53",
					"numinlets" : 3,
					"patching_rect" : [ 97.0, -42.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2 1",
					"fontsize" : 9.0,
					"id" : "obj-54",
					"numinlets" : 3,
					"patching_rect" : [ 19.0, -42.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-55",
					"numinlets" : 1,
					"patching_rect" : [ 332.0, 215.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int",
					"fontsize" : 9.0,
					"id" : "obj-56",
					"numinlets" : 2,
					"patching_rect" : [ 370.0, 238.0, 27.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int",
					"fontsize" : 9.0,
					"id" : "obj-57",
					"numinlets" : 2,
					"patching_rect" : [ 332.0, 237.0, 27.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "minimum",
					"fontsize" : 9.0,
					"id" : "obj-58",
					"numinlets" : 2,
					"patching_rect" : [ 332.0, 260.0, 48.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0 20",
					"fontsize" : 9.0,
					"id" : "obj-59",
					"numinlets" : 3,
					"patching_rect" : [ 332.0, 301.0, 50.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1, 128 1000",
					"fontsize" : 9.0,
					"id" : "obj-60",
					"numinlets" : 2,
					"patching_rect" : [ 332.0, 281.0, 74.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "master",
					"text" : "Master Audio",
					"frgb" : [ 0.988235, 0.956863, 0.956863, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-61",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 6.0, 97.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Courier",
					"textcolor" : [ 0.988235, 0.956863, 0.956863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 0 0",
					"fontsize" : 9.0,
					"id" : "obj-62",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 282.0, 35.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "front",
					"fontsize" : 9.0,
					"id" : "obj-63",
					"numinlets" : 2,
					"patching_rect" : [ 277.0, 205.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "togedge",
					"fontsize" : 9.0,
					"id" : "obj-64",
					"numinlets" : 1,
					"patching_rect" : [ 262.0, 275.0, 42.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "togedge",
					"fontsize" : 9.0,
					"id" : "obj-65",
					"numinlets" : 1,
					"patching_rect" : [ 214.0, 211.0, 42.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p keys",
					"fontsize" : 9.0,
					"id" : "obj-66",
					"numinlets" : 0,
					"patching_rect" : [ 338.0, 108.0, 87.0, 17.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 7,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 445.0, 185.0, 567.0, 543.0 ],
						"bglocked" : 0,
						"defrect" : [ 445.0, 185.0, 567.0, 543.0 ],
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
									"maxclass" : "newobj",
									"text" : "switch 2 2",
									"fontsize" : 9.0,
									"id" : "obj-41",
									"numinlets" : 3,
									"patching_rect" : [ 155.0, 172.0, 51.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-42",
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 293.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 424.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "109",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 2,
									"patching_rect" : [ 171.0, 364.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"numinlets" : 2,
									"patching_rect" : [ 234.0, 350.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "m",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"patching_rect" : [ 318.0, 396.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 27",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"numinlets" : 2,
									"patching_rect" : [ 375.0, 302.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-loadbang",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numinlets" : 0,
									"patching_rect" : [ 360.0, 37.0, 74.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax getsystem #0-OS",
									"linecount" : 2,
									"fontsize" : 9.0,
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 360.0, 64.0, 141.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"patching_rect" : [ 198.0, 280.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 2000",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"patching_rect" : [ 137.0, 233.0, 49.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 216.0, 254.0, 27.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"numinlets" : 2,
									"patching_rect" : [ 187.0, 233.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sur windows il faut presser sur le modifiers ctrl puis sur la touche...",
									"linecount" : 2,
									"fontsize" : 9.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 369.0, 101.0, 148.0, 27.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windows",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 107.0, 100.0, 17.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 32 13 15 9 23 48 49",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 419.0, 121.0, 17.0 ],
									"numoutlets" : 8,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"patching_rect" : [ 107.0, 370.0, 43.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "interval 100",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"patching_rect" : [ 131.0, 122.0, 65.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"numinlets" : 2,
									"patching_rect" : [ 187.0, 306.0, 56.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"patching_rect" : [ 187.0, 196.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"numinlets" : 1,
									"patching_rect" : [ 131.0, 140.0, 66.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 464.0, 42.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fromsymbol",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 441.0, 63.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 2 b",
									"fontsize" : 9.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"patching_rect" : [ 89.0, 94.0, 52.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 b",
									"fontsize" : 9.0,
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 38.0, 90.0, 32.5, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 2 2",
									"fontsize" : 9.0,
									"id" : "obj-20",
									"numinlets" : 3,
									"patching_rect" : [ 143.0, 345.0, 51.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"fontsize" : 9.0,
									"id" : "obj-21",
									"numinlets" : 1,
									"patching_rect" : [ 38.0, 61.0, 112.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-OS",
									"fontsize" : 9.0,
									"id" : "obj-22",
									"numinlets" : 0,
									"patching_rect" : [ 38.0, 31.0, 64.0, 17.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-23",
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "close stout~"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-24",
									"numinlets" : 1,
									"patching_rect" : [ 188.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "open dsp"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-25",
									"numinlets" : 1,
									"patching_rect" : [ 258.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "to 1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-26",
									"numinlets" : 1,
									"patching_rect" : [ 242.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "to zero"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-27",
									"numinlets" : 1,
									"patching_rect" : [ 161.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "open"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-28",
									"numinlets" : 1,
									"patching_rect" : [ 134.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "edit"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-29",
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 512.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : "start-stop"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "& 4096",
									"fontsize" : 9.0,
									"id" : "obj-30",
									"numinlets" : 2,
									"patching_rect" : [ 317.0, 260.0, 43.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 9.0,
									"id" : "obj-31",
									"numinlets" : 0,
									"patching_rect" : [ 253.0, 230.0, 75.0, 17.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i2 then $i1",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"patching_rect" : [ 281.0, 300.0, 64.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel \" \" m o i w",
									"fontsize" : 9.0,
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 419.0, 145.0, 17.0 ],
									"numoutlets" : 6,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "itoa",
									"fontsize" : 9.0,
									"id" : "obj-34",
									"numinlets" : 3,
									"patching_rect" : [ 232.0, 397.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mac",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"numinlets" : 1,
									"patching_rect" : [ 276.0, 176.0, 100.0, 17.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 140.5, 392.0, 241.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-24", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 5 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 6 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 1 ],
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
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-41", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 4 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-14", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"linecount" : 2,
					"fontsize" : 9.0,
					"id" : "obj-67",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 300.0, 45.0, 27.0 ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window flags nofloat grow zoom, window exec",
					"linecount" : 2,
					"fontsize" : 9.0,
					"id" : "obj-68",
					"numinlets" : 2,
					"patching_rect" : [ 262.0, 320.0, 185.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 9.0,
					"id" : "obj-69",
					"numinlets" : 1,
					"patching_rect" : [ 124.0, 384.0, 59.0, 17.0 ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 203, 107, 333, 376, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window flags float nozoom nogrow, window size 203 107 333 376, savewindow 1, window exec, write",
					"linecount" : 2,
					"fontsize" : 9.0,
					"id" : "obj-70",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 350.0, 245.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "inlet2",
					"id" : "obj-71",
					"numinlets" : 0,
					"patching_rect" : [ 304.0, -156.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"comment" : "Audio"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "inlet1",
					"id" : "obj-72",
					"numinlets" : 0,
					"patching_rect" : [ 148.0, -156.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"comment" : "Audio"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"varname" : "central",
					"interp" : 200.0,
					"bgcolor" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-73",
					"numinlets" : 2,
					"patching_rect" : [ 59.0, 27.0, 11.0, 172.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ],
					"numoutlets" : 2,
					"orientation" : 2,
					"knobcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"relative" : 1,
					"outlettype" : [ "signal", "int" ],
					"inc" : 1.07152
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-74",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 27.0, 13.0, 172.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-75",
					"numinlets" : 1,
					"patching_rect" : [ 97.0, 27.0, 13.0, 172.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-76",
					"numinlets" : 2,
					"patching_rect" : [ 76.0, 27.0, 21.0, 172.0 ],
					"numoutlets" : 2,
					"orientation" : 2,
					"knobcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"relative" : 1,
					"outlettype" : [ "signal", "int" ],
					"inc" : 1.07152
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-77",
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 27.0, 21.0, 172.0 ],
					"numoutlets" : 2,
					"orientation" : 2,
					"knobcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"relative" : 1,
					"outlettype" : [ "signal", "int" ],
					"inc" : 1.07152
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "brgb 38 72 126",
					"fontsize" : 9.0,
					"id" : "obj-78",
					"numinlets" : 2,
					"patching_rect" : [ 124.0, 327.0, 79.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"id" : "obj-79",
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 225.0, 61.0, 21.0 ],
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"handoff" : "",
					"id" : "obj-80",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 227.0, 57.0, 17.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"id" : "obj-81",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 61.0, 108.0, 11.0 ],
					"background" : 1,
					"numoutlets" : 0,
					"embed" : 1,
					"data" : [ 155, "", "IBkSG0fBZn....PCIgDQRA...vF...vBHX....flWh1K....DLmPIQEBHf.B7g.YHB...HURDEDUXU3XTQup9+LLJXHCfoAZGvn.RCLZD1PLvnQXCw.iFgMDCvBxbt11ZcfxcLJ.O.s7pZ3rYbzVINzBLZQhCw.iFgMDCLZD1PLvnQXCw...y+tAgiW8rGA.....IUjSD4pPfIH" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"fontsize" : 9.0,
					"id" : "obj-82",
					"numinlets" : 1,
					"patching_rect" : [ 349.0, 553.0, 49.0, 17.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 260.0, 304.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 260.0, 304.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 201.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 166.0, 131.0, 33.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1 < -75 then out2 0 else $f1",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 101.0, 155.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1 -128)*0.6",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 76.0, 105.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 21.0, 33.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
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
									"destination" : [ "obj-2", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"fontsize" : 9.0,
					"id" : "obj-83",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 259.0, 27.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"fontsize" : 9.0,
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 95.0, 228.0, 100.0, 17.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"ignoreclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"menumode" : 2,
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"items" : [ "pre", ",", "post" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.14902, 0.282353, 0.494118, 1.0 ],
					"id" : "obj-84",
					"numinlets" : 1,
					"patching_rect" : [ 93.0, 227.0, 24.0, 18.0 ],
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-85",
					"numinlets" : 1,
					"patching_rect" : [ 95.0, 228.0, 20.0, 17.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"textcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"items" : [ "pre", ",", "post" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 4 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-54", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 4 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-53", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 6 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 3 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-56", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 1 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 5 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 4 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-50", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 579.0, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 685.5, 353.0, 584.5, 353.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
