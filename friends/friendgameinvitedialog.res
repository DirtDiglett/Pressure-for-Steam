"Friends/friendgameinvitedialog.res" {
	controls {
		"FriendGameInviteDialog" {
			"ControlName"   "CFriendGameInviteDialog"
			"fieldName"   "FriendGameInviteDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "1"
			"settitlebarvisible"    "1"
			style="FriendsPanel"   
			closeonescape=1
		}		

		"BuddyList" {
			"ControlName"   "CFriendsListSubPanel"
			"fieldName"   "BuddyList"
			"AutoResize"    "3"
			"PinCorner"   "0"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "0"
			"linespacing"   "48"
			style="FriendsList"
		}
		
		"CloseButton" {
			"ControlName"   "Button"
			"fieldName"   "CloseButton"
			"xpos"    "10"
			"ypos"    "707"
			"wide"    "150"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "0"
			"paintbackground"   "1"
			"labelText"   "#Friends_InviteToGame_Close"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
	}

	styles {
		FriendsPanel {	
			render_bg {
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			
			}
		}		
		
		RootMenu {
			bgcolor="none"
		} 
				
		FriendsTitle  {
			inset="0 0 0 0"
		}

		FriendsTitle [$OSX] {
			font-family=basefont
			font-size=14
			font-weight=400
			textcolor="white"
			bgcolor="none"
			inset="0 9 0 0"
		}

			FriendsTitle:FrameFocus [$OSX] {
				font-family=basefont
				font-size=15
				font-weight=400
				textcolor="white"
				bgcolor="none"
				inset="0 9 0 0"
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
				
 		// the title bar is missing, so increase the size of the grip
		place { 
			control="frame_captiongrip" 
			margin=2 
			width=max 
			height=38 
		}
		
		place { 
			control="buddylist" 
			align=left 
			margin-left=0 
			margin-right=0 
			margin-top=38 
			margin-bottom=51 
			width=max 
			height=max 
		}
		
		region {
			name=bottom
			align=bottom
			height=51
			width=max
		}
		
		place {
			control=CloseButton
			region=bottom
			align=right
			margin-top=14
			margin-right=14
			height=24
		}
 	}
 	
}


