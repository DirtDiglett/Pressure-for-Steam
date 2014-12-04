"friends/AchievementNotification.res" {
	controls {
		"AchievementNotification" {
			"ControlName"		"CAchievmentNotification"
			"fieldName"		"AchievementNotification"
			"xpos"		"0"
			"ypos"		"0"
			"wide"		"240"
			"tall"		"94"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			style="notification"
		}
		
		"DarkenedRegion" {
			"controlname"	"imagepanel"
			"fieldname"		"DarkenedRegion"
			"xpos"		"1"
			"ypos"		"74"
			"wide"		"238"
			"tall"		"23"
			"fillcolor"	"ClientBG"
			"zpos"		"-1"
		}
		
		"AchievementIcon" {
			"ControlName"		"ImagePanel"
			"fieldName"		"AchievementIcon"
			"xpos"		"14"
			"ypos"		"14"
			"wide"		"64"
			"tall"		"64"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"gradientVertical"		"0"
			"scaleImage"		"0"
		}
		
		"IconBorder" {
			"ControlName"		"Panel"
			"fieldName"		"IconBorder"
			"xpos"		"13"
			"ypos"		"13"
			"zpos"		"0"
			"wide"		"66"
			"tall"		"66"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"0"
		}
		
		"LabelTitle" {
			"ControlName"		"Label"
			"fieldName"		"LabelTitle"
			"xpos"		"88"
			"ypos"		"25"
			"wide"		"144"
			"tall"		"28"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"%title%"
			"textAlignment"		"center"
			"wrap"		"1"
			"font"		FriendsSmall
		}
		
		"LabelDescription" {
			"ControlName"		"Label"
			"fieldName"		"LabelText"
			"xpos"		"88"
			"ypos"		"53"
			"wide"		"144"
			"tall"		"28"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"paintbackground"		"1"
			"labelText"		"%text%"
			"textAlignment"		"north-west"
			"wrap"		"1"
			"font"		FriendsSmall
		}
	}
	
	styles {
		Notification [!$OSX] {
			font-family=basefont
			font-size=15
			font-weight=400
			
			bgcolor=none
			
			render {}
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				
				1="gradient(x0+1,y0+2,x1-1,y1,grey,lightGreyEnd)"
				
				// Single pixel corner fills
				2="fill(x0+1,y0+1,x0+2,y0+2, darkGreyEnd)" // Top Left
				3="fill(x0+1,y1-1,x0+2,y1, darkGreyEnd)" // Bottom Left
				4="fill(x1-2,y0+1,x1-1,y0+2, darkGreyEnd)" // Top Right
				5="fill(x1-2,y1-1,x1-1,y1, darkGreyEnd)" // Bottom Right
				
				// Anti-aliased grey highlight
				6="fill(x0+1,y0+2,x0+2,y0+3, lighterGrey)" // Top Bottom Left
				7="fill(x0+2,y0+1,x0+3,y0+2, lighterGrey)" // Top Top Left
				8="fill(x1-3, y0+1, x1-2, y0+2, lighterGrey)" // Top Top Right
				9="fill(x1-2,y0+2,x1-1,y0+3, lighterGrey)" // Top Bottom Right
				
				// Grey Highlight
				10="fill(x0+3,y0+1,x1-3,y0+2, greyHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/achievement)"
			}
	    }
 
		Notification [$OSX] {
			font-family=basefont
			font-size=15
			font-weight=400
			
			bgcolor=none
			
			render {}
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				
				1="gradient(x0+1,y0+1,x1-1,y1-1,grey,lightGreyEnd)"
				
				// Single pixel corner fills
				2="fill(x0+1,y0,x0+2,y0+1, darkGreyEnd)" // Top Left
				3="fill(x0+1,y1-2,x0+2,y1-1, darkGreyEnd)" // Bottom Left
				4="fill(x1-2,y0,x1-1,y0+1, darkGreyEnd)" // Top Right
				5="fill(x1-2,y1-2,x1-1,y1-1, darkGreyEnd)" // Bottom Right
				
				// Anti-aliased grey highlight
				6="fill(x0+1,y0+1,x0+2,y0+2, lighterGrey)" // Top Bottom Left
				7="fill(x0+2,y0,x0+3,y0+1, lighterGrey)" // Top Top Left
				8="fill(x1-3, y0, x1-2, y0+1, lighterGrey)" // Top Top Right
				9="fill(x1-2,y0+1,x1-1,y0+2, lighterGrey)" // Top Bottom Right
				
				// Grey Highlight
				10="fill(x0+3,y0,x1-3,y0+1, greyHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/achievement)"
			}
	    }
	}
	
	layout {
		place {
			control="DarkenedRegion"
			width=0
			height=0
		}
	}
}
