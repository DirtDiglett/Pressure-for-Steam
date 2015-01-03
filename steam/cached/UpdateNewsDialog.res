"steam/cached/UpdateNewsDialog.res" {
	"ProductMarketingDialog" {
		"ControlName"		"CProductMarketingDialog"
		"fieldName"		"ProductMarketingDialog"
		"xpos"		"610"
		"ypos"		"519"
		"wide"		"460"
		"tall"		"844"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"settitlebarvisible"		"1"
		"title"		"#Steam_UpdateNewsMultiple_Title"
	}
	
	"HTMLSellPage" {
		"ControlName"		"HTML"
		"fieldName"		"HTMLSellPage"
		"xpos"		"8"
		"ypos"		"48"
		"wide"		"460"
		"tall"		"731"
		"AutoResize"		"3"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	
	"NextButton" {
		"ControlName"		"Button"
		"fieldName"		"NextButton"
		"xpos"		"513"
		"ypos"		"786"
		"wide"		"84"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"labelText"		"#vgui_next"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"1"
		"selected"		"0"
	}
	
	"PrevButton" {
		"ControlName"		"Button"
		"fieldName"		"PrevButton"
		"xpos"		"419"
		"ypos"		"786"
		"wide"		"84"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"0"
		"tabPosition"		"3"
		"paintbackground"		"1"
		"labelText"		"#vgui_back"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
		"selected"		"0"
	}
	
	"BgRect" {
		"ControlName"		"ImagePanel"
		"fieldName"		"BgRect"
		"xpos"		"12"
		"ypos"		"52"
		"zpos"		"-1"
		"wide"		"624"
		"tall"		"536"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"appearance"		"PropertySheetBorder"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	
	"CloseButton" {
		"ControlName"		"Button"
		"fieldName"		"CloseButton"
		"xpos"		"608"
		"ypos"		"786"
		"wide"		"84"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"3"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"2"
		"paintbackground"		"1"
		"labelText"		"#vgui_close"
		"textAlignment"		"west"
		"wrap"		"0"
		"Command"		"Close"
		"Default"		"0"
	}


	styles {
		CProductMarketingDialog {
			render_bg {
				0="fill( x0, y0, x1, y1, lightGreyEnd )"
				1="fill( x0, y0, x1, y0+54, grey50 )"
				2="fill( x0, y0, x1, y0+53, darkestGrey )"
				3="fill( x0, y1-51, x1, y1-50, darkestGrey )"
				4="fill( x0+1, y1-50, x1-1, y1-49, greyHighlight )"
				5="gradient( x0+1, y1-49, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}
	}
	
	layout{
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		place { 
			control="HTMLSellPage" 
			margin-top=26 
			margin-bottom=51 
			width=max 
			height=max 
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
			height=24
			width=92 
			spacing=8
			margin-top=14
			margin-right=14
		}
	}
}

	