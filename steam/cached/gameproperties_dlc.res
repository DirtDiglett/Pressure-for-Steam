"steam/cached/gameproperties_dlc.res" {
	controls {}
	
	layout {
		place {
			control=DescriptionLabel
			x=24
			y=30
			width=max
			margin-right=23
		}
		
		place {
			control=ContentList
			start=DescriptionLabel
			dir=down
			y=8
			height=320
		}
		
		place {
			control=StoreDLCURL
			start=ContentList
			dir=down
			y=8
			width=max
			margin-right=23
		}
	}
}