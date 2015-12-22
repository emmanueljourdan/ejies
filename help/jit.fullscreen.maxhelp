{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 100.0, 100.0, 549.0, 339.0 ],
		"bgcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"hidden" : 1,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1140.0, 244.0, 100.0, 17.0 ],
					"presentation_rect" : [ 1107.0, 327.0, 0.0, 0.0 ],
					"text" : "script delete shell"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1125.0, 210.0, 63.0, 18.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1194.0, 168.0, 34.0, 20.0 ],
					"text" : "t 0 b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1125.0, 164.0, 34.0, 20.0 ],
					"text" : "t 1 b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"hidden" : 1,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1209.0, 201.0, 471.0, 30.0 ],
					"presentation_rect" : [ 807.0, 315.0, 0.0, 0.0 ],
					"text" : "script newobject newobj @text shell @hidden 1 @patching_rect 739 231 36 19 @varname shell, script hidden connect message 0 shell 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1209.0, 295.935394, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1125.0, 141.0, 88.0, 20.0 ],
					"text" : "route notfound"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1125.0, 74.0, 116.0, 20.0 ],
					"text" : "loadmess shell.mxo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1125.0, 106.0, 79.0, 20.0 ],
					"text" : "absolutepath"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 20.871338,
					"frgb" : 0.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.719757, 10.719761, 166.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 122.0, 166.0, 30.0 ],
					"text" : "jit.fullscreen",
					"textcolor" : [ 0.937255, 0.92549, 0.792157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.719757, 42.0, 365.0, 19.0 ],
					"text" : "arg: dimensions",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.719757, 6.719761, 382.01355, 57.248684 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.0, 118.0, 632.0, 58.0 ],
					"shadow" : -1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontface" : 3,
					"fontlink" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.914225,
					"id" : "obj-55",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 394.0, 21.0, 147.471756, 23.544798 ],
					"presentation_rect" : [ 75.0, 75.0, 147.471756, 23.544798 ],
					"text" : "open ejies overview",
					"textcolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ],
					"textoncolor" : [ 0.184314, 0.65098, 0.792157, 1.0 ],
					"textovercolor" : [ 0.054902, 0.47451, 0.6, 1.0 ],
					"textoveroncolor" : [ 0.015686, 0.388235, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hilite" : 0,
					"id" : "obj-48",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 370.0, 310.0, 159.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 596.455444, 423.968689, 155.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.160198,
					"hidden" : 1,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.0, 361.0, 370.0, 25.0 ],
					"text" : ";\rmax launchbrowser http://support.e--j.com"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.0, 311.0, 166.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 596.0, 423.0, 166.0, 19.0 ],
					"text" : "© Emmanuel Jourdan, e--j dev",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 194.677704, 296.935394, 210.0, 19.0 ],
					"text" : "bgcolor 0.937255 0.92549 0.792157 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 20.0, 149.0, 17.0 ],
					"text" : "load ejies-overview.maxpat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 39.0, 57.0, 19.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"frgb" : 0.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 278.0, 244.0, 19.0 ],
					"text" : "<x dim> <y dim> <jit.window attributes>"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 65.0, 227.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 254.0, 76.0, 17.0 ],
					"text" : "fullscreen $1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.0, 168.5, 31.0, 17.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hidden" : 1,
					"hilite" : 0,
					"id" : "obj-5",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 315.0, 163.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 739.0, 210.0, 364.0, 17.0 ],
					"text" : "open /System/Library/PreferencePanes/Displays.prefPane/",
					"varname" : "message"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"frgb" : 0.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 76.0, 353.0, 32.0 ],
					"text" : "If there is a second monitor, the window will be displayed on it. Press Escape key to toggle the fullscreen mode."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.0, 156.0, 34.0, 17.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"minimum" : 0.5,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 93.0, 130.0, 50.0, 19.0 ],
					"presentation_rect" : [ 0.0, 0.0, 50.0, 20.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 49.0, 130.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 49.0, 155.0, 63.0, 19.0 ],
					"text" : "qmetro 33"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 49.0, 201.0, 111.0, 19.0 ],
					"text" : "jit.qt.movie 320 240"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.57,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 49.0, 278.0, 242.0, 19.0 ],
					"text" : "jit.fullscreen 640 480 @interp 1 @pos 700 40"
				}

			}
