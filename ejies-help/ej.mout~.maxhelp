{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 28.0, 75.0, 679.0, 302.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 28.0, 75.0, 679.0, 302.0 ],
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
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac[1]",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 0,
					"offgradcolor1" : [ 0.87, 0.87, 0.87, 1.0 ],
					"bgcolor" : [ 0.51, 0.51, 0.51, 1.0 ],
					"ongradcolor1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"hidden" : 0,
					"ongradcolor2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"offgradcolor2" : [ 0.7, 0.7, 0.73, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"local" : 1,
					"id" : "obj-12",
					"background" : 0,
					"numinlets" : 2,
					"patching_rect" : [ 333.0, 213.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
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
					"id" : "obj-52",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 292.0, 219.0, 38.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"presentation" : 0,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"grad2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"angle" : 0.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"shadow" : 0,
					"hidden" : 0,
					"mode" : 0,
					"border" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-53",
					"background" : 0,
					"numinlets" : 1,
					"grad1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"patching_rect" : [ 285.0, 208.0, 100.0, 55.0 ],
					"rounded" : 8
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
					"patching_rect" : [ 307.677704, 237.935364, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.mout~",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 286.0, 287.0, 166.0, 30.0 ],
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
					"text" : "panpot on multiple output.",
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
					"id" : "obj-9",
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
					"presentation_rect" : [ 281.0, 283.0, 632.0, 58.0 ],
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
					"presentation_rect" : [ 105.0, 105.0, 147.471741, 24.0 ],
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
					"presentation_rect" : [ 761.455444, 588.968689, 155.0, 18.0 ],
					"toggle" : 0,
					"dragtrack" : 0,
					"id" : "obj-48",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 504.0, 270.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
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
					"patching_rect" : [ 547.0, 294.0, 417.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"presentation" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 761.0, 588.0, 158.0, 20.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"underline" : 0,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"id" : "obj-51",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 505.0, 271.0, 158.0, 20.0 ]
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
					"id" : "obj-10",
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
					"id" : "obj-11",
					"background" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-1",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 254.5, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-2",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 239.766663, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-3",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 225.03334, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-4",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 210.300003, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-5",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 195.566666, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-6",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 180.833328, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-7",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 166.100006, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-8",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 151.366669, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg: number of outputs (2 to 16)",
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
					"id" : "obj-13",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 74.553719, 201.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "extra outlets are automatically disabled",
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
					"id" : "obj-14",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 419.983459, 105.0, 211.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 1 5000",
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
					"id" : "obj-15",
					"background" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 251.644623, 125.0, 59.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1",
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-16",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 135.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"presentation" : 0,
					"numoutlets" : 2,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "signal", "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-17",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 251.644623, 146.0, 35.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-18",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 136.633331, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-19",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 121.899994, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-20",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 107.166672, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-21",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 92.433334, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-22",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 77.699997, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-23",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 62.966667, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-24",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 48.23333, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-25",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 33.5, 198.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ej.mout~ 16",
					"presentation" : 0,
					"numoutlets" : 16,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-26",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 31.0, 172.0, 240.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-27",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 444.257019, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-28",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 427.057007, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-29",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 409.857025, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"ntepidleds" : 3,
					"interval" : 100,
					"overloadcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation" : 0,
					"numoutlets" : 1,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"bordercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"nhotleds" : 3,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"numleds" : 12,
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"nwarmleds" : 3,
					"hotcolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"dbperled" : 3,
					"id" : "obj-30",
					"background" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 392.657013, 153.0, 13.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ej.mout~ 4",
					"presentation" : 0,
					"numoutlets" : 16,
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"hidden" : 0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-31",
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 390.157013, 127.0, 277.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 3 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 4 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 5 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 6 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 8 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 9 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 10 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 11 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 12 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 13 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 14 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 15 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ]
	}

}
