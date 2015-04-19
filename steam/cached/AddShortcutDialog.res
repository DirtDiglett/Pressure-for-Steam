"steam/cached/AddShortcutDialog.res" {
	styles {
		ListPanelColumnheader {
			minimum-height=22
		}

		"ListPanelColumnheader ListPanelCheckBox" {
			inset="4 6 0 0"
		}

		ListPanelCheckBox {
			inset="3 5 0 0"
		}
	}

	layout {
		region {
			name="bottom"
			align=bottom
			width=max
			height=51
		}

		place [!$OSX]  {
			control="frame_minimize,frame_close"
			align=right
			margin-top=-2
			margin-right=6
			spacing=-9
		}

		place {
			control="Label1"
			x=16
			y=30
			height=0
			width=0
		}

		place {
			control="AppList"
			x=1
			width=max
			height=max
			margin-top=25
			margin-right=1
			margin-bottom=51
		}

		place {
			control="BrowseButton,AddSelectedButton,CloseButton"
			region=bottom
			align=right 
			height=28
			margin-top=12
			margin-right=14
			spacing=8
		}	
	}
}
