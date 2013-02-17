{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 40.0, 55.0, 553.0, 301.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 55.0, 553.0, 301.0 ],
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
					"maxclass" : "newobj",
					"text" : "t 0 b",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 228.63829, 192.540421, 30.217022, 19.0 ],
					"id" : "obj-1",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 - ($i1 & 128)",
					"numinlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 527.45105, 56.004257, 109.0, 19.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 311.455322, 9.0, 71.625534, 19.0 ],
					"id" : "obj-3",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.859589, 255.212769, 16.787233, 16.787233 ],
					"id" : "obj-4",
					"comment" : "bang down"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.370209, 255.212769, 16.787233, 16.787233 ],
					"id" : "obj-5",
					"comment" : "bang up"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p verify",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 311.455322, 40.33617, 71.625534, 19.0 ],
					"id" : "obj-6",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 298.0, 221.0, 628.0, 486.0 ],
						"bglocked" : 0,
						"defrect" : [ 298.0, 221.0, 628.0, 486.0 ],
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
									"text" : "t i 0",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 164.649445, 302.728088, 30.215731, 19.0 ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p osDefault",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 285.537079, 297.132599, 67.146065, 19.0 ],
									"id" : "obj-2",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 359.0, 326.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 359.0, 326.0 ],
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
													"text" : "gate 2",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 69.098763, 185.205765, 176.925919, 20.0 ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 69.098763, 284.654327, 17.345678, 17.345678 ],
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 24.0, 53.378601, 222.024689, 20.0 ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.0, 21.0, 17.345678, 17.345678 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "2",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 133.028809, 150.514404, 31.222221, 20.0 ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 69.098763, 150.514404, 31.222221, 20.0 ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select macintosh windows",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 69.098763, 120.448563, 146.860077, 20.0 ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-system",
													"numinlets" : 0,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 69.098763, 91.539093, 79.790123, 20.0 ],
													"id" : "obj-8",
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 284.654327, 17.345678, 17.345678 ],
													"id" : "obj-9",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $i1 - ($i1 & 128)",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 11.6678,
													"patching_rect" : [ 227.024689, 218.740738, 117.0, 20.0 ],
													"id" : "obj-10"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 285.537079, 388.898865, 16.786516, 16.786516 ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l b",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 285.537079, 137.10112, 94.004494, 19.0 ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "kd&u: missing arguments",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.398961,
									"patching_rect" : [ 27.0, 335.182037, 134.29213, 16.0 ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route done",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 156.815735, 41.977528, 63.788765, 19.0 ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.815735, 14.0, 16.786516, 16.786516 ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route -1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 27.0, 106.885391, 277.537079, 19.0 ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg -1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 26.815735, 76.669662, 55.955055, 19.0 ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 164.649445, 257.96405, 139.887634, 19.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 323.039337, 219.914612, 34.692135, 19.0 ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 323.039337, 191.937073, 38.049438, 19.0 ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.624071,
									"patching_rect" : [ 323.039337, 163.959549, 38.049438, 19.0 ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax getsystem #0-system",
									"linecount" : 2,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.339439,
									"patching_rect" : [ 360.541565, 162.840454, 148.840454, 28.0 ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 333.683136, 388.898865, 16.786516, 16.786516 ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.770782, 14.0, 16.786516, 16.786516 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"• error\"",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"fontsize" : 10.624071,
									"patching_rect" : [ 27.0, 388.898865, 88.408989, 19.0 ],
									"id" : "obj-17"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "modifier keys",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.791547,
					"patching_rect" : [ 452.468079, 81.744682, 78.340424, 19.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p change",
					"numinlets" : 6,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 228.63829, 162.32341, 271.953186, 19.0 ],
					"id" : "obj-8",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 247.0, 322.0, 419.0, 271.0 ],
						"bglocked" : 0,
						"defrect" : [ 247.0, 322.0, 419.0, 271.0 ],
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
									"text" : "expr $i1+$i2+$i3+$i4+$i5",
									"numinlets" : 5,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.546685,
									"patching_rect" : [ 97.829529, 57.012196, 268.695953, 20.0 ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.546685,
									"patching_rect" : [ 53.818981, 142.731705, 24.321617, 20.0 ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 347.525482, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 285.101501, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 222.677505, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 160.25351, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.08963, 201.890244, 17.372583, 17.372583 ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.546685,
									"patching_rect" : [ 53.818981, 171.707321, 31.270651, 20.0 ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 53.818981, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 97.829529, 22.0, 17.372583, 17.372583 ],
									"id" : "obj-10",
									"comment" : "shift"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.546685,
									"patching_rect" : [ 53.818981, 117.378052, 63.592266, 20.0 ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontsize" : 11.546685,
									"patching_rect" : [ 97.829529, 87.195122, 46.326889, 20.0 ],
									"id" : "obj-12"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 4 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 63.318981, 199.475616, 42.237259, 199.475616, 42.237259, 113.756096, 63.318981, 113.756096 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "modifiers 100",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 5,
					"outlettype" : [ "int", "int", "int", "int", "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 280.119141, 122.034042, 218.234039, 19.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"triscale" : 0.9,
					"triangle" : 0,
					"numoutlets" : 2,
					"fontface" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.791547,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"cantchange" : 1,
					"patching_rect" : [ 413.297882, 79.506386, 39.170212, 19.0 ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"triscale" : 0.9,
					"triangle" : 0,
					"numoutlets" : 2,
					"fontface" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.791547,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"cantchange" : 1,
					"patching_rect" : [ 413.297882, 54.885105, 39.170212, 19.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 413.297882, 25.787233, 44.765957, 19.0 ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i2==$i3 || $i2-128 == $i3 then $i1",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 204.017029, 72.791489, 180.0, 19.0 ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i2==$i3 || $i2-128 == $i3 then $i1",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 16.0, 72.791489, 180.0, 19.0 ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "0",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 204.017029, 123.153191, 30.217022, 19.0 ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 16.0, 123.153191, 30.217022, 19.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 255.212769, 16.787233, 16.787233 ],
					"id" : "obj-17",
					"comment" : "1 is key down, 0 is key up"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 204.017029, 97.412766, 64.910637, 19.0 ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 16.0, 97.412766, 64.910637, 19.0 ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "keyup",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 204.017029, 19.07234, 44.765957, 19.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 10.791547,
					"patching_rect" : [ 16.0, 19.07234, 44.765957, 19.0 ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Key number",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.791547,
					"patching_rect" : [ 451.348938, 57.123405, 68.268082, 19.0 ],
					"id" : "obj-22"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 4 ],
					"destination" : [ "obj-8", 5 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-8", 4 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 418.893616, 44.812767 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 3 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [ 25.5, 147.774475, 238.13829, 147.774475 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [ 213.517029, 147.774475, 238.13829, 147.774475 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-14", 2 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 213.517029, 158.965958, 25.5, 158.965958 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
