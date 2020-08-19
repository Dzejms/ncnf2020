{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 2493.0, 1290.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"annotation" : "## Create an embossed video effect ##",
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vz.embossr.maxpat",
					"numinlets" : 8,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1328.0, 478.0, 248.0, 130.0 ],
					"varname" : "embossr",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1570.0, 23.46808385848999, 426.976744186046517, 324.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "## Convert a video into a line drawing ##",
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vz.sketchr.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.0, 39.776592373847961, 177.0, 130.0 ],
					"prototypename" : "pixl",
					"varname" : "sketchr",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-61",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 345.595743060112, 207.978724598884583, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 345.595743060112, 334.297871708869934, 41.0, 22.0 ],
					"text" : "abs 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 354.595743060112, 292.297871708869934, 83.0, 22.0 ],
					"text" : "snapshot~ 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 354.595743060112, 254.19148862361908, 70.0, 22.0 ],
					"text" : "cycle~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 336.010638236999512, 447.122507452964783, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[1]",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-49",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LFO.maxpat",
					"numinlets" : 0,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 828.691485047340393, 588.404255509376526, 137.0, 116.0 ],
					"varname" : "bp.LFO[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-36",
					"knobcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 2,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 975.191485047340393, 892.776592373847961, 18.0, 95.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-15",
					"knobcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 2,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 919.191485047340393, 892.776592373847961, 18.0, 95.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-37",
					"knobcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 2,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 863.191485047340393, 892.776592373847961, 18.0, 95.0 ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1029.191485047340393, 876.776592373847961, 53.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.691485047340393, 901.776592373847961, 20.0, 20.0 ],
					"text" : "50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1031.191485047340393, 997.776592373847961, 50.0, 20.0 ],
					"text" : "mode $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.191485047340393, 1016.776592373847961, 59.0, 20.0 ],
					"text" : "outgain $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 919.191485047340393, 997.776592373847961, 52.0, 20.0 ],
					"text" : "ingain $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 863.191485047340393, 1016.776592373847961, 68.0, 20.0 ],
					"text" : "threshold $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"hidden" : 1,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 807.191485047340393, 997.776592373847961, 57.0, 20.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 807.191485047340393, 892.776592373847961, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 798.191485047340393, 856.776592373847961, 44.0, 18.0 ],
					"text" : "Bypass"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-44",
					"items" : [ "Punchy", ",", "Smooth" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1031.191485047340393, 929.776592373847961, 70.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1029.191485047340393, 856.776592373847961, 57.0, 18.0 ],
					"text" : "Response"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 966.191485047340393, 848.776592373847961, 45.0, 30.0 ],
					"text" : "Output Level"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 910.191485047340393, 848.776592373847961, 39.0, 30.0 ],
					"text" : "Input Level"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.435669000000001,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 849.191485047340393, 856.776592373847961, 56.0, 18.0 ],
					"text" : "Threshold"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.866667, 0.839216, 0.815686, 1.0 ],
					"bordercolor" : [ 0.713726, 0.670588, 0.580392, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 792.191485047340393, 993.776592373847961, 315.0, 52.0 ],
					"proportion" : 0.39,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.866667, 0.839216, 0.815686, 1.0 ],
					"bordercolor" : [ 0.713726, 0.670588, 0.580392, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 792.191485047340393, 845.776592373847961, 315.0, 30.0 ],
					"proportion" : 0.39,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.94902, 0.937255, 0.929412, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 0.713726, 0.670588, 0.580392, 1.0 ],
					"hidden" : 1,
					"id" : "obj-55",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.191485047340393, 843.776592373847961, 319.0, 204.0 ],
					"proportion" : 0.39,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "list", "list" ],
					"patching_rect" : [ 771.691485047340393, 1126.588000059127808, 91.0, 23.0 ],
					"text" : "omx.peaklim~"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-31",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LFO.maxpat",
					"numinlets" : 0,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 721.691488265991211, 447.978724598884583, 137.0, 116.0 ],
					"varname" : "bp.LFO[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LFO.maxpat",
					"numinlets" : 0,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 568.5, 447.978724598884583, 137.0, 116.0 ],
					"varname" : "bp.LFO",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-29",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Folder.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 539.289802499999951, 571.978724598884583, 254.420395000000013, 116.0 ],
					"varname" : "bp.Folder",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-27",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Comb Filter.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 542.0, 696.680851817131042, 245.0, 116.0 ],
					"varname" : "bp.Comb Filter",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Classroom Filter.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 542.0, 222.978724598884583, 558.0, 223.0 ],
					"varname" : "bp.Classroom Filter",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 222.180851817131042, 117.335275769233704, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 222.180851817131042, 174.46808385848999, 46.0, 22.0 ],
					"text" : "rate $1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "## Solarize a video ##",
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vz.solarizr.maxpat",
					"numinlets" : 8,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1059.121216416358948, 39.776592373847961, 258.0, 146.0 ],
					"prototypename" : "pixl",
					"varname" : "interpol8r",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.121216416358948, 130.335275769233704, 119.0, 22.0 ],
					"text" : "read billionsand.mp4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "jit_matrix", "" ],
					"patching_rect" : [ 62.121216416358948, 164.76467764377594, 60.0, 22.0 ],
					"text" : "jit.movie~"
				}

			}
