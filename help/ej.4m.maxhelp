{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 51.0, 642.0, 328.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 51.0, 642.0, 328.0 ],
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
					"patching_rect" : [ 463.0, 32.0, 147.471741, 24.0 ],
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
					"presentation_rect" : [ 506.455444, 333.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"dragtrack" : 0,
					"id" : "obj-48",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 478.0, 293.0, 159.0, 21.0 ]
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
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 9.160198,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-50",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 520.0, 359.0, 370.0, 26.0 ]
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
					"presentation_rect" : [ 506.0, 333.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"id" : "obj-51",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 479.0, 294.0, 158.0, 20.0 ]
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
					"patching_rect" : [ 205.677689, 289.935394, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.4m.js",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 31.0, 32.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-49",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 13.719761, 14.719761, 166.0, 30.0 ]
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
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 596.0, 31.0, 143.0, 18.0 ]
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
					"id" : "obj-3",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 596.0, 50.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg2<optional>: verbose (default 0)",
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
					"patching_rect" : [ 411.0, 203.0, 191.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "alias for reset",
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
					"patching_rect" : [ 53.0, 235.0, 92.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getverbose",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 531.0, 136.0, 74.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output list (default off)",
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
					"patching_rect" : [ 410.0, 128.0, 122.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r get-msg",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"background" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 60.0, 104.0, 66.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get informations",
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
					"patching_rect" : [ 521.0, 93.0, 104.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s get-msg",
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
					"id" : "obj-12",
					"background" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 531.0, 159.0, 67.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation" : 0,
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-13",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 390.0, 127.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "verbose $1",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 390.0, 153.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
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
					"id" : "obj-15",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 641.0, 189.0, 82.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 5",
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
					"id" : "obj-16",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 236.0, 101.0, 95.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-17",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 94.0, 127.0, 36.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-18",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 82.0, 157.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getwindow",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-19",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 531.0, 113.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output the min, median, mean, maximum on a int/float stream",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-23",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 13.719761, 46.0, 365.0, 20.0 ]
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
					"id" : "obj-26",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 337.565735, 265.311798, 53.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mean",
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
					"id" : "obj-27",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 267.285492, 265.311798, 54.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "median",
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
					"id" : "obj-28",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 200.761826, 265.311798, 123.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg<optional>: int analysis window",
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
					"id" : "obj-29",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 411.0, 185.0, 187.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-31",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 397.0, 246.0, 209.0, 18.0 ]
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
					"id" : "obj-32",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 134.0, 127.0, 50.0, 20.0 ]
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
					"id" : "obj-33",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 326.0, 246.0, 50.0, 20.0 ]
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
					"id" : "obj-34",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 262.0, 246.0, 50.0, 20.0 ]
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
					"id" : "obj-35",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 198.0, 246.0, 50.0, 20.0 ]
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
					"id" : "obj-36",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 134.0, 246.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend window",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-37",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 236.0, 149.0, 101.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"format" : 0,
					"presentation" : 0,
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"minimum" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : "<none>",
					"cantchange" : 0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"triscale" : 1.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 236.0, 127.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"format" : 0,
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
					"outlettype" : [ "int", "bang" ],
					"maximum" : "<none>",
					"cantchange" : 0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"triscale" : 1.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 185.0, 127.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ej.4m.js 5",
					"presentation" : 0,
					"numoutlets" : 5,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "", "", "", "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-40",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 134.0, 197.0, 275.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "analysis window",
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
					"id" : "obj-41",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 286.0, 127.0, 94.0, 20.0 ]
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
					"id" : "obj-42",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 265.311798, 118.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or send again",
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
					"id" : "obj-43",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 168.0, 125.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output now !",
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
					"id" : "obj-44",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 152.0, 126.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"presentation" : 0,
					"numoutlets" : 1,
					"gradient" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-45",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 10.0, 235.0, 40.0, 18.0 ]
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
					"presentation_rect" : [ 26.0, 28.0, 632.0, 58.0 ],
					"id" : "obj-83",
					"background" : 0,
					"numinlets" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"patching_rect" : [ 8.719761, 10.719761, 382.01355, 57.248684 ],
					"rounded" : 8
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 4 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 399.5, 238.0, 596.5, 238.0 ]
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
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 2 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 3 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
