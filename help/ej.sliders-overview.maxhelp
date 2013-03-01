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
					"numoutlets" : 0,
					"patching_rect" : [ 324.677704, 418.935364, 210.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-102",
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ejies Aqua sliders",
					"presentation_linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 16.719757, 14.719761, 188.0, 30.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"id" : "obj-103",
					"presentation_rect" : [ 301.0, 302.0, 166.0, 54.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "it does nothing... just pass the input to the output",
					"numoutlets" : 0,
					"patching_rect" : [ 16.719757, 46.0, 260.0, 20.0 ],
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187,
					"id" : "obj-104",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : -1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.719757, 10.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"id" : "obj-105",
					"presentation_rect" : [ 296.0, 298.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 396.0, 25.0, 147.471741, 24.0 ],
					"fontname" : "Arial",
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontlink" : 1,
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"text" : "open ejies overview",
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"fontface" : 3,
					"fontsize" : 13.914225,
					"id" : "obj-106",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 120.0, 120.0, 147.471741, 24.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hilite" : 0,
					"numoutlets" : 4,
					"patching_rect" : [ 646.0, 422.0, 159.0, 21.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"id" : "obj-107",
					"presentation_rect" : [ 776.455444, 603.968689, 155.0, 18.0 ],
					"handoff" : "",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 689.0, 446.0, 417.0, 31.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"id" : "obj-108",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"numoutlets" : 0,
					"patching_rect" : [ 647.0, 423.0, 158.0, 20.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"fontsize" : 11.595187,
					"id" : "obj-109",
					"presentation_rect" : [ 776.0, 603.0, 158.0, 20.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 529.0, 24.0, 143.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"id" : "obj-110",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"patching_rect" : [ 529.0, 43.0, 57.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"id" : "obj-111",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"patching_rect" : [ 143.0, 105.0, 100.0, 20.0 ],
					"fontname" : "Arial",
					"items" : [ "Blue", ",", "Graphite" ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 11.595187,
					"id" : "obj-4",
					"types" : [  ],
					"labelclick" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 777.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-5",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 767.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-6",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 757.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-7",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 747.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-8",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 737.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-9",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 727.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-10",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 717.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-11",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 707.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny-aqua.png",
					"id" : "obj-12",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 698.0, 153.0, 97.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-13",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 654.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-14",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 641.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-15",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 628.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-16",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 615.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-17",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 602.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-18",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 589.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-19",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 576.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-20",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 563.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small-aqua.png",
					"id" : "obj-21",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 501.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big-aqua.png",
					"id" : "obj-22",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 484.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big-aqua.png",
					"id" : "obj-23",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 467.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big-aqua.png",
					"id" : "obj-24",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 450.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big-aqua.png",
					"id" : "obj-25",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 554.0, 153.0, 122.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-26",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 441.0, 152.0, 85.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-27",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 439.0, 375.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big-aqua.png",
					"id" : "obj-28",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 439.0, 359.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big-aqua.png",
					"id" : "obj-29",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 439.0, 343.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big-aqua.png",
					"id" : "obj-30",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 439.0, 327.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big-aqua.png",
					"id" : "obj-31",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 386.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-32",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 374.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-33",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 362.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-34",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 350.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-35",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 338.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-36",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 326.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-37",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 567.0, 314.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small-aqua.png",
					"id" : "obj-38",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 387.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-39",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 377.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-40",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 367.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-41",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 357.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-42",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 347.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-43",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 337.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-44",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 327.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-45",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 702.0, 317.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny-aqua.png",
					"id" : "obj-46",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny-aqua.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 694.0, 306.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-47",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 306.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-48",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 431.0, 305.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-49",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 29.0, 375.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big.png",
					"id" : "obj-50",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 29.0, 359.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big.png",
					"id" : "obj-51",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 29.0, 343.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big.png",
					"id" : "obj-52",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 29.0, 327.0, 96.0, 16.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-big.png",
					"id" : "obj-53",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 386.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-54",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 374.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-55",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 362.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-56",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 350.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-57",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 338.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-58",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 326.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-59",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 157.0, 314.0, 96.0, 12.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-small.png",
					"id" : "obj-60",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 387.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-61",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 377.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-62",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 367.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-63",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 357.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-64",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 347.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-65",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 337.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-66",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 327.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-67",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 100,
					"patching_rect" : [ 292.0, 317.0, 96.0, 10.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-h-tiny.png",
					"id" : "obj-68",
					"topvalue" : 0,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-h-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 362.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-69",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 352.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-70",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 342.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-71",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 332.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-72",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 322.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-73",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 312.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-74",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 302.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-75",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 292.0, 163.0, 10.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-tiny.png",
					"id" : "obj-76",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-tiny.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 283.0, 153.0, 97.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-77",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 239.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-78",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 226.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-79",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 213.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-80",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 200.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-81",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 29.0, 84.218903, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-82",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "active $1",
					"numoutlets" : 1,
					"patching_rect" : [ 29.0, 108.0, 58.0, 18.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"id" : "obj-83",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 187.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-84",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 174.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-85",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 161.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-86",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 148.0, 163.0, 13.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-small.png",
					"id" : "obj-87",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-small.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 86.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big.png",
					"id" : "obj-88",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 69.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big.png",
					"id" : "obj-89",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 52.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big.png",
					"id" : "obj-90",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"rightvalue" : 0,
					"patching_rect" : [ 35.0, 163.0, 17.0, 100.0 ],
					"clickedimage" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "ej.bg-v-big.png",
					"id" : "obj-91",
					"topvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "ej.k-graph-v-big.png"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 153.0, 122.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-92",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 284.0, 305.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-93",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 148.0, 305.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-94",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 305.0, 111.0, 101.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-95",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 152.0, 85.0, 118.0 ],
					"bordercolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
					"rounded" : 0,
					"border" : 1,
					"id" : "obj-96",
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numoutlets" : 6,
					"patching_rect" : [ 148.0, 125.0, 193.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontsize" : 11.595187,
					"id" : "obj-97",
					"numinlets" : 1,
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
									"text" : "sprintf knobpicture ej.k-%s-h-small.png",
									"numoutlets" : 1,
									"patching_rect" : [ 247.0, 226.575912, 205.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.519143,
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-tiny.png",
									"numoutlets" : 1,
									"patching_rect" : [ 310.0, 257.529724, 192.0, 19.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.285645,
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 52.0, 20.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-big.png",
									"numoutlets" : 1,
									"patching_rect" : [ 97.0, 133.497238, 193.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.504039,
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-small.png",
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 164.583328, 204.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.50039,
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-tiny.png",
									"numoutlets" : 1,
									"patching_rect" : [ 189.0, 195.537628, 200.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.824252,
									"id" : "obj-6",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"patching_rect" : [ 52.0, 51.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"items" : [ "blue", ",", "graph" ],
									"outlettype" : [ "int", "", "" ],
									"pattrmode" : 1,
									"fontsize" : 9.0,
									"id" : "obj-7",
									"types" : [  ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-big.png",
									"numoutlets" : 1,
									"patching_rect" : [ 354.0, 288.488892, 194.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.560724,
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 354.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 189.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numoutlets" : 6,
					"patching_rect" : [ 588.0, 112.0, 193.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontsize" : 11.595187,
					"id" : "obj-98",
					"numinlets" : 1,
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
									"text" : "sprintf knobpicture ej.k-%s-h-tiny-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 294.535034, 214.104065, 237.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-small-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 250.14856, 188.579346, 246.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-h-big-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 187.13028, 139.043152, 234.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-tiny-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 216.209656, 164.454834, 236.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"patching_rect" : [ 59.282425, 46.720558, 129.123917, 20.0 ],
									"fontname" : "Arial",
									"items" : [ "blue", ",", "graph" ],
									"outlettype" : [ "int", "", "" ],
									"pattrmode" : 1,
									"fontsize" : 12.129223,
									"id" : "obj-5",
									"types" : [  ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-big-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 114.0, 86.818466, 234.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-6",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf knobpicture ej.k-%s-v-small-aqua.png",
									"numoutlets" : 1,
									"patching_rect" : [ 154.385376, 113.615372, 246.0, 20.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 12.129223,
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 59.282425, 14.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 187.13028, 248.850342, 25.0, 25.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 248.850342, 25.0, 25.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 154.385376, 248.850342, 25.0, 25.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 250.14856, 248.850342, 25.0, 25.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 294.535034, 248.850342, 25.0, 25.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 216.209656, 248.850342, 25.0, 25.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose your favorite colors...",
					"numoutlets" : 0,
					"patching_rect" : [ 244.0, 105.0, 179.0, 20.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-99",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 sizes (big, small, tiny\r2 colors (Aqua, Graphite)\r2 backgrounds (Aqua, Metal)\r2 orientations (vertical, horizontal)",
					"linecount" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 597.0, 87.0, 191.0, 60.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-101",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-107", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 4 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 3 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 5 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
