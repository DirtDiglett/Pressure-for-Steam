"friends/ClanEventDialog.res" {
	controls {
		"ClanEventDialog" {
			"ControlName"		"SimpleDialog"
			"fieldName"		"ClanEventDialog"
			"xpos"		"820"
			"ypos"		"506"
			"wide"		"280"
			"tall"		"140"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"settitlebarvisible"		"1"
			"title"		"#Friends_GroupEvent_Title"
		}
		
		"ImageAvatar" {
			"ControlName"		"ImagePanel"
			"fieldName"		"ImageAvatar"
			"xpos"		"16"
			"ypos"		"34"
			"wide"		"42"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"gradientVertical"		"0"
			"scaleImage"		"0"
		}
		
		"ViewEventButton" {
			"ControlName"		"Button"
			"fieldName"		"ViewEventButton"
			"xpos"		"16"
			"ypos"		"98"
			"wide"		"136"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Friends_GroupEvent_View"
			"textAlignment"		"west"
			"wrap"		"0"
			"Default"		"0"
		}
		
		"CloseButton" {
			"ControlName"		"Button"
			"fieldName"		"CloseButton"
			"xpos"		"161"
			"ypos"		"98"
			"wide"		"92"
			"tall"		"24"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#vgui_Close"
			"textAlignment"		"west"
			"wrap"		"0"
			"Default"		"0"
		}
		
		"LabelGroup" {
			"ControlName"		"Label"
			"fieldName"		"LabelGroup"
			"xpos"		"64"
			"ypos"		"34"
			"wide"		"172"
			"tall"		"14"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"%group%"
			"textAlignment"		"north-west"
			"font"		"FriendsSmall"
			"wrap"		"0"
		}
		
		"LabelInfo" {
			"ControlName"		"Label"
			"fieldName"		"LabelInfo"
			"xpos"		"64"
			"ypos"		"48"
			"wide"		"172"
			"tall"		"14"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"#Friends_GroupEvent_NowStarting"
			"textAlignment"		"north-west"
			"font"		"FriendsSmall"
			"wrap"		"0"
		}
		
		"LabelEventTitle" {
			"ControlName"		"Label"
			"fieldName"		"LabelEventTitle"
			"xpos"		"64"
			"ypos"		"62"
			"wide"		"172"
			"tall"		"30"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"%event%"
			"textAlignment"		"north-west"
			"font"		"FriendsSmall"
			"wrap"		"1"
		}
	}
	
	styles {
		frame {
			minimum-height=175
			minimum-width=320
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
			control="ImageAvatar"
			x=32
			y=50
		}
		
		place {
			control="LabelGroup,LabelInfo,LabelEventTitle"
			x=90
			y=46
			dir=down
		}
		
		place {
			control="LabelEventTitle"
			start=LabelInfo
			dir=down
			height=33
			width=max
			margin-right=8
		}
		
		
		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}
		
		place {
			control="ViewEventButton,CloseButton"
			region=bottom
			width=91
			height=24
			dir=right
			align=right
			margin-top=14
			margin-right=14
			spacing=8
		}
		
	}
}
