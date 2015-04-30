"steam/cached/gameproperties_localfiles.res" {
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
			dir=down
			spacing=8
		}
		place {
			control=BuildIDLabel
			start=VerifyButton
			y=16
			dir=down
		}
	}
}