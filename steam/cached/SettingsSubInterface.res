"steam/cached/SettingsSubInterface.res" {
	styles {}

	layout {
		place {
			control="Label4"
			x=18 
			y=21
			margin-right=43
			dir=down
		}

		place {
			control="LanguageCombo"
			start=Label4
			y=4
			width=340
			height=28
			dir=down
		}

		place {
			control="TranslationLabel"
			start=LanguageCombo
			y=16
			dir=down
		}

		place {
			control="Divider1"
			start=TranslationLabel
			y=16
			width=max
			margin-right=43
			dir=down
		}

		place {
			control="Label2"
			start=Divider1
			y=16
			dir=down
		}

		place {
			control="FavoriteWindowCombo"
			start=Label2
			y=4
			width=340
			height=28
			dir=down
		}

		place {
			control="Label3"
			start=FavoriteWindowCombo
			y=16
			dir=down
		}

		place {
			control="SkinCombo"
			start=Label3
			y=4
			width=340
			height=28
			dir=down
		}

		place {
			controls=AutoLaunchCheck,BigPictureModeCheck,DWriteCheck,UrlBarCheck
			start=SkinCombo
			y=10
			dir=down
			spacing=-4
		}

		// Remove option for linux
		place {
			control=H264HWAccelCheck
			width=0
			height=0
		}

		// Readd button for Windows
		place [$WINDOWS] {
			controls=H264HWAccelCheck
			start=UrlBarCheck
			y=-4
			dir=down
		}
 
		// Start divider at UrlBarCheck for Linux
		place {
			control="Divider2"
			start=UrlBarCheck
			y=10
			width=max
			margin-right=43
			dir=down
		}

		// Start divider at H264HWAccelCheck for Windows
		place [$WINDOWS] {
			control="Divider2"
			start=H264HWAccelCheck
			y=10
			width=max
			margin-right=43
			dir=down
		}

		place {
			controls=NotifyAvailableGamesCheck
			start=Divider2
			y=16
			width=max
			margin-right=43
			dir=down
		}

		place {
			control="SetJumpListOptionsButton"
			start=NotifyAvailableGamesCheck
			y=8
			width=340
			height=28
			dir=down
		}

		place {
			control="Label1"
			width=0
			height=0
		}
	}
}