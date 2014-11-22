"steam/cached/gameproperties_localfiles.res" {
	controls {}
	
	layout {
		place {
			control=DiskUsageLabel
			x=24
			y=30
			width=max
			margin-right=23
		}
		
		place {
			control=OpenInstallFolder,BackupButton,DeleteButton,VerifyButton
			start=DiskUsageLabel
			y=16
			width=340
			height=28
			spacing=8
			dir=down
		}
		
		place {
			control=BuildIDLabel
			start=VerifyButton
			y=16
			dir=down
		}
	}
	
}
