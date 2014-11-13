"friends/gameinvitebar.res" {
	controls {
		"GameInviteBar" {
			ControlName="GameInviteBar"
		}
		
		"InviteLabel" {	
			ControlName="Label"
			labeltext="#friends_game_invite"
			mouseinputenabled=0
		}
		
		"GameLabel" {
			ControlName="Label"
			labeltext="%game%"
			mouseinputenabled=0
		}
		
		"ClickHereLabel" {
			ControlName="Label"
			labeltext="#friends_game_invite_action"
			mouseinputenabled=0
		}
		
		"InviteImage" {
			ControlName="ImagePanel"
			image="resource/invite"
			mouseinputenabled=0
		}
		
		"CloseButton" {	
			ControlName="Button"
			labeltext="X"
			command="Close"
		}
	}
	
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
			x=18 
			y=15 
			width=30 
			height=36 
		}
		
		place { 
			control="InviteLabel,GameLabel" 
			width=max 
			dir=down 
			spacing=3 
			margin-top=18 
			margin-right=2 
			margin-left=51 
		}

		place { 
			control="CloseButton" 
			align=right 
			margin=10 
			width=8 
			height=9 
		}
		
		place { 
			control="ClickHereLabel" 
			width=0 
			height=0 
		}
	}
}
