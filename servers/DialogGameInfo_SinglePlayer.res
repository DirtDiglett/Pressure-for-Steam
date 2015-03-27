"Servers/DialogGameInfo_SinglePlayer.res" {
	layout {
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		//Bottom
		region { 
			name=bottom 
			align=bottom 
			height=51
		}
		
		place {	
			control="Refresh,Connect,Close" 
			region=bottom 
			align=right
			height=24 
			margin-top=14
			margin-right=14
			spacing=8 
		}
	}
}