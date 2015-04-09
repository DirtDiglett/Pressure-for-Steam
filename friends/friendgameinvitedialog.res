"Friends/friendgameinvitedialog.res" {
	styles {
		FriendsPanel {	
			render_bg {
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}		
		
		RootMenu {
			bgcolor=none
		} 
				
		FriendsTitle  {
			inset="0 0 0 0"
		}

		FriendsTitle [$OSX] {
			bgcolor=none
			textcolor=white
			font-family=basefont
			font-size=14
			font-weight=400
			inset="0 9 0 0"
		}

			FriendsTitle:FrameFocus [$OSX] {
				bgcolor=none
				textcolor=white
				font-family=basefont
				font-size=15
font-size=14 [$LINUX]
				font-weight=400
				inset="0 9 0 0"
			}
	}
 	
 	layout {	
 		// the title bar is missing, so increase the size of the grip
		place { 
			control="frame_captiongrip"
			width=max
			height=38
			margin=2
		}
		
		place {
			control="buddylist"
			align=left
			width=max
			height=max
			margin-left=0
			margin-top=38
			margin-right=0
			margin-bottom=51
		}
		
		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}
		
		place {
			control=CloseButton
			region=bottom
			align=right
			height=24
			margin-top=14
			margin-right=14
			
		}
 	}
 	
}