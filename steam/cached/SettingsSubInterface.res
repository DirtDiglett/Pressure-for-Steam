"steam/cached/SettingsSubInterface.res" {
	controls {}
	
	layout {
		place {
			control="Label4"
			dir=down
			x=18 
			y=21
			margin-right=43
		}
		
		place {
			control="LanguageCombo"
			dir=down
			width=340
			height=28
			start=Label4
			y=4
		}
		
		place {
			control="TranslationLabel"
			dir=down
			start=LanguageCombo
			y=16
		}

		place {
			control="Divider1"
			dir=down
			start=TranslationLabel
			y=16
			width=max
			margin-right=43
		}

		place {
			control="Label2"
			dir=down
			start=Divider1
			y=16
		}
		
		place {
			control="FavoriteWindowCombo"
			dir=down width=340
			height=28
			start=Label2
			y=4
		}
		
		place {
			control="Label3"
			dir=down
			start=FavoriteWindowCombo
			dir=down
			y=16
		}
		
		place {
			control="SkinCombo"
			dir=down
			width=340
			height=28
			start=Label3
			y=4
		}
		
		place {
			controls=AutoLaunchCheck,BigPictureModeCheck,DWriteCheck,UrlBarCheck
			dir=down
			start=SkinCombo
			y=16
			spacing=-4
		}
		
		place {
			control="Divider2"
			dir=down
			start=UrlBarCheck
			y=16
			width=max
			margin-right=43
		}

		place {
			controls=NotifyAvailableGamesCheck
			dir=down
			width=max
			start=Divider2
			margin-right=43
			y=16
		}
		
		place {
			control="SetJumpListOptionsButton"
			dir=down
			width=340
			height=28
			start=NotifyAvailableGamesCheck
			y=8
		}

		place {
			control="Label1"
			height=0
			width=0
		}
	}
}
