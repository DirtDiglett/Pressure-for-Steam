"Steam/Cached/CDKeyLaunchDialog.res" {
	styles {
		Button {
		//	minimum-width=92
		}

		frame {
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
			control="ReasonLabel"
			x=8
			y=36
			margin-right=8
			width=max
		}

		place {
			control="KeyList"
			width=max
			height=max
			y=98
			margin=1
			margin-top=0
			margin-bottom=51
		}
		
		place {
			control="DontShowAgainCheck"
			region=bottom
			align=left
			height=28
		}

		place {
			control="CopyButton,CloseButton"
			end-right=LaunchButton
			region=bottom
			spacing=8
			align=right
			height=28
			margin-right=12
			margin-top=12
		}

		place {
			control="LaunchButton"
			x=8
			region=bottom
			align=right
			height=28
			width=92
			margin-right=12
		}
	}
}
