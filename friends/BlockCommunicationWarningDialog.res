"friends/BlockCommunicationWarningDialog.res" {
	styles {
		Frame {
			minimum-width=480
			
			render_bg {
				0="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				1="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				2="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
				3="image(x0+23,y0+85,x1,y1, resource/icon_warning)"
			}
		}
	}
	
	layout {
		place { 
			control="Label3,DontShowAgain" 
			x=80
			y=38
			width=max
			margin=16
			dir=down
			spacing=4
		}

		region { 
			name=bottom 
			align=bottom 
			height=51
			width=max
		}
		
		place {	
			control="ContinueButton,CancelButton" 
			region=bottom 
			align=right 
			height=24
			margin-top=13
			margin-right=13
			spacing=8 
		}
	}
}