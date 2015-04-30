"friends/broadcastapprovebar.res" {
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
			bgcolor=none
			textcolor=none
			render_bg {
				0="image(x0,y0,x1,y1,graphics/chat_bar_close)"
			}
		}
			Button:hover {
				render_bg {
					0="image(x0,y0,x1,y1,graphics/chat_bar_close_hover)"
				}
			}
		URLLabel {
			textcolor=lightestBlue
			font-family=basefont
			font-style=normal
		}
			URLLabel:hover {
				textcolor=lightestBlue
				font-style=underline
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
			margin-left=37
			margin-top=15
			margin-right=2
			dir=down
			spacing=3
		}
		place {
			control="OrLabel,IgnoreLabel"
			start=ApproveLabel
			margin-left=4
			margin-top=0
			margin-right=0
			dir=right
			spacing=4
		}
		place {
			control="CloseButton"
			align=right
			width=32
			height=33
			margin-right=6
			margin-top=16
		}
	}
}
