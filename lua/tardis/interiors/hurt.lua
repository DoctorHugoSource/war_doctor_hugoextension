-- War Doctor's TARDIS



local T={}
T.Base="base"
T.Name="War Doctor's TARDIS"
T.ID="hurt"
T.Interior={
	Model="models/doctormemes/hurt/interior.mdl",
	Portal={
	        pos=Vector(0,-290.64,33),
	        ang=Angle(0,90,0),
		width=180,
		height=160
	},
	Screens={
		{
			pos=Vector(-25.4834,-5.9958,67.6157),
			ang=Angle(0,-60,90),
			width=243,
			height=165,
		  	visgui_rows=2
		}
	},
	ScreensEnabled=false,
	Fallback={
		pos=Vector(0,-260,-10),
		ang=Angle(0,90,0),
	},

	Sounds = {
		Teleport = {
			mat_short = "hug o/tardis/default+/base sounds/s1-4/ext/mat_short/mat_short_ext_s1-4.ogg",
			},
		},

	Sequences="hurt_sequences",

	Parts={
		hurtconsole=true,
		hurtglass=true,
		hurtscreen=true,
		hurtstruts=true,
		hurtmetalcover=true,
		hurtthrottle=true,
		hurttrash=true,
		hurtbiglever=true,
		hurtbelttrash=true,
		hurttrash2=true,
		hurtblacklever=true,
		hurtphone=true,
		hurtresistor=true,
		hurtfourbuttons=true,
		hurtsmalllever=true,
		hurtredball=true,
		hurtblueball=true,
		hurtbell=true,
		hurtvoicebutton=true,
		hurtvalve=true,
		hurtswitch=true,
		hurtweirdlever=true,
		hurtcs1=true,
		hurtcs2=true,
		hurtcs3=true,
		hurtcs4=true,
		hurtcs5=true,
		hurtcontrolbox=true,
		hurtlock1=true,
		hurtlock2=true,
		hurtconsolelamps=true,
		hurtscreenanimation=true,
		hurtstasiscube=true,
		hurtroom=true,
		hurtpainting=true,
		hurtkeypad=true,
		hurtreddetonator=true,


		-- hugoextension parts
		tardisfireexting = {pos = Vector(50,105,-16), ang = Angle(0, 90, 0), },
		thirdperson_utility = {pos = Vector(22,-12.5,47), ang = Angle(0, -120, 60), },
		chronoplasmicshell = {matrixScale = Vector(20,20,20),},



                door={
                        model="models/doctorwho1200/hurt/doors.mdl",posoffset=Vector(4.01,0,-47.971),angoffset=Angle(0,-180,0)
             },
	},

	IdleSound={
		{
			path="doctormemes/hurt/interior.wav",
			volume=1
		}
	},
	Light = { color = Color(255,255,255), pos = Vector(0,100,120), brightness = 0.5, warncolor = Color(255, 0, 0),},
	Lights = {
		{color = Color(255, 255, 255),		pos = Vector(0,-100,120),	brightness = 0.5,		warncolor = Color(255, 0, 0),},
//		{color = Color(0, 0, 0),		pos = Vector(0,0,0),	brightness = 0,},
//		{color = Color(0, 0, 0),		pos = Vector(0,0,0),	brightness = 0,}, -- these two are blanks. Need to be here because [REDACTED].
	},
	LightOverride={
		basebrightness=0.15,
		lowpowerbrightness=0.006,
		nopowerbrightness=0.001
	},

		TransducerCell = {
        position = Vector(44.64,201.84,3)  -- defines the position the transducer cell spawns in, relative to the main interior entity
    	},                                 -- protip: use the addon 'no more guessing' to easily get a vector relative to the interior entity

		WindowTint = {
        Vortex = (Color(5,0,100):ToVector()), --color for the window tint during vortex travel
        TintMult = 1, --multiplier for window tint brightness
		ExtTint = Color(70, 0, 200):ToVector(),
        Extambient = Color(71, 30, 77),
--         DoorSpeedMult = 1.3,
--         DoorSpeedMultClosed = 0.5,
		},
		PhaseData = {
		DefaultPhongExponent = 25,
		DefaultPhongBoost = 0.15,
		PhaseMult = 0.1,
		PhongBoostMult = 5,
		},
		TintProxies_Int = {
		[3] = "models/hugoextension/windows/hurt/window_R_unlit_tint.vmt",
		[4] = "models/hugoextension/windows/hurt/window_l_unlit_tint.vmt",
		[9] = "models/hugoextension/windows/hurt/window_R_unlit_tint.vmt",
		[10] = "models/hugoextension/windows/hurt/window_l_unlit_tint.vmt",
		},
		TintProxies_Ext = {
		[0] = "models/hugoextension/windows/hurt/window_l_unlit_exttint.vmt",
		[1] = "models/hugoextension/windows/hurt/window_R_unlit_exttint.vmt",
		[8] = "models/hugoextension/windows/hurt/window_R_unlit_exttint.vmt",
		[9] = "models/hugoextension/windows/hurt/window_l_unlit_exttint.vmt",
		},
		TintProxies_ExtDoor = {
		[3] = "models/hugoextension/windows/hurt/window_l_unlit_exttint.vmt",
		[2] = "models/hugoextension/windows/hurt/window_R_unlit_exttint.vmt",
		[6] = "models/hugoextension/windows/hurt/window_R_unlit_exttint.vmt",
		[7] = "models/hugoextension/windows/hurt/window_l_unlit_exttint.vmt",
		},
		TintProxies_ExtDoorInt = {

		},
	TipSettings={
			style="hurt_tips",
            		view_range_max=70,
            		view_range_min=65,
	},
	PartTips={
		hurtredball	=	{pos=Vector(-6.71457 , 32.3884 , 42.8015 ),     text="Cloaking Device"},
		hurtblacklever	=	{pos=Vector(31.2366 , 8.72762 , 46.2531 ),     text="Float"},
		hurtfourbuttons	=	{pos=Vector(-6.14295 , 24.152 , 46.8355 ),     text="Door Switch"},
		hurtvalve	=	{pos=Vector(7.74799 , -32.1924 , 43.236 ),     text="Door Lock"},
		hurtswitch	=	{pos=Vector(-14.3909 , 22.9486 , 51.0305 ),     text="Power"},
		hurtcs3		=	{pos=Vector(-27.166, -16.609, 43.419 ),     text="Visual UI",},
		hurtcontrolbox	=	{pos=Vector(0.297417 , -21.957 , 49.3534 ),     text="H.A.D.S."},
        hurtthrottle	=	{pos=Vector(15.9281 , 29.3276 , 48.8598 ), text="Demat Switch"},
        hurtsmalllever	=	{pos=Vector(25.664 , 32.6448 , 40.3016 ), text="Handbrake"},
        hurtscreen		=	{pos=Vector(-30.1755 , -9.71605 , 55.8349 ), text="Coordinates"},
        hurtblueball	=	{pos=Vector(-21.4891 , 8.55139 , 48.6441 ), text="Repair"},
		hurtbiglever	=   {pos=Vector(26.0681 , 15.0504 , 47.3064 ), text="Flight"}, 
        hurtlock2		=   {pos=Vector(12.5883 , 21.7998 , 50.2743 ), text="Vortex Flight"},
        hurtlock1		=   {pos=Vector(-17.0997 , -34.2553 , 42.0797 ), text="Fast Return"},
        hurtweirdlever		=   {pos=Vector(-4.67012 , -32.7927, 43.2155 ), text="Physical Lock"},
        hurtcs1		=   {pos=Vector(-23.026, -20.766, 44.102 ), text="Security", right = true},
		hurtkeypad		=   {pos=Vector(2.694, 20.132, 57.496 ), text="Manual Destination Selection"},
		hurtcs2		=   {pos=Vector(-25.791, -19.102, 43.171 ), text="Redecoration", right = true, down = true},
		hurtreddetonator	=   {pos=Vector(19.331, 1.463, 53.278 ), text="Engine Release"},
		hurtcs5		=	{pos=Vector(-29.784, -12.114, 43.259), text="Shields", down = true},
		hurtcs4		=	{pos=Vector(-27.784, -14.614, 43.259), text="Box Illumination", right = true, down = false},
		tardisfireexting		=	{pos=Vector(50,105,10), text="Fire Extinguisher", right = false, down = false},
	},
}
T.Exterior = {
	Model = "models/doctorwho1200/hurt/exterior.mdl",
	Mass = 5000,
	ScannerOffset = Vector(30,0,50),
	Portal = {
		pos = Vector(30,0,48),
		ang = Angle(0,0,0),
		width = 50,
		height = 90,
		thickness = 35,
		            exit_point_offset = {
                pos = Vector(0,0,1),
                ang = Angle(0, 0, 0),
            },
            inverted = true,
	},
		Fallback = {
		pos = Vector(50,0,7),
		ang = Angle(0,0,0)
		},

		Light = {
		enabled = true,
		pos = Vector(0,0,119),
		color = Color(255,240,200)
		},

		Sounds = {
			Lock="doctormemes/hurt/lock.wav",
			Door = {
			enabled = true,
			open = "doctormemes/hurt/doorext_open.wav",
			close = "doctormemes/hurt/doorext_close.wav"
			},

			Teleport = {
			mat_short = "hug o/tardis/default+/base sounds/s1-4/ext/mat_short/mat_short_ext_s1-4.ogg",
			},
		},

		Parts = {
			door = {
			model = "models/doctorwho1200/hurt/doors_ext.mdl", posoffset = Vector(-4.01,0,-47.971), angoffset = Angle(0,0,0)
			},

			stephelper = {pos = Vector(14,0,-0.8), ang = Angle(0, 0, 0), },
			stephelper2 = {pos = Vector(11,0,2.2), ang = Angle(0, 0, 0), },
			vortex = {
			model = "models/doctormemes/hurt/vortex.mdl",
			pos = Vector(0,0,50),
			ang = Angle(0,0,0),
			scale = 5
			}

		},

		Teleport = {

			DematSequenceDelays={
				[1] = 1.5
			},
			DematFastSequenceDelays={
				[1] = 1.5
			},
	
			SequenceSpeed = {
			 Mat = 1.5,
			 Demat = 1.5
			 },
			PrematDelay = 8.5,
	
			SequenceSpeedFast = 1.5,
			PrematSequenceDelayFast = 1.9,
	
			SequenceSpeedVeryFast = 2.8,
			PrematSequenceDelayVeryFast = 0.1,
	
			SequenceSpeedWarning = 1.5,
			SequenceSpeedWarnFast = 1.5,
	
			SequenceSpeedHads = 1.8,
	
			DematSequence = {
				192,
				250,
				129,
				200,
				85,
				160,
				17,
				90,
				0
			},
			MatSequence = {
				120,
				30,
				140,
				55,
				150,
				70,
				160,
				82,
				200,
			},
			DematSequenceFast = {
				192,
				250,
				129,
				200,
				85,
				160,
				0
			},
			MatSequenceFast = {
				120,
				30,
				150,
				70,
				160,
				82,
				200,
			},
			DematSequenceVeryFast = {
				255,
				0
			},
			MatSequenceVeryFast = {
				0,
				255
			},
			HadsDematSequence = {
				100,
				200,
				0
			},
		},
	}

TARDIS:AddInterior(T)
