"steam/cached/SoundSystemSelect.res" {
	controls {}
	
	layout {
		place [!$OSX]  { 
			control="frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}
		
		place {
			control=OKButton,CancelButton
			region=bottom
			align=right
			margin-top=14
			margin-right=14
			height=24
			width=90
		}
	}
}