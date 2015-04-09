"Servers\DialogGameInfo.res" {
	styles {
		CDialogGameInfo {
			minimum-width=620
			minimum-height=408
		}
		
		LabelDull {
			textcolor=white
			font-size=20
			font-family=headerfont
		}
		
		label {
			textcolor=lightestGrey
			font-size=16
font-size=15
font-size=14 [$LINUX]
		}
		
		textEntry {
			textcolor=lightestGrey
			font-size=16
font-size=15
font-size=14 [$LINUX]
			inset-left=0
		
			render {}
			render_bg{}
		}
	}	

	layout {
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		region {
			name=left
			x=8
			width=max
			height=max
			margin-top=38
			margin-right=416
			margin-bottom=52
		}
		
		region {
			name=right
			align=right
			width=400
			height=max
			margin-top=26
			margin-bottom=52
		}

		// Server Name
		place { 
			control=ServerLabel
			region=left
			margin-left=0
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=ServerText
			region=left
			start=ServerLabel
			width=max
			margin-top=-4
			dir=down
		}
		
		// SERVER IP
		place {
			control=ServerIPLabel
			region=left 
			start=ServerText
			dir=down
			spacing=0
			margin-top=16 
			margin-left=0 
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=ServerIPText
			region=left
			start=ServerIPLabel
			width=max
			margin-left=-2
			margin-top=-8
			dir=down
		}

		// GAME
		place {
			control=GameLabel
			region=left
			start=ServerIPText
			margin-left=0
			margin-top=16
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=GameText
			region=left
			start=GameLabel
			width=max
			margin-top=-4
			dir=down
		}

		// MAP
		place {
			control=MapLabel
			region=left
			start=GameText
			margin-left=0
			margin-top=16
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=MapText
			region=left
			start=MapLabel
			width=max
			margin-top=-4
			dir=down
		}
		
		// PLAYERS
		place { 
			control=PlayersLabel
			region=left
			start=MapText
			margin-left=0
			margin-top=16
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=PlayersText
			region=left
			start=PlayersLabel
			width=max
			margin-top=-4
			dir=down
		}

		// VAC
		place {
			control=Label1
			region=left
			start=PlayersText
			margin-left=0
			margin-top=16
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=SecureText
			region=left
			start=label1
			width=max
			margin-top=-4
			dir=down
		}
		
		// Lag
		place { 
			control=PingLabel
			region=left
			start=SecureText
			margin-left=0
			margin-top=16
			dir=down
			spacing=0
		}

		// We seperate the value from the header to avoid a weird width-bug that cuts off text
		place {
			control=PingText
			region=left
			start=PingLabel
			width=max
			margin-top=-4
			dir=down
		}
		
		place {
			region=right
			control="PlayerList"
			align=right
			width=max
			height=max
			margin-bottom=51
		}
		
		place { 
			control="AutoRetryAlert,AutoRetryJoin" 
			region=right
			start=PlayerList
			width=max
			height=24
			dir=down
		}
		
		place {
			control=InfoLabel
			region="bottom"
			x=16
			y=16
			width=310
			align=left
			dir=down
		}
		
		//Bottom
		region {
			name=bottom
			align=bottom
			height=51
		}
		
		place {	
			control="AutoRetry,Connect,Refresh,Close"
			region=bottom
			align=right
			height=28
			margin-top=13
			margin-right=13
			spacing=8
		}
	}
}