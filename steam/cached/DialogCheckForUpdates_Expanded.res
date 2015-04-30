"steam/cached/DialogCheckForUpdates_Expanded.res" {
	styles {
		frame {
			bgcolor=darkGrey
			render_bg {
				//0="fill( x0, y1-51, x1, y1-50, darkGrey )"
				//1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				//2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
				//3="image(x0+20, y0+60, x1, y1, graphics/dialogs/updateDownloaded)"
			}
		}
	}

	layout {
		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}
		place {
			control="InfoLabel,InfoLabel2,HTML"
			y=36
			width=max
			margin-left=0
			margin-right=0
			dir=down
			spacing=10
			margin-bottom=51
		}
		place {
			control="RestartNowButton,Button1"
			region=bottom
			align=right
			height=24
			margin-top=13
			margin-right=10
			spacing=8
		}
	}
}