, 			{
				"box" : 				{
					"data" : [ 1686, "", "IBkSG0fBZn....PCIgDQRA...XB...fHHX....vLrtJt....DLmPIQEBHf.B7g.YHB..FzTRDEDUXUXyX9zaTjbFF+W0y3Y7XxjXVvXPH.sZyJH9fExrKWf8DVJ9KP9jvsHkHtrJR4Vt6uAgKwGigbHBEyIjBQA4cyJEwerjgXlYL8X2S2cUuu4P0U+G6wKvJEsoFUyzcUcU0S879TOU0iY2c2U4+CSssV6O1XXpo10uIKKic2cWd4KeICGNj+WC51sayoO8o4RW5Rb9yed5zoSYcl5gxm+7myCdvC3V25VrxJqPud8vXLGqCEQZbup5wJaZIiwfwXv4bbvAGPddNau81r0VawpqtJW4JWY5.6QO5QrvBKvO4mNOO+U6vfgiP0pAGE.E+kJnEWWTmhhpgL95KaasxKJ6Lex774+7OkzjwLXv.t8sucEaVObs2d6wZqsF+4+xeESqY3pWaoZc1QFvZCj139S54p.YHO3s6w29c+a9k24qXiM1ngzogFyZszqWOFLZDW8ZKwWcyq+dCO+PSewWdS90+1eGe2+5aJG65o1saWgsVsZUpozBN+O92SHJxWeDfZBeQIi.ffAAA0AhBNETwG8sNeXVvWlyo7m95eUYaCiccrzfw.uvt1yinBh.nPjAL.FLnJXLEBeEDQQQw4.GfyBBfSjh5K.rDlzEZ1SvEsgFy4bU0TzfLqhQASDz1XvXTLH.QHhhT.LmCbhhKbsp3D+DU.xcf5TbXvIAMm+SXrOQMVfw73x2.qUoEPjBNieJZvfhCmCD0CFqSwIJVWEvDG3TAq5YPmn9qEsPInMhNMXripwBMHvX1bAZ4CEQFETimoLJNmhJFrhfU7SBqV.NExxEbNEmpj6TrhhXg.uDV4FF6uWMVUjLvXNPLDE4msh2RBmUHWAUTxbdAs0ojkCVUHyojaK.iy3AtHMrXpu34XL1Q0XFuhtjhyrBAkmWW3YHmUQDH2ojKJYVkbq+4ysdf4bE5LUQMF+BK.0El7UZ+2qFyCLJaRVpESgEgndcjS7V.4NgLqPlUKxhWq4B1E9vnef8JSwTX6TvXmzxxo5ioTwXSRckyNm3YIqnjk6Azjb+0VmAq375O.m02GF71FnAOvJfTWK+d0XkaZWzAIYVT0fJ9A2odfjlKjVvTthUjhpnE6kK3Wv3C903kB+uJU7zSS0GKruF.oSjBiQAqnLISHKWI0pXs9xJEzholcSyj5oKLMKrj.euZrPmFVsjlYwJ9UXo4dFJM24czEvFNYgZPkxsC7Lh50UAP52IyCMSgD6j3so5iQM+k3CsHhRpUHOSYh0uxx47N9HfqvzUzJFIrcUc1yWmfhofQ9HzXg8JqD+4jjB4hfMWQvenvfeFFCH3WwUL5E9vTp0KXQClhxq4mcRL1T8wJ1C6K9xaRxe62.nzVUZWLPkaBSkYY0Y1B+VeamJagp1SYzQD4C0GySwe8u+OL0C.dzSjdRGTr4yUwPkm3sF3OZJpc61DxAeryd1yxd68elx.UNkKu+n.pzNuNnp32xIshxvgCXgENChHkZrx7zhuKcsOmm9O9m7sey1k6BbziGG5bzlrV8vWivdsIRHjuvBmgewU+ro91XS0G6y9zKyY+jeVomTPCzpUKhBGm8iHEEEwoN0ona2tLYxDRRRZ3YNd73OPeriL6iii4d26db8qec52u+GMv.HNNls2daVe80QUkCN3fx9OMM8XO+IedrhTVVFat4lr1ZqwctycZ7RoeLorrLd3CeHat4lr5pqRZZZICkmmeLerFwEiwzfsbNGIIIr0VawxKu7OXPAPmNcX4kWl6e+6S61sKeYZQDrV6wdw5FZrVsZwfACX1YmEvyb6ryNbiabC51sKwwwzoSmpcH9.R0mjyM2brzRKwvgCoe+9jjjPZZJu8sukVsZ0Pi0fwle94YiM1f82ee.3oO8or95qyEtvEXvfALb3P1e+8INNlwiGygGdHIIIGKe3gGx3wiINNl33Xd26dGCGNjQiFwhKtH28t2km8rmwbyMGiFMhG+3Gy7yOeiITi+hfc1YGdxSdBu3EufrrL51sKKt3hbtycN50qGc5zgYmcVlYlYHJJpbUZTTToLPDobUbHGBWSlLgCN3.dyadCu90ulzzT51sKW9xWlUVYEt3Eu3zAVZZJwwwjjjPddd4eBhwXJG75+Fttt9ntESHGzs0qKDlmYlYnWudzuee51saEvd0qd022409QK8eAT3mperS84E5.....jTQNQjqBAlf" ],
					"embed" : 1,
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 163.0, 38.0, 34.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 160.5, 186.0, 58.5, 186.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jit.fullscreen.maxpat",
				"bootpath" : "/Users/jourdan/Ircam-Works/Repositories/ejies/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
