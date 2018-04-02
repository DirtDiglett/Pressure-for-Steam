"steam/cached/SettingsSubInterface.res" {
	styles {}
	layout {
		place {
			control="Label4"
			x=18
			y=10
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
			y=8
			dir=down
		}
		place {
			control="Divider1"
			start="TranslationLabel"
			width=max
			y=10
			dir=down
			margin-right=43
		}
		place {
			control="Label1"
			start="Divider1"
			width=max
			margin-right=43
			y=10
			dir=down
		}
		place {
			control="FavoriteWindowCombo"
			start=Label1
			y=4
			width=340
			dir=down
		}
		place {
			control="Divider3"
			start=FavoriteWindowCombo
			width=max
			y=10
			dir=down
			margin-right=43
		}
		place {
			control="Label3"
			start=Divider3
			width=500
			y=10
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
			controls=DPIScalingCheck,AutoLaunchCheck,BigPictureModeCheck,DWriteCheck,UrlBarCheck
			start=SkinCombo
			y=10
			dir=down
			spacing=-5
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
			y=-5
			dir=down
		}

		// Start divider at UrlBarCheck for Linux
		place {
			control="Divider2"
			start=UrlBarCheck
			y=5
			width=max
			margin-right=43
			dir=down
		}
		// Start divider at H264HWAccelCheck for Windows
		place [$WINDOWS] {
			control="Divider2"
			start=H264HWAccelCheck
			y=5
			width=max
			margin-right=43
			dir=down
		}
		place {
			controls=NotifyAvailableGamesCheck
			start=Divider2
			y=10
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
	}
}