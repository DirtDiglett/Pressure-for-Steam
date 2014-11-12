"Public/UseOfflineMode.res" {
	"OfflineModDialog" {
		"ControlName"		"CUseOfflineModeDialog"
		"fieldName"		"OfflineModDialog"
		"xpos"		"620"
		"ypos"		"432"
		"wide"		"360"
		"tall"		"308"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"settitlebarvisible"		"1"
		"title"		"#SteamUI_OfflineMode_ErrorTitle"
	}
	"RetryButton" {
		"ControlName"		"Button"
		"fieldName"		"RetryButton"
		"xpos"		"24"
		"ypos"		"224"
		"wide"		"150"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_OfflineMode_Retry"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Retry"
		"Default"		"0"
	}
	"OfflineModeButton" {
		"ControlName"		"Button"
		"fieldName"		"OfflineModeButton"
		"xpos"		"180"
		"ypos"		"224"
		"wide"		"150"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_OfflineMode_StartInOffline"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Offline"
		"Default"		"0"
	}
	"QuitButton" {
		"ControlName"		"Button"
		"fieldName"		"QuitButton"
		"xpos"		"266"
		"ypos"		"260"
		"wide"		"64"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_OfflineMode_Quit"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Quit"
		"Default"		"1"
	}
	"Label1" {
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"24"
		"ypos"		"42"
		"wide"		"312"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"appearance"		"LabelBright"
		"labelText"		"#SteamUI_OfflineMode_CouldNotConnect"
		"textAlignment"		"west"
		"font"		"uiHeadline"
		"wrap"		"1"
	}
	"LabelAppearOffline"
	{
		"ControlName"		"Label"
		"fieldName"		"LabelAppearOffline"
		"xpos"		"24"
		"ypos"		"76"
		"wide"		"312"
		"tall"		"84"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"appearance"		"LabelDull"
		"labelText"		""
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"LabelChoose"
	{
		"ControlName"		"Label"
		"fieldName"		"Label3"
		"xpos"		"24"
		"ypos"		"140"
		"wide"		"312"
		"tall"		"48"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"appearance"		"LabelDull"
		"labelText"		"#SteamUI_OfflineMode_Choose"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"URLLabel1"
	{
		"ControlName"		"URLLabel"
		"fieldName"		"URLLabel1"
		"xpos"		"24"
		"ypos"		"188"
		"wide"		"306"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_NetworkTroubleshootingTips"
		"textAlignment"		"west"
		"wrap"		"0"
		"URLtext"		"http://support.steampowered.com/cgi-bin/steampowered.cfg/php/enduser/std_adp.php?p_faqid=11"
	}

	styles {
		frame {
			bgcolor=darkestGrey
			
			render{}
			
			render_bg{
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
				
				
				3="image(x0+30, y0+50, x1, y1, graphics/dialogs/noConnection)"
			}
		}
		
		label {
			textcolor=red
			font-size=24
		}
		
		"URLLabel" {
			font-size=13
		}
	}

	layout {
		place [!$OSX]  { 
			control="frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
	
		place { 
			control="Label1,URLLabel1" 
			dir=down 
			spacing=9 
			x=30 
			y=160 
			margin-right=30
		}
		
		place { 
			control="Label3,LabelAppearOffline" 
			width=0 
			height=0 
		}

		region { 
			name=bottom 
			align=bottom 
			height=50 
			margin=12 
			margin-top=13
		}
		
		place { 
			control="RetryButton,OfflineModeButton" 
			region=bottom 
			align=left 
			height=24 
			spacing=8 
		}
		
		place { 
			control="QuitButton" 
			region=bottom 
			align=right 
			height=24 
		}
	}

}