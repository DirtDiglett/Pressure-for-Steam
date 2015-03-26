"steam/cached/DialogCheckForUpdates.res" {
	layout {
		place [!$OSX] {
			control="frame_minimize,frame_close"
			align=right
			margin-top=-2
			margin-right=6
			spacing=-9
		}

		place {
			control="InfoLabel,InfoLabel2"
			align=left
			y=38
			margin-left=16
			dir=down
			spacing=16
		}
		
		region {
			name="bottom"
			align=bottom
			width=max
			height=51
		}

		place {
			control=Button1
			region=bottom
			align=right
			height=24
			margin-top=14
			margin-right=14
		}
	}
}