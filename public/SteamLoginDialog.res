"Public/SteamLoginDialog.res" {
	styles {
		CSteamLoginDialog {
			minimum-height=440
			render {}
			render_bg {
				-1="image(x0,y0,x1,y1, graphics/login_bg)"
				0="fill(x0,y0,x1,y0+1, white10)"
				1="fill(x0,y0,x0+1,y1, white10)"
				2="fill(x1-1,y0,x1,y1, white10)"
				3="fill(x0,y1-1,x1,y1, white10)"
				4="fill(x0,y1-100,x1,y1, black65)"
			}
		}
		// Hides the username and password label, because they can't be moved
		"CSteamLoginDialog Label" {
			textcolor=none
			selectedtextcolor=none
		}
		FrameTitle {
			textcolor=none
			render_bg {}
		}
		"loginprocess_style_head" {
			font-size=14
			font-style=italic
		}
		"loginprocess_style_body" {
			font-size=18
			font-style=regular
			font-weight=1000
		}
		divider {
			render {}
			render_bg {}
		}
   TextEntry {
      font-family=basefont
      font-size=15
	font-size=14 [$LINUX]
      textcolor  = "darkestGrey"
      bgcolor  = "none"
      selectedtextcolor  = "white"
      selectedbgcolor  = "blue"
      shadowtextcolor  = "darkestGrey"  // this is the cursor color
      inset-left=4
      inset-top=0
     
      render_bg {
      	0="fill(x0+2,y0+2,x1-2,y1-2, white)"
	  	// TOP
	  	1="image(x0,y0,x0+3,y0+4, graphics/textEntry/login/topLeft)"
	  	2="image_scale(x0+3,y0,x1-3,y0+4, graphics/textEntry/login/topMiddle)"
	  	3="image(x1-3,y0,x1,y0+4, graphics/textEntry/login/topRight)"
	  
	  	// LEFT
	  	4="image_scale(x0,y0+4,x0+3,y1-3, graphics/textEntry/login/leftMiddle)"
	  
	  	// RIGHT
	  	5="image_scale(x1-3,y0+4,x1,y1-3, graphics/textEntry/login/rightMiddle)"
	  
	  	// BOTTOM
      	6="image(x0,y1-3,x0+3,y1+1, graphics/textEntry/login/bottomLeft)"
      	7="image_scale(x0+3,y1-2,x1-3,y1+1, graphics/textEntry/login/bottomMiddle)"
      	8="image(x1-3,y1-3,x1,y1+1, graphics/textEntry/login/bottomRight)"
      
      }
        
    }

		FrameCloseButton {
			padding-top=3px
			image=graphics/window_controls/windows/login/close
		}
			FrameCloseButton:hover {
				padding-top=3px
				image=graphics/window_controls/windows/login/close_hover
			}
		FrameMinimizeButton {
			padding-top=3px
			image=graphics/window_controls/windows/login/minimize
		}
	
			FrameMinimizeButton:hover {
				image=graphics/window_controls/windows/login/minimize_hover
			}
		button {
			font-family=headerfont
			font-size=28
			font-style=none
			textcolor=trueWhite
			render_bg {}
		}
	}

	layout {
		place [!$OSX]  {
			control="frame_minimize,frame_close"
			align=right
			margin-top=-3
			margin-right=6
			spacing=-9
		}
		place { control=frame_captiongrip margin=0 width=max height=440 }
		place { control=UserNameEdit,PasswordEdit 							align=top-center dir=down width=200 y=120 spacing=10 height=28 }
		place { control=PasswordCapsLockImage										start=PasswordEdit dir=right x=-27 Y=4 }
		place { control=SavePasswordCheck start=PasswordEdit 		align=top-center dir=down y=8 }
		place { control=LoginButton align=top-center spacing=10 y=240 height=30}
		place {
			control=CreateNewAccountButton,PSNAccountSetupButton,LostPasswordButton
			align=top-center
			dir=right
			y=380
			x=16
			spacing=32
			height=28
		}
		place {
			control=Label2,Label3,Label4,CancelButton,ImagePanelLogo,Divider1
			height=0
			width=0
			margin-top=-10
			margin-left=-10
		}
	}
}