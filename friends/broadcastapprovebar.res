"friends/broadcastapprovebar.res" {
	controls {
		"BABar" {
			ControlName="BABar"
		}
		
		"InviteLabel" {	
			ControlName="Label"
			labeltext="#Friends_BroadcastApprove"
			mouseinputenabled=0
		}
		
		"GameLabel" {
			ControlName="Label"
			labeltext="%game%"
			mouseinputenabled=0
		}
		
		"ApproveLabel" {
			ControlName="URLLabel"
			labeltext="#Friends_BroadcastApprove_Approve"
		}
		
		"OrLabel" {
			ControlName="Label"
			labeltext="#Friends_BroadcastApprove_Or"
		}
		
		"IgnoreLabel" {
			ControlName="URLLabel"
			labeltext="#Friends_BroadcastApprove_Ignore"
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
		CBroadcastApproveBar {
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

		URLLabel {
			textcolor=white
			font-family=basefont
			
			font-style="outerglow"
			font-outerglow-color="130 80 0 255"
			font-outerglow-offset=1
			font-outerglow-filtersize=3
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
			control="GameLabel"
			width=0 
			height=0 
		}
		place { 
			control="InviteLabel,ApproveLabel" 
			dir=down 
			spacing=3 
			margin-top=18 
			margin-right=2 
			margin-left=37 
		}
		
		place {
			control="OrLabel,IgnoreLabel"
			dir=right
			spacing=4
			start=ApproveLabel
			margin-left=4
			margin-top=0
			margin-right=0
		}

		place { 
			control="CloseButton" 
			align=right 
			margin=10 
			width=8 
			height=9 
		}
	}
}
