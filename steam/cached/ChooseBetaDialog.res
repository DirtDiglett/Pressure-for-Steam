"Steam/cached/ChooseBetaDialog.res" {
	layout {
		place [!$OSX]  {
			control="frame_minimize,frame_close"
			align=right
			margin-top=-2
			margin-right=6
			spacing=-9
		}

		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}

		place {
			control="OKButton,CancelButton"
			region=bottom
			align=right
			width=90
			height=28
			margin-top=12
			margin-right=14
			spacing=8
		}
	}
}