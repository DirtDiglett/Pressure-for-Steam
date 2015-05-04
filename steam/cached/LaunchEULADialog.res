"steam/cached/LaunchEULADialog.res" {
	styles {
		CShowEULADialog {
			render_bg {
				1="fill( x0, y1-51, x1, y1-50, darkGrey )"
				2="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				3="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}
	}
	layout {
		region {
			name="bottom"
			align=bottom
			height=51
		}
		place {
			control=Label1
			width=0
			height=0
		}

		place {
			control=HTML
			y=26
			width=max
			height=max
			dir=down
			margin-bottom=51
		}
		place {
			control=Label2
			start=HTML
			y=8
		}

		place {
			control="AcceptButton,DeclineButton"
			region=bottom
			align=right
			height=28
			spacing=8
			margin-top=12
			margin-right=12
		}
	}
}
