{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 16.0, 44.0, 825.0, 460.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 16.0, 44.0, 825.0, 460.0 ],
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
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"id" : "obj-102",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 324.677704, 418.935364, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ejies Aqua sliders",
					"presentation_linecount" : 2,
					"presentation" : 1,
					"id" : "obj-103",
					"numinlets" : 1,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 301.0, 302.0, 166.0, 54.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"patching_rect" : [ 16.719757, 14.719761, 188.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "it does nothing... just pass the input to the output",
					"id" : "obj-104",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 16.719757, 46.0, 260.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-105",
					"numinlets" : 1,
					"shadow" : -1,
					"numoutlets" : 0,
					"presentation_rect" : [ 296.0, 298.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"patching_rect" : [ 10.719757, 10.719761, 382.01355, 57.248684 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-106",
					"numinlets" : 1,
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"presentation_rect" : [ 120.0, 120.0, 147.471741, 24.0 ],
					"fontface" : 3,
					"text" : "open ejies overview",
					"fontsize" : 13.914225,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"patching_rect" : [ 396.0, 25.0, 147.471741, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 1,
					"id" : "obj-107",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"presentation_rect" : [ 776.455444, 603.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"patching_rect" : [ 646.0, 422.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:emmanuel.jourdan@ircam.fr?subject=ejies&body=Hi",
					"linecount" : 2,
					"id" : "obj-108",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 689.0, 446.0, 417.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, Ircam",
					"presentation" : 1,
					"id" : "obj-109",
					"numinlets" : 1,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 776.0, 603.0, 158.0, 20.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 647.0, 423.0, 158.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.pat",
					"id" : "obj-110",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 529.0, 24.0, 143.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-111",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-4",
					"numinlets" : 1,
					"labelclick" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "Blue", ",", "Graphite" ],
					"fontsize" : 11.595187,
					"types" : [  ],
					"patching_rect" : [ 143.0, 105.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-5",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 777.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-6",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 767.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-7",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 757.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-8",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 747.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-9",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 737.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-10",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 727.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-11",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 717.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-12",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny-aqua.pct",
					"patching_rect" : [ 707.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-13",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 698.0, 153.0, 97.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-14",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 654.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-15",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 641.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-16",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 628.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-17",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 615.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-18",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 602.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-19",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 589.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-20",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 576.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-21",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small-aqua.pct",
					"patching_rect" : [ 563.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-22",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big-aqua.pct",
					"patching_rect" : [ 501.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-23",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big-aqua.pct",
					"patching_rect" : [ 484.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-24",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big-aqua.pct",
					"patching_rect" : [ 467.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-25",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big-aqua.pct",
					"patching_rect" : [ 450.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-26",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 554.0, 153.0, 122.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-27",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 441.0, 152.0, 85.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-28",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big-aqua.pct",
					"patching_rect" : [ 439.0, 375.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-29",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big-aqua.pct",
					"patching_rect" : [ 439.0, 359.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-30",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big-aqua.pct",
					"patching_rect" : [ 439.0, 343.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-31",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big-aqua.pct",
					"patching_rect" : [ 439.0, 327.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-32",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 386.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-33",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 374.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-34",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 362.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-35",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 350.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-36",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 338.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-37",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 326.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-38",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small-aqua.pct",
					"patching_rect" : [ 567.0, 314.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-39",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 387.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-40",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 377.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-41",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 367.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-42",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 357.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-43",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 347.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-44",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 337.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-45",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 327.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-46",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny-aqua.pct",
					"patching_rect" : [ 702.0, 317.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-47",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 694.0, 306.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-48",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 558.0, 306.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-49",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"patching_rect" : [ 431.0, 305.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-50",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big.pct",
					"patching_rect" : [ 29.0, 375.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-51",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big.pct",
					"patching_rect" : [ 29.0, 359.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-52",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big.pct",
					"patching_rect" : [ 29.0, 343.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-53",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-big.pct",
					"patching_rect" : [ 29.0, 327.0, 96.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-54",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 386.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-55",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 374.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-56",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 362.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-57",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 350.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-58",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 338.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-59",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 326.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-60",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-small.pct",
					"patching_rect" : [ 157.0, 314.0, 96.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-61",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 387.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-62",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 377.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-63",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 367.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-64",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 357.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-65",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 347.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-66",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 337.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-67",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 327.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-68",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-h-tiny.pct",
					"patching_rect" : [ 292.0, 317.0, 96.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-69",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 362.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-70",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 352.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-71",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 342.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-72",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 332.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-73",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 322.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-74",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 312.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-75",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 302.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-76",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-tiny.pct",
					"patching_rect" : [ 292.0, 163.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-77",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 283.0, 153.0, 97.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-78",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 239.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-79",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 226.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-80",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 213.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-81",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 200.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-82",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 29.0, 84.218903, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "active $1",
					"id" : "obj-83",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 29.0, 108.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-84",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 187.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-85",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 174.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-86",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 161.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-87",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-small.pct",
					"patching_rect" : [ 148.0, 163.0, 13.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-88",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big.pct",
					"patching_rect" : [ 86.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-89",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big.pct",
					"patching_rect" : [ 69.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-90",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big.pct",
					"patching_rect" : [ 52.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"id" : "obj-91",
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.pct",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 0,
					"clickedimage" : 0,
					"bkgndpict" : "ej.bg-v-big.pct",
					"patching_rect" : [ 35.0, 163.0, 17.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-92",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 139.0, 153.0, 122.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-93",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 284.0, 305.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-94",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 148.0, 305.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-95",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 21.0, 305.0, 111.0, 101.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-96",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 26.0, 152.0, 85.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-97",
					"numinlets" : 1,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 148.0, 125.0, 193.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 58.0, 577.0, 397.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 58.0, 577.0, 397.0 ],
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
									"text" : "sprintf knobpicture ej.k-%s-h-small.pct",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.519143,
									"patching_rect" : [ 247.0, 226.575912, 205.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-tiny.pct",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.285645,
									"patching_rect" : [ 310.0, 257.529724, 192.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 52.0, 20.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-big.pct",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.504039,
									"patching_rect" : [ 97.0, 133.497238, 193.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-small.pct",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.50039,
									"patching_rect" : [ 145.0, 164.583328, 204.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-tiny.pct",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.824252,
									"patching_rect" : [ 189.0, 195.537628, 200.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "blue", ",", "graph" ],
									"fontsize" : 9.0,
									"pattrmode" : 1,
									"types" : [  ],
									"patching_rect" : [ 52.0, 51.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-big.pct",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.560724,
									"patching_rect" : [ 354.0, 288.488892, 194.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 354.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 189.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 322.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"text" : "p",
					"id" : "obj-98",
					"numinlets" : 1,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 588.0, 112.0, 193.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 74.0, 189.0, 560.0, 297.0 ],
						"bglocked" : 0,
						"defrect" : [ 74.0, 189.0, 560.0, 297.0 ],
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
									"text" : "sprintf knobpicture ej.k-%s-h-tiny-aqua.pct",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 294.535034, 214.104065, 237.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-small-aqua.pct",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 250.14856, 188.579346, 246.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-big-aqua.pct",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 187.13028, 139.043152, 234.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-tiny-aqua.pct",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 216.209656, 164.454834, 236.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "blue", ",", "graph" ],
									"fontsize" : 12.129223,
									"pattrmode" : 1,
									"types" : [  ],
									"patching_rect" : [ 59.282425, 46.720558, 129.123917, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-big-aqua.pct",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 114.0, 86.818466, 234.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-small-aqua.pct",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"patching_rect" : [ 154.385376, 113.615372, 246.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 59.282425, 14.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.13028, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.385376, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.14856, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.535034, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 216.209656, 248.850342, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
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
					"maxclass" : "comment",
					"text" : "choose your favorite colors...",
					"id" : "obj-99",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"patching_rect" : [ 244.0, 105.0, 179.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 sizes (big, small, tiny\r2 colors (Aqua, Graphite)\r2 backgrounds (Aqua, Metal)\r2 horientations (vertical, horizontal)",
					"linecount" : 4,
					"id" : "obj-101",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"patching_rect" : [ 597.0, 87.0, 191.0, 60.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
