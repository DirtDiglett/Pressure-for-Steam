"steam/cached/aboutdialog.res" {
	styles {
		frame {
			minimum-width=500
			minimum-height=350

			render_bg {
				0="image(x0+1,y0+26,x1,y1, graphics/dialogs/about)"
				1="fill( x0, y1-51, x1, y1-50, darkGrey )"
				2="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				3="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}

		label {
			font-style="outerglow"
			font-outerglow-color="darkestGrey"
			font-outerglow-offset=1
			font-outerglow-filtersize=2
		}
	}

	layout {
		region { 
			name="bottom"
			align=bottom
			height=51
		}

		place {
			control="Label2,Label3,Label4,Label1,URLLabel1"
			//x=23
			align=right
			margin-right=23
			y=190
			dir=down
			spacing=4
		}

		place {
			control="Button1"
			region=bottom
			align=right
			width=90
			height=28
			margin-top=12
			margin-right=12
		}

		place {
			control="GreyStrip"
			width=0
			height=0
		}
	}
}