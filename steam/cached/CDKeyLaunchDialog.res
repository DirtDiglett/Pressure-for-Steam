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
			x=16
			y=36
			margin-right=16
			width=max
		}
		place {
			control="KeyList"
			width=max
			height=max
			x=-16
			y=16
			start=ReasonLabel
			dir=down
			margin=1
			margin-top=0
			margin-bottom=51
		}

		place {
			control="DontShowAgainCheck"
			region=bottom
			align=left
			height=28
			margin-top=13
			margin-left=10
		}
		place {
			control="CopyButton,CloseButton"
			region=bottom
			spacing=8
			align=right
			height=28
			margin-right=12
			margin-top=12
		}
		place {
			control="LaunchButton"
			end-right=CopyButton
			region=bottom
			align=right
			height=28
			width=92
			margin-right=8
			margin-top=12
		}
	}
}
