"steam/cached/UpdateNewsDialog.res" {
	styles {
		CProductMarketingDialog {
			render_bg {
				0="fill( x0, y0, x1, y1, lightGreyEnd )"
				1="fill( x0, y0, x1, y0+54, grey50 )"
				2="fill( x0, y0, x1, y0+53, darkGrey )"
				3="fill( x0, y1-51, x1, y1-50, darkGrey )"
				4="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				5="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}
	}

	layout {
		place {
			control="HTMLSellPage"
			width=max
			height=max
			margin-top=26
			margin-bottom=51
		}

		region {
			name="bottom"
			align=bottom
			height=51
		}

		place {
			control="PrevButton,NextButton,CloseButton"
			region=bottom
			align=right
			width=92
			height=24
			margin-top=14
			margin-right=14
			spacing=8
		}
	}
}