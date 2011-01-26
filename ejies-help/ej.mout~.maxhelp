{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 28.0, 75.0, 684.0, 543.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 28.0, 75.0, 684.0, 543.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-43",
					"outlettype" : [ "signal", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 12.0,
					"ignoreclick" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 369.75, 36.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-33",
					"outlettype" : [ "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 74.0, 302.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 142.0, 363.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "offset 0 turn off the automatic offset (where the spatialization is centered between the first and second speaker)",
					"linecount" : 3,
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-34",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 103.983459, 329.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 175.983459, 311.0, 211.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-35",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 128.257019, 377.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 196.257019, 429.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-36",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 111.057007, 377.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 179.057007, 429.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-37",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 93.857025, 377.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 161.857025, 429.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-38",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 76.657013, 377.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 144.657013, 429.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ej.mout~ 4 @offset 0",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-39",
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 16,
					"patching_rect" : [ 142.157013, 398.0, 277.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-32",
					"outlettype" : [ "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 332.0, 97.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 78.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac[1]",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-12",
					"local" : 1,
					"offgradcolor1" : [ 0.87, 0.87, 0.87, 1.0 ],
					"bgcolor" : [ 0.51, 0.51, 0.51, 1.0 ],
					"ongradcolor1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"ongradcolor2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"offgradcolor2" : [ 0.7, 0.7, 0.73, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"ignoreclick" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 577.0, 318.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-52",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 536.0, 324.0, 38.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-53",
					"rounded" : 8,
					"mode" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"background" : 0,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"angle" : 0.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"shadow" : 0,
					"patching_rect" : [ 529.0, 313.0, 100.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"hidden" : 1,
					"presentation" : 0,
					"id" : "obj-47",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 4,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 307.677704, 237.935364, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.mout~",
					"hidden" : 0,
					"presentation" : 1,
					"id" : "obj-49",
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 286.0, 287.0, 166.0, 30.0 ],
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 20.871338,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.719757, 14.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panpot on multiple output.",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-9",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.719757, 46.0, 221.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hidden" : 0,
					"presentation" : 1,
					"id" : "obj-83",
					"rounded" : 8,
					"mode" : 0,
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"angle" : 0.0,
					"presentation_rect" : [ 281.0, 283.0, 632.0, 58.0 ],
					"numinlets" : 1,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"shadow" : -1,
					"patching_rect" : [ 10.719757, 10.719761, 382.01355, 57.248684 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-55",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 14.0,
					"mode" : 0,
					"spacing_y" : 4.0,
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"truncate" : 1,
					"border" : 2,
					"fontname" : "Arial",
					"align" : 1,
					"fontlink" : 1,
					"text" : "open ejies overview",
					"blinktime" : 150,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"underline" : 0,
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"background" : 0,
					"active" : 1,
					"texton" : "Button On",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 105.0, 105.0, 147.471741, 24.0 ],
					"numinlets" : 1,
					"fontface" : 3,
					"outputmode" : 1,
					"fontsize" : 13.914225,
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"ignoreclick" : 0,
					"numoutlets" : 3,
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"patching_rect" : [ 396.0, 25.0, 147.471741, 24.0 ],
					"tosymbol" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hidden" : 0,
					"presentation" : 1,
					"id" : "obj-48",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"stay" : 0,
					"handoff" : "",
					"hilite" : 0,
					"toggle" : 0,
					"background" : 0,
					"hltcolor" : [ 0.475, 0.695, 1.0, 0.5 ],
					"presentation_rect" : [ 761.455444, 588.968689, 155.0, 18.0 ],
					"numinlets" : 1,
					"handoffdelay" : 250,
					"ignoreclick" : 0,
					"numoutlets" : 4,
					"dragtrack" : 0,
					"patching_rect" : [ 485.0, 468.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"hidden" : 1,
					"presentation" : 0,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"gradient" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 528.0, 492.0, 417.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"hidden" : 0,
					"presentation" : 1,
					"id" : "obj-51",
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 761.0, 588.0, 158.0, 20.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 469.0, 158.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"hidden" : 1,
					"presentation" : 0,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"gradient" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 529.0, 24.0, 148.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"presentation" : 0,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-1",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 254.5, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-2",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 239.766663, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-3",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 225.03334, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-4",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 210.300003, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-5",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 195.566666, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-6",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 180.833328, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-7",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 166.100006, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-8",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 151.366669, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg: number of outputs (2 to 16)",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-13",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.719757, 74.553719, 201.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "extra outlets are automatically disabled",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-14",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.983459, 105.0, 211.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 1 5000",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"gradient" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 251.644623, 125.0, 59.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-16",
					"outlettype" : [ "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 31.0, 135.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-17",
					"outlettype" : [ "signal", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 251.644623, 146.0, 35.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-18",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 136.633331, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-19",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 121.899994, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-20",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 107.166672, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-21",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 92.433334, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-22",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 77.699997, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-23",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 62.966667, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-24",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 48.23333, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-25",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 33.5, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ej.mout~ 16",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-26",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 16,
					"patching_rect" : [ 31.0, 172.0, 240.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-27",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 444.257019, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-28",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 427.057007, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-29",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 409.857025, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"hidden" : 0,
					"numleds" : 12,
					"presentation" : 0,
					"id" : "obj-30",
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"interval" : 100,
					"nwarmleds" : 3,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"dbperled" : 3,
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"background" : 0,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"ntepidleds" : 3,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"nhotleds" : 3,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 392.657013, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ej.mout~ 4",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-31",
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 11.595187,
					"ignoreclick" : 0,
					"numoutlets" : 16,
					"patching_rect" : [ 390.157013, 127.0, 277.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 20",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-45",
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"gradient" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontface" : 0,
					"fontsize" : 12.0,
					"ignoreclick" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 400.0, 346.875, 41.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hidden" : 0,
					"presentation" : 0,
					"id" : "obj-46",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numdecimalplaces" : 0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"fontname" : "Arial",
					"outputonclick" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 1.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontface" : 0,
					"triangle" : 1,
					"fontsize" : 12.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"minimum" : 0.0,
					"ignoreclick" : 0,
					"numoutlets" : 2,
					"cantchange" : 0,
					"maximum" : 1.0,
					"patching_rect" : [ 400.0, 324.0, 50.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 3 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 3 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 4 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 5 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 6 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 8 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 9 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 10 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 11 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 12 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 13 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 14 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 15 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 277.144623, 168.0, 327.0, 168.0, 327.0, 119.0, 261.144623, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
