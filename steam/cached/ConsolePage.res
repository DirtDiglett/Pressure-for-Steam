"steam/cached/consolepage.res" {
	styles {
		ConsolePage {
			bgcolor=darkestGrey
		}

		TabCatchingTextEntry {
			bgcolor=none
			textcolor=darkestGrey

			render_bg {
				1="fill( x0, y0, x1, y1, darkestGrey)"
				2="fill( x0+1, y0+1, x1-1, y1-1, White)"
			}
		}
	}

	layout {
		place {
			control="console"
			width=max
			height=max
			margin-top=4
			margin-bottom=26
		}

		place {
			control="entry"
			align=bottom
			width=max
			height=25
			margin-bottom=1
		}
	}
}