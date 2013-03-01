{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 63.0, 130.0, 557.0, 300.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 63.0, 130.0, 557.0, 300.0 ],
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
					"text" : "ej.dx2x",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 106.0, 107.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-49",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 10.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "create a list from intervals",
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
					"id" : "obj-24",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 14.719757, 42.0, 365.0, 20.0 ]
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
					"presentation_rect" : [ 101.0, 103.0, 632.0, 58.0 ],
					"id" : "obj-83",
					"background" : 0,
					"numinlets" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ],
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
					"presentation_rect" : [ 60.0, 60.0, 147.471741, 24.0 ],
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
					"patching_rect" : [ 394.0, 21.0, 147.471741, 24.0 ],
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
					"presentation_rect" : [ 581.455444, 408.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"dragtrack" : 0,
					"id" : "obj-48",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 397.0, 274.0, 159.0, 21.0 ]
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
					"fontsize" : 9.160198,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-50",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 439.0, 340.0, 370.0, 26.0 ]
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
					"presentation_rect" : [ 581.0, 408.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"id" : "obj-51",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 398.0, 275.0, 158.0, 20.0 ]
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
					"patching_rect" : [ 236.677704, 275.935394, 210.0, 20.0 ]
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
					"id" : "obj-31",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 527.0, 20.0, 143.0, 18.0 ]
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
					"patching_rect" : [ 527.0, 39.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "origin",
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
					"id" : "obj-1",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 324.0, 143.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Diabolus... be carefull...",
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
					"patching_rect" : [ 281.0, 117.0, 154.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 3 3 3 3",
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
					"id" : "obj-3",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 206.0, 117.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument: origin",
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
					"patching_rect" : [ 293.0, 174.0, 154.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 60",
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
					"id" : "obj-5",
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 104.0, 103.0, 20.0 ]
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
					"id" : "obj-6",
					"background" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"triangle" : 1,
					"patching_rect" : [ 274.0, 143.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2 2 1 2 2 2 1",
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
					"id" : "obj-7",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 193.0, 92.0, 87.0, 18.0 ]
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
					"id" : "obj-8",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 92.0, 20.0, 20.0 ]
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
					"id" : "obj-9",
					"background" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 276.0, 203.0, 85.0, 20.0 ]
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
					"id" : "obj-10",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 193.0, 232.0, 200.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
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
					"id" : "obj-11",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 193.0, 203.0, 77.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ej.dx2x 60.",
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
					"id" : "obj-23",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 193.0, 174.0, 100.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
