{
	"patcher" : 	{
		"rect" : [ 49.0, 54.0, 550.0, 281.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 49.0, 54.0, 550.0, 281.0 ],
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
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"hidden" : 1,
					"numinlets" : 4,
					"patching_rect" : [ 324.0, 217.0, 210.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ej.lock.js",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 226.0, 227.0, 166.0, 30.0 ],
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 13.719761, 166.0, 30.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation" : 1,
					"fontface" : 3,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set\/get patcher lock state",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 16.719757, 45.0, 365.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 221.0, 223.0, 632.0, 58.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 10.719757, 9.719761, 382.01355, 57.248684 ],
					"shadow" : -1,
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 45.0, 45.0, 147.527267, 23.99996 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 396.0, 24.0, 147.527267, 23.99996 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"text" : "open ejies overview",
					"fontname" : "Arial",
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontface" : 3,
					"id" : "obj-55",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation_rect" : [ 701.455444, 528.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 384.0, 252.0, 159.0, 21.0 ],
					"numoutlets" : 4,
					"presentation" : 1,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 431.0, 279.0, 417.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 701.0, 528.0, 158.0, 20.0 ],
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 253.0, 158.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.pat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 529.0, 23.0, 143.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 529.0, 42.0, 57.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "poll 100",
					"numinlets" : 2,
					"patching_rect" : [ 181.287918, 148.0, 51.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "poll",
					"numinlets" : 2,
					"patching_rect" : [ 145.039352, 148.0, 32.5, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument sets polling interval (default 0)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 193.418427, 182.137238, 294.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nopoll",
					"numinlets" : 2,
					"patching_rect" : [ 235.634369, 148.0, 41.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 32",
					"numinlets" : 2,
					"patching_rect" : [ 72.0, 119.0, 43.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"numinlets" : 0,
					"patching_rect" : [ 72.0, 94.0, 48.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "int", "int", "int" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 213.0, 207.0, 82.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lock 1",
					"numinlets" : 2,
					"patching_rect" : [ 113.0, 223.797516, 69.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getlock",
					"numinlets" : 2,
					"patching_rect" : [ 281.601715, 148.0, 47.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 148.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 148.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ej.lock.js",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 182.0, 80.0, 20.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 212.0, 172.5, 212.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 222.5, 229.830139, 122.5, 229.830139 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
