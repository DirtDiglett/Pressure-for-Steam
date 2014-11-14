"steam/cached/contentmanagmentdialog.res" {
	
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
			align="bottom"
			width=max
			height=51
		}
		
		place {
			contol="AddFolderButton, RemoveFolderButton"
			region=bottom
			align=left
			height=24
			margin-top=16
			margin-left=16
		}
		
		place {
			control=CloseButton
			region=bottom
			align=right
			height=24
			margin-top=14
			margin-right=14
		}
	}
}
