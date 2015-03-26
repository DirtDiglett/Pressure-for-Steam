"steam/cached/SettingsSubOverlay.res" {
	layout {
		place {
			control=Label2,EnableOverlayCheck
			x=8
			y=60
			width=max
			dir=down
			spacing=8
		}

		place {
			start=EnableOverlayCheck
			control=Label1,HotKeySelector
			y=8
			width=180
			dir=down
			spacing=8
		}

		place {
			control=ScreenshotLabel,ScreenshotHotKeySelector,ScreenshotNotifyCheck,ScreenshotPlaySoundCheck,ScreenshotSaveUncompressedCheck
			start=HotKeySelector
			y=36
			width=300
			margin-top=24
			dir=down
			spacing=8
		}

		place {
			control=SetScreenshotFolderButton
			start=ScreenshotSaveUncompressedCheck
			y=8
			height=28
			dir=down
		}

		place {
			control=OverlayHomePageLabel,OverlayHomePage
			start=HotKeySelector
			x=324
			y=36
			width=180
			margin-top=24
			dir=down
			spacing=8
		}

		place {
			control=ScreenshotActionLabel
			width=0
			height=0
		}
	}
}