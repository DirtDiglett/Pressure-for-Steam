"friends/tradeinvitebar.res" {
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
			bgcolor=none
			textcolor=none
						
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
	}
}