, 			{
				"box" : 				{
					"hiderwff" : 1,
					"id" : "obj-9",
					"maxclass" : "playbar",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 62.121216416358948, 54.878793954849243, 315.0, 49.0 ],
					"style" : "velvet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 620.187029957771301, 1189.791139245033264, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 626.150887250900269, 1023.744413256645203, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Flanger.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 542.0, 830.914892315864563, 190.0, 116.0 ],
					"varname" : "bp.Flanger",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-30", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"source" : [ "obj-31", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 2 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11::obj-1" : [ "range[6]", "range", 0 ],
			"obj-11::obj-34" : [ "pictctrl[63]", "pictctrl[1]", 0 ],
			"obj-11::obj-37" : [ "pictctrl[64]", "pictctrl[1]", 0 ],
			"obj-11::obj-50" : [ "contrast[11]", "contrast", 0 ],
			"obj-11::obj-52" : [ "umenu[4]", "umenu", 0 ],
			"obj-11::obj-71" : [ "pictctrl[1]", "pictctrl[1]", 0 ],
			"obj-11::obj-72" : [ "thresh", "thresh", 0 ],
			"obj-14::obj-10" : [ "tolerance[4]", "tolerance", 0 ],
			"obj-14::obj-25" : [ "pictctrl[39]", "pictctrl[1]", 0 ],
			"obj-14::obj-27" : [ "swatch[1]", "swatch[1]", 0 ],
			"obj-14::obj-29" : [ "umenu[6]", "umenu", 0 ],
			"obj-14::obj-3" : [ "range[4]", "range", 0 ],
			"obj-14::obj-53" : [ "pictctrl[4]", "pictctrl[1]", 0 ],
			"obj-14::obj-54" : [ "pictctrl[43]", "pictctrl[1]", 0 ],
			"obj-14::obj-62" : [ "pictctrl[8]", "pictctrl[1]", 0 ],
			"obj-14::obj-64" : [ "pictctrl[7]", "pictctrl[1]", 0 ],
			"obj-14::obj-73" : [ "pictctrl[2]", "pictctrl[1]", 0 ],
			"obj-14::obj-8" : [ "hi range", "hi range", 0 ],
			"obj-14::obj-85" : [ "pictctrl[40]", "pictctrl[1]", 0 ],
			"obj-17" : [ "live.dial", "live.dial", 0 ],
			"obj-21::obj-12" : [ "pictctrl[5]", "pictctrl[1]", 0 ],
			"obj-21::obj-27" : [ "swatch[2]", "swatch[1]", 0 ],
			"obj-21::obj-28" : [ "swatch", "swatch", 0 ],
			"obj-21::obj-49" : [ "pictctrl[6]", "pictctrl[1]", 0 ],
			"obj-21::obj-53" : [ "pictctrl[9]", "pictctrl[1]", 0 ],
			"obj-21::obj-54" : [ "pictctrl[41]", "pictctrl[1]", 0 ],
			"obj-21::obj-62" : [ "pictctrl[3]", "pictctrl[1]", 0 ],
			"obj-21::obj-64" : [ "pictctrl[10]", "pictctrl[1]", 0 ],
			"obj-21::obj-75" : [ "multislider[3]", "multislider", 0 ],
			"obj-21::obj-76" : [ "multislider[4]", "multislider", 0 ],
			"obj-21::obj-77" : [ "multislider[5]", "multislider", 0 ],
			"obj-21::obj-78" : [ "multislider[6]", "multislider", 0 ],
			"obj-21::obj-9" : [ "range[3]", "range", 0 ],
			"obj-23::obj-11" : [ "Resonance", "Res", 0 ],
			"obj-23::obj-26" : [ "spectral", "spectral", 0 ],
			"obj-23::obj-51" : [ "CV2", "CV2", 0 ],
			"obj-23::obj-54" : [ "CV1", "CV1", 0 ],
			"obj-23::obj-55" : [ "power", "power", 0 ],
			"obj-23::obj-59" : [ "filter_mode", "filter_mode", 0 ],
			"obj-23::obj-63" : [ "CV3", "CV3", 0 ],
			"obj-23::obj-95" : [ "Freq", "Freq", 0 ],
			"obj-23::obj-98" : [ "Gain", "Gain", 0 ],
			"obj-27::obj-118" : [ "Mix", "Mix", 0 ],
			"obj-27::obj-137" : [ "Feedback", "Feedback", 0 ],
			"obj-27::obj-14" : [ "CV2[1]", "CV2", 0 ],
			"obj-27::obj-42" : [ "Invert", "Invert", 0 ],
			"obj-27::obj-51" : [ "Freq[1]", "Freq", 0 ],
			"obj-27::obj-55" : [ "FreqMode", "FreqMode", 0 ],
			"obj-27::obj-56" : [ "Offset", "Offset", 0 ],
			"obj-27::obj-7" : [ "Bypass", "Bypass", 0 ],
			"obj-29::obj-38" : [ "LoValueCV", "CV", 0 ],
			"obj-29::obj-4" : [ "bypass[1]", "bypass", 0 ],
			"obj-29::obj-40" : [ "LoValue", "Low", 0 ],
			"obj-29::obj-45" : [ "mode", "mode", 0 ],
			"obj-29::obj-50" : [ "HiValueCV", "CV", 0 ],
			"obj-29::obj-52" : [ "HiValue", "High", 0 ],
			"obj-30::obj-12" : [ "Mute", "Mute", 0 ],
			"obj-30::obj-20" : [ "Frequency", "Freq", 0 ],
			"obj-31::obj-12" : [ "Mute[1]", "Mute", 0 ],
			"obj-31::obj-20" : [ "Frequency[1]", "Freq", 0 ],
			"obj-49::obj-12" : [ "Mute[2]", "Mute", 0 ],
			"obj-49::obj-20" : [ "Frequency[2]", "Freq", 0 ],
			"obj-4::obj-1" : [ "Width", "Width", 0 ],
			"obj-4::obj-2" : [ "Rate", "Rate", 0 ],
			"obj-4::obj-23" : [ "bypass", "bypass", 0 ],
			"obj-4::obj-28" : [ "Center", "Center", 0 ],
			"obj-4::obj-3" : [ "Regen", "Regen", 0 ],
			"obj-51" : [ "live.dial[1]", "live.dial", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-14::obj-53" : 				{
					"parameter_longname" : "pictctrl[4]"
				}
,
				"obj-14::obj-62" : 				{
					"parameter_longname" : "pictctrl[8]"
				}
,
				"obj-14::obj-64" : 				{
					"parameter_longname" : "pictctrl[7]"
				}
,
				"obj-14::obj-73" : 				{
					"parameter_longname" : "pictctrl[2]"
				}
,
				"obj-14::obj-8" : 				{
					"parameter_longname" : "hi range",
					"parameter_shortname" : "hi range"
				}
,
				"obj-21::obj-27" : 				{
					"parameter_longname" : "swatch[2]"
				}
,
				"obj-21::obj-53" : 				{
					"parameter_longname" : "pictctrl[9]"
				}
,
				"obj-21::obj-54" : 				{
					"parameter_longname" : "pictctrl[41]"
				}
,
				"obj-21::obj-62" : 				{
					"parameter_longname" : "pictctrl[3]"
				}
,
				"obj-21::obj-64" : 				{
					"parameter_longname" : "pictctrl[10]"
				}
,
				"obj-27::obj-14" : 				{
					"parameter_longname" : "CV2[1]"
				}
,
				"obj-27::obj-51" : 				{
					"parameter_longname" : "Freq[1]"
				}
,
				"obj-29::obj-4" : 				{
					"parameter_longname" : "bypass[1]"
				}
,
				"obj-31::obj-12" : 				{
					"parameter_longname" : "Mute[1]"
				}
,
				"obj-31::obj-20" : 				{
					"parameter_longname" : "Frequency[1]"
				}
,
				"obj-49::obj-12" : 				{
					"parameter_longname" : "Mute[2]"
				}
,
				"obj-49::obj-20" : 				{
					"parameter_longname" : "Frequency[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bp.Flanger.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vz.solarizr.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "video-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "data-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-object.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vizzie-global.js",
				"bootpath" : "C74:/packages/vizzie/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Classroom Filter.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/Filter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Comb Filter.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/Filter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.bal1~.maxpat",
				"bootpath" : "C74:/patchers/m4l/Tools resources",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Folder.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/Waveshapers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.LFO.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/LFO",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vz.sketchr.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-routemat.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-disable.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vz.embossr.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-routegl.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jit.movie~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "jit.pass.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
