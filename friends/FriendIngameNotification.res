"friends/FriendInGameNotification.res" {
	styles {
		Notification [$OSX] {
			bgcolor=none
			font-family=basefont
			font-size=15
font-size=14 [$LINUX]
			font-weight=400
			
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
				6="fill(x0+2,y0,x0+3,y0+1, lighterGrey)" // Top Left - Highest
				7="fill(x0+1,y0+1,x0+2,y0+2, lighterGrey)" // Top Left - Lowest
				8="fill(x1-3, y0, x1-2, y0+1, lighterGrey)" // Top Top Right
				9="fill(x1-2,y0+1,x1-1,y0+2, lighterGrey)" // Top Bottom Right
				
				// Grey Highlight
				10="fill(x0+3,y0,x1-3,y0+1, greyHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/game)"
			}
		}

		Notification [!$OSX] {
			bgcolor=none
			font-family=basefont
			font-size=15
font-size=14 [$LINUX]
			font-weight=400

			render {}
			render_bg {
				0="fill(x0,y0,x1,y1, notificationDarkestGrey)"
				
				1="gradient(x0+1,y0+2,x1-1,y1,notificationGrey,notificationLightGreyEnd)"
				
				// Single pixel corner fills
				2="fill(x0+1,y0+1,x0+2,y0+2, notificationDarkGreyEnd)" // Top Left
				3="fill(x0+1,y1-1,x0+2,y1, notificationDarkGreyEnd)" // Bottom Left
				4="fill(x1-2,y0+1,x1-1,y0+2, notificationDarkGreyEnd)" // Top Right
				5="fill(x1-2,y1-1,x1-1,y1, notificationDarkGreyEnd)" // Bottom Right
				
				// Anti-aliased grey highlight
				6="fill(x0+2,y0+1,x0+3,y0+2, notificationLighterGrey)" // Top Left - Highest
				7="fill(x0+1,y0+2,x0+2,y0+3, notificationLighterGrey)" // Top Left - Lowest
				8="fill(x1-3, y0+1, x1-2, y0+2, notificationLighterGrey)" // Top Right - Highest
				9="fill(x1-2,y0+2,x1-1,y0+3, notificationLighterGrey)" // Top Right - Lowest
				
				// Single Pixel Highlight
				10="fill(x0+3,y0+1,x1-3,y0+2, notificationHighlight)"
				
				11="image(x1-110,y0,x1,y1, graphics/notifications/game)"
			}
		}
	}
	
	layout {
		place { 
			control="ImageAvatar" 
			x=16 
			y=16 
		}
		
		place { 
			control="LabelSender,LabelInfo,LabelGame" 
			x=70
			width=160
			margin-top=15
			margin-bottom=0
			dir=down
		}
	}
}