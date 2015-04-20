"friends/gameinvitebar.res" {
	styles {
		CGameInviteBar {
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
				0="image(x0,y0,x1,y1,graphics/chat_bar_close)"
			}
		}

			Button:hover {
				textcolor=none
				bgcolor=none
				
				render_bg {
					0="image(x0,y0,x1,y1,graphics/chat_bar_close_hover)"
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
			width=max 
			dir=down 
			spacing=3 
			margin-top=16 
			margin-right=2 
			margin-left=37 
		}

		place { 
			control="CloseButton" 
			align=right 
			margin=6 
			width=32
			height=33 
		}
		
		place { 
			control="ClickHereLabel" 
			width=0 
			height=0 
		}
	}
}
