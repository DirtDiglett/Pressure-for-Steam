"friends/broadcastinvitebar.res" {
	styles {
		CBroadcastInviteBar {
			bgcolor=none
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				1="gradient(x0-9,y0+1,x1,y1-1, orange, darkestOrange)"
				2="fill(x0-9,y0+1,x1,y0+2, lightestOrange)"
			}
		}

		Label {
			textcolor=white
			font-family=basefont
			font-style="outerglow"
			font-outerglow-color="130 80 0 255"
			font-outerglow-offset=1
			font-outerglow-filtersize=3
		}

		Button {
			textcolor=none
			bgcolor=none
			
			render_bg {
				0="image(x0,y0,x1,y1,graphics/game_invite_close)"
			}
		}

			Button:hover {
				render_bg {
					0="image(x0,y0,x1,y1,graphics/game_invite_close)"
				}
			}
		
			Button:active {
				render_bg {
					0="image(x0,y0,x1,y1,graphics/game_invite_close)"
				}
			}
	}
	
	layout {
		place { 
			control="InviteImage" 
			x=1 
			y=15 
			width=30 
			height=36 
		}
		
		place { 
			control="InviteLabel,GameLabel" 
			margin-left=37
			margin-top=14 
			margin-right=2
			dir=down 
			spacing=3
		}

		place { 
			control="CloseButton" 
			align=right 
			width=8
			height=9
			margin=6			 
		}
		
		place { 
			control="ClickHereLabel" 
			width=0 
			height=0 
		}
	}
}