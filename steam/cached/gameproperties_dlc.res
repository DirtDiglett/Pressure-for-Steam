"steam/cached/gameproperties_dlc.res" {
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
			y=8
			height=320
			dir=down
		}
		place {
			control=StoreDLCURL
			start=ContentList
			y=8
			width=max
			margin-right=23
			dir=down
		}
	}
}