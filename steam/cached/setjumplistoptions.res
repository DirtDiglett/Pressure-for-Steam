"steam/cached/SetJumplistOptions.res" {
	layout {
		place [!$OSX]  { 
			control="frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		region {
			name="bottom"
			align=bottom
			height=51
			width=max
		}
		
		place {
			control="OkButton,CancelButton"
			region=bottom
			align=right
			margin-right=14
			margin-top=14
			spacing=8
			width=90
		}

		place {
			control="Divider1,Divider2"
			height=0
			width=0
		}
	}
}