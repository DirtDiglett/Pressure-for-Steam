"Public/UseOfflineMode.res" {
	styles {
		frame {
			bgcolor=darkestGrey

			render{}
			render_bg{
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
				3="image(x0+30, y0+50, x1, y1, graphics/dialogs/noConnection)"
			}
		}

		label {
			textcolor=red
			font-size=24
		}

		"URLLabel" {
			font-size=15
font-size=14 [$LINUX]
		}
	}
	layout {
		place {
			control="Label1,URLLabel1"
			x=30
			y=160
			margin-right=30
			dir=down
			spacing=9
		}

		place {
			control="Label3,LabelAppearOffline"
			width=0
			height=0
		}
		region {
			name=bottom
			align=bottom
			height=50
			margin=12
			margin-top=13
		}

		place {
			control="RetryButton,OfflineModeButton"
			region=bottom
			align=left
			height=24
			spacing=8
		}

		place {
			control="QuitButton"
			region=bottom
			align=right
			height=24
		}
	}
}