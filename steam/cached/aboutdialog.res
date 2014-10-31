"steam/cached/aboutdialog.res" {
	controls {
		"AboutDialog"
		{
			"ControlName"		"CAboutDialog"
			"fieldName"		"AboutDialog"
			"xpos"		"911"
			"ypos"		"473"
			"wide"		"351"
			"tall"		"250"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"settitlebarvisible"		"1"
			"title"		"#Steam_About_Title"
		}
		"Label1"
		{
			"ControlName"		"Label"
			"fieldName"		"Label1"
			"xpos"		"24"
			"ypos"		"62"
			"wide"		"256"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Steam_About_Build"
			"textAlignment"		"west"
			"wrap"		"0"
		}
		"Button1"
		{
			"ControlName"		"Button"
			"fieldName"		"Button1"
			"xpos"		"248"
			"ypos"		"213"
			"wide"		"92"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"1"
			"paintbackground"		"1"
			"labelText"		"#vgui_close"
			"textAlignment"		"west"
			"wrap"		"0"
			"Command"		"Close"
			"Default"		"0"
			"selected"		"0"
		}
		"Label2"
		{
			"ControlName"		"Label"
			"fieldName"		"Label2"
			"xpos"		"24"
			"ypos"		"38"
			"wide"		"256"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Steam_About_Info"
			"textAlignment"		"west"
			"wrap"		"0"
		}
		"Label3"
		{
			"ControlName"		"Label"
			"fieldName"		"Label3"
			"xpos"		"24"
			"ypos"		"86"
			"wide"		"320"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Steam_About_InterfaceVer"
			"textAlignment"		"west"
			"wrap"		"0"
		}
		"URLLabel1"
		{
			"ControlName"		"URLLabel"
			"fieldName"		"URLLabel1"
			"xpos"		"25"
			"ypos"		"138"
			"wide"		"296"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Steam_SteamPoweredURL"
			"textAlignment"		"west"
			"wrap"		"0"
			"URLText"		"http://www.steampowered.com"
		}
		"GreyStrip"
		{
			"ControlName"		"ImagePanel"
			"fieldName"		"GreyStrip"
			"xpos"		"22"
			"ypos"		"160"
			"zpos"		"-1"
			"wide"		"312"
			"tall"		"1"
			"AutoResize"		"1"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"fillcolor"		"SecBG"
			"gradientVertical"		"0"
			"scaleImage"		"0"
		}
		
		"Label4"
		{
			"ControlName"		"Label"
			"fieldName"		"Label4"
			"xpos"		"24"
			"ypos"		"110"
			"wide"		"303"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Steam_PackageVersion"
			"textAlignment"		"west"
			"wrap"		"0"
		}
	}

	styles {
		frame {
			render_bg {
				0="image(x0+12,y0+30,x1,y1, graphics/dialogs/about)"
				
				1="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				2="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				3="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
			
			minimum-width=500
			minimum-height=350
		}
	}

	layout {
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		
		place { 
			control="Label2,Label3,Label4,Label1,URLLabel1" 
			x=16 
			y=190 
			dir=down 
			spacing=4
			margin-right=16 
		}
		region { 
			name="bottom" 
			align=bottom 
			height=50 
		}
		
		place { 
			control="Button1" 
			region=bottom 
			align=right 
			width=90
			height=24
			margin-top=13
			margin-right=10 
		}
		
		place { 
			control="GreyStrip" 
			width=0 
			height=0 
		}
	}
}
