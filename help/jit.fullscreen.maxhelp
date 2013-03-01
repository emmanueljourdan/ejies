{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 6.0, 59.0, 549.0, 339.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 6.0, 59.0, 549.0, 339.0 ],
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
					"maxclass" : "comment",
					"text" : "jit.fullscreen",
					"presentation" : 1,
					"id" : "obj-49",
					"numinlets" : 1,
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"presentation_rect" : [ 121.0, 122.0, 166.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"patching_rect" : [ 14.719757, 10.719761, 166.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arg: dimensions",
					"id" : "obj-28",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 14.719757, 42.0, 365.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-83",
					"numinlets" : 1,
					"shadow" : -1,
					"numoutlets" : 0,
					"presentation_rect" : [ 116.0, 118.0, 632.0, 58.0 ],
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"id" : "obj-55",
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
					"presentation_rect" : [ 75.0, 75.0, 147.471741, 24.0 ],
					"fontface" : 3,
					"text" : "open ejies overview",
					"fontsize" : 13.914225,
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"patching_rect" : [ 394.0, 21.0, 147.471741, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation" : 1,
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"presentation_rect" : [ 596.455444, 423.968689, 155.0, 18.0 ],
					"hilite" : 0,
					"patching_rect" : [ 370.0, 310.0, 159.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://support.e--j.com",
					"linecount" : 2,
					"id" : "obj-50",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.160198,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 397.0, 361.0, 370.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© Emmanuel Jourdan, e--j dev",
					"presentation" : 1,
					"id" : "obj-51",
					"numinlets" : 1,
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"presentation_rect" : [ 596.0, 423.0, 158.0, 20.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 371.0, 311.0, 158.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.937255 0.92549 0.792157 1.",
					"id" : "obj-47",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 194.677704, 296.935394, 210.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ejies-overview.maxpat",
					"id" : "obj-31",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 527.0, 20.0, 143.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 527.0, 39.0, 57.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<x dim> <y dim> <jit.window attributes>",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"patching_rect" : [ 221.0, 278.0, 244.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 65.0, 227.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fullscreen $1",
					"id" : "obj-3",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 65.0, 254.0, 76.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontface" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 319.0, 168.0, 31.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"hilite" : 0,
					"patching_rect" : [ 315.0, 164.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "shell",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.57,
					"patching_rect" : [ 739.0, 231.0, 36.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open /System/Library/PreferencePanes/Displays.prefPane/",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 739.0, 210.0, 364.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If there is a second monitor, the window will be displayed on it. Press Escape key to toggle the fullscreen mode.",
					"linecount" : 2,
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"patching_rect" : [ 16.0, 76.0, 353.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 151.0, 156.0, 34.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-16",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"minimum" : 0.5,
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"fontsize" : 11.57,
					"patching_rect" : [ 93.0, 130.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 49.0, 130.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 33",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 49.0, 155.0, 63.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.movie 320 240",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 49.0, 201.0, 111.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fullscreen 640 480 @interp 1",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 11.57,
					"patching_rect" : [ 49.0, 278.0, 170.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"embed" : 1,
					"patching_rect" : [ 315.0, 163.0, 38.0, 34.0 ],
					"data" : [ 1686, "", "IBkSG0fBZn....PCIgDQRA...XB...fHHX....vLrtJt....DLmPIQEBHf.B7g.YHB..FzTRDEDUXUXyX9zaTjbFF+W0y3Y7XxjXVvXPH.sZyJH9fExrKWf8DVJ9KP9jvsHkHtrJR4Vt6uAgKwGigbHBEyIjBQA4cyJEwerjgXlYL8X2S2cUuu4P0U+G6wKvJEsoFUyzcUcU0S879TOU0iY2c2U4+CSssV6O1XXpo10uIKKic2cWd4KeICGNj+WC51sayoO8o4RW5Rb9yed5zoSYcl5gxm+7myCdvC3V25VrxJqPud8vXLGqCEQZbup5wJaZIiwfwXv4bbvAGPddNau81r0VawpqtJW4JWY5.6QO5QrvBKvO4mNOO+U6vfgiP0pAGE.E+kJnEWWTmhhpgL95KaasxKJ6Lex774+7OkzjwLXv.t8sucEaVObs2d6wZqsF+4+xeESqY3pWaoZc1QFvZCj139S54p.YHO3s6w29c+a9k24qXiM1ngzogFyZszqWOFLZDW8ZKwWcyq+dCO+PSewWdS90+1eGe2+5aJG65o1saWgsVsZUpozBN+O92SHJxWeDfZBeQIi.ffAAA0AhBNETwG8sNeXVvWlyo7m95eUYaCiccrzfw.uvt1yinBh.nPjAL.FLnJXLEBeEDQQQw4.GfyBBfSjh5K.rDlzEZ1SvEsgFy4bU0TzfLqhQASDz1XvXTLH.QHhhT.LmCbhhKbsp3D+DU.xcf5TbXvIAMm+SXrOQMVfw73x2.qUoEPjBNieJZvfhCmCD0CFqSwIJVWEvDG3TAq5YPmn9qEsPInMhNMXripwBMHvX1bAZ4CEQFETimoLJNmhJFrhfU7SBqV.NExxEbNEmpj6TrhhXg.uDV4FF6uWMVUjLvXNPLDE4msh2RBmUHWAUTxbdAs0ojkCVUHyojaK.iy3AtHMrXpu34XL1Q0XFuhtjhyrBAkmWW3YHmUQDH2ojKJYVkbq+4ysdf4bE5LUQMF+BK.0El7UZ+2qFyCLJaRVpESgEgndcjS7V.4NgLqPlUKxhWq4B1E9vnef8JSwTX6TvXmzxxo5ioTwXSRckyNm3YIqnjk6Azjb+0VmAq375O.m02GF71FnAOvJfTWK+d0XkaZWzAIYVT0fJ9A2odfjlKjVvTthUjhpnE6kK3Wv3C903kB+uJU7zSS0GKruF.oSjBiQAqnLISHKWI0pXs9xJEzholcSyj5oKLMKrj.euZrPmFVsjlYwJ9UXo4dFJM24czEvFNYgZPkxsC7Lh50UAP52IyCMSgD6j3so5iQM+k3CsHhRpUHOSYh0uxx47N9HfqvzUzJFIrcUc1yWmfhofQ9HzXg8JqD+4jjB4hfMWQvenvfeFFCH3WwUL5E9vTp0KXQClhxq4mcRL1T8wJ1C6K9xaRxe62.nzVUZWLPkaBSkYY0Y1B+VeamJagp1SYzQD4C0GySwe8u+OL0C.dzSjdRGTr4yUwPkm3sF3OZJpc61DxAeryd1yxd68elx.UNkKu+n.pzNuNnp32xIshxvgCXgENChHkZrx7zhuKcsOmm9O9m7sey1k6BbziGG5bzlrV8vWivdsIRHjuvBmgewU+ro91XS0G6y9zKyY+jeVomTPCzpUKhBGm8iHEEEwoN0ona2tLYxDRRRZ3YNd73OPeriL6iii4d26db8qec52u+GMv.HNNls2daVe80QUkCN3fx9OMM8XO+IedrhTVVFat4lr1ZqwctycZ7RoeLorrLd3CeHat4lr5pqRZZZICkmmeLerFwEiwzfsbNGIIIr0VawxKu7OXPAPmNcX4kWl6e+6S61sKeYZQDrV6wdw5FZrVsZwfACX1YmEvyb6ryNbiabC51sKwwwzoSmpcH9.R0mjyM2brzRKwvgCoe+9jjjPZZJu8sukVsZ0Pi0fwle94YiM1f82ee.3oO8or95qyEtvEXvfALb3P1e+8INNlwiGygGdHIIIGKe3gGx3wiINNl33Xd26dGCGNjQiFwhKtH28t2km8rmwbyMGiFMhG+3Gy7yOeiITi+hfc1YGdxSdBu3EufrrL51sKKt3hbtycN50qGc5zgYmcVlYlYHJJpbUZTTToLPDobUbHGBWSlLgCN3.dyadCu90ulzzT51sKW9xWlUVYEt3Eu3zAVZZJwwwjjjPddd4eBhwXJG75+Fttt9ntESHGzs0qKDlmYlYnWudzuee51saEvd0qd022409QK8eAT3mperS84E5.....jTQNQjqBAlf" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 186.0, 58.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
