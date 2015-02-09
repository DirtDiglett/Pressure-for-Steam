"friends/tradeinvitebar.res" {
	controls {
		"InviteLabel" {
			ControlName="Label"
			labeltext="#friends_trade_invite"
			mouseinputenabled=0
			group="recv"
		}
		
		"ClickHereLabel" {
			ControlName="Label"
			labeltext="#friends_trade_invite_action"
			mouseinputenabled=0
			group="recv"
		}

		"InviteSentLabel" {
			ControlName="Label"
			labeltext="#friends_trade_invite_sent"
			mouseinputenabled=0
			group="send"
		}
		
		"WaitingForResponseLabel" {
			ControlName="Label"
			labeltext="#friends_trade_invite_sent_waiting"
			mouseinputenabled=0
			group="send"
		}
		
		"InviteImage" {
			ControlName="ImagePanel"
			image="resource/icon_trade_request"
			mouseinputenabled=0
			group="recv"
		}
		
		"InviteSentImage" {
			ControlName="ImagePanel"
			image="resource/icon_trade_request"
			mouseinputenabled=0
			group="send"
		}
				
		"CloseButton" {
			ControlName="Button"
			labeltext="X"
			command="Close"
		}
	}
	
	styles {
		CTradeInviteBar {
			bgcolor=none
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				1="gradient(x0-9,y0+1,x1,y1-1, green, darkestGreen)"
				2="fill(x0-9,y0+1,x1,y0+2, lightestGreen)"
			}
		}

		Label {
			textcolor=black90
			font-family=semibold
		}

		Button {
			textcolor=none
			bgcolor=none
			
			render_bg {
				0="image(x0,y0,x1,y1,graphics/trade_invite_close)"
			}
		}

			Button:hover {
				render_bg {
					0="image(x0,y0,x1,y1,graphics/trade_invite_close)"
				}
			}
		
			Button:active {
				render_bg {
					0="image(x0,y0,x1,y1,graphics/trade_invite_close)"
				}
			}
	}
	
	layout {
		place { 
			control="InviteImage,InviteSentImage" 
			x=1 
			y=15 
			width=27 
			height=36 
		}
		
		place { 
			control="InviteLabel,ClickHereLabel,InviteSentLabel,WaitingForResponseLabel" 
			width=max 
			dir=down 
			spacing=3 
			margin-top=14 
			margin-right=2 
			margin-left=37 
		}
		
		place { 
			control="CloseButton" 
			align=right 
			margin=6 
			width=8 
			height=9 
		}
	}
}
