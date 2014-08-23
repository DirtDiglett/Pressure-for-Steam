"Friends/FriendsDialog.res" {
	controls {
		"FriendsDialog" {
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"settitlebarvisible"    "0"
			style="FriendsPanel"    
			closeonescape=1
		}

		"BuddyList" {
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}

		"frame_title" {
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
			"textAlignment"   "center" [$OSX]
		}


		"DownLabel" {
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}

		"MenuBar" {
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			zpos="-1" 
		}

		"FriendPanelSelf" {
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"1"
		}

		"AddFriendsButton" {
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "0"
			"ypos"    "0"
			"wide"    "0"
			"tall"    "0"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "0"
			"enabled"   "0"
			"tabPosition"   "3"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}


		"NoFriendsAddFriendButton" {
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"FriendsState" {
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
		}
		
		friends_search { ControlName=TextEntry maxchars=16 hintText="#steam_library_search" style="FriendsSearch" unicode=1 tabposition=2 zpos=9}
		friends_search_icon	{ ControlName=Label style="FriendsSearchIcon" zpos="4" }		
		
	}

  
	styles {
	
		CFriendsDialog {
			minimum-width=330
		}
	
		FrameTitle {
			font-family=basefont
			font-size=1
			font-weight=400
			bgcolor  = "none"
			textcolor  = "none"

			render_bg {
// Creates the top section
					0="gradient( x0+1, y0+1, x1-1, y0 + 86, grey, darkGreyEnd )"
					
					1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
					2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel
					
					3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
					4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased
					
					5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
					6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased
					
					// Create the 1px Highlight on top
					7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"
					
					// 1px Dark line
					
					
					
					
					// Creates the section.
					//2="gradient( x0+1, y0+88, x1-1, y0+125, grey, lightGreyEnd )"
					//3="fill(x0+1,y0+87,x1-1,y0+88, darkestGrey)"
					//4="fill(x0+1,y0+88, x1-1, y0+89, greyHighlight)"
					
					8="image_tiled(x0+1, y0+87, x1-1, y0+125, graphics/subnav_bg)"
					
					9="fill(x0+1, y0+88, x0+2, y0+125, grey10)"
					10="fill(x1-2, y0+88, x1-1, y0+125, grey10)"
					
					11="fill(x0+1, y0+125, x1-1, y=+126, darkestGrey)"
			}
	    }
	
		    FrameTitle:framefocus {
				font-family=basefont
				inset  = "0 4 0 0" [$OSX]
				font-size=1
				font-weight=400
				bgcolor  = "none"
				textcolor="none"

				render_bg {
					
					
					// Creates the top section
					0="gradient( x0+1, y0+1, x1-1, y0 + 86, grey, darkGreyEnd )"
					
					1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
					2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel
					
					3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
					4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased
					
					5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
					6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased
					
					// Create the 1px Highlight on top
					7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"
					
					// 1px Dark line
					
					
					
					
					// Creates the section.
					//2="gradient( x0+1, y0+88, x1-1, y0+125, grey, lightGreyEnd )"
					//3="fill(x0+1,y0+87,x1-1,y0+88, darkestGrey)"
					//4="fill(x0+1,y0+88, x1-1, y0+89, greyHighlight)"
					
					8="image_tiled(x0+1, y0+87, x1-1, y0+125, graphics/subnav_bg)"
					
					9="fill(x0+1, y0+88, x0+2, y0+125, grey10)"
					10="fill(x1-2, y0+88, x1-1, y0+125, grey10)"
					
					11="fill(x0+1, y0+125, x1-1, y0+126, darkestGrey)"
				}
			  }
	
		// Used to push the friends section down lower for trickery.
		Page {
			inset="0 10 0 0"
		}
	
	
		SectionedlistpanelCollapser {
			//inset="-6 0 0 0"
			image="graphics/icon_collapse"
			padding-top=0
			padding-bottom=0
			
			render_bg {
				0="gradient(x0, y0+1, x1, y1, grey, lightGreyEnd)"
				1="fill(x0, y0, x1, y0+1, greyHighlight)"
			}   
		}
		
			SectionedlistpanelCollapser:selected {
				image="graphics/icon_expand"
			}
		 
	
	
		// Overriding the default styling for these controls.
		// So far, can't work out a way to move the pagetabs higher from their current position to make the button look.
		PageTab {
		
			minimum-height=34
			//padding-bottom=20
		
			textcolor=white
			
			//inset="0 -5 0 0"
			
			render_bg {
				0="fill(x0,y0,x1,y1, blue)"
			}
			
		}
		
			PageTab:hover {
				textcolor=white			
			}
			
			PageTab:selected {
				textcolor=blue
			}
		
		
	"CFriendsDialog SectionedListPanel" {
      bgcolor  = "none"
      
     // padding-top=20
      
      
      
      render_bg {
       		// background fill to overwrite the normal listPanel background
	   		//0  = "fill( x0, y0, x1, y1, darkestGrey)"
	   		
      }    
    }
		
		// The actual whole dialog window itself.
		FriendsPanel {	
			bgcolor="none"
			
			render {}
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				//0="fill(x0,y0,x1,y1,green)"
			}
		}	
		
		"CFriendsDialog SectionedListPanel" {
			//inset="0 30 0 0"
		}
		
		AddFriendsButton  {
			font-family=basefont
			font-size=14
			font-size=13 [$OSX]
			font-weight=400
			textcolor="none"
			bgcolor=none  
			
			render_bg {}
		}
		   

			AddFriendsButton:hover {
				textcolor="none"
				render_bg {}
			}	  	
		
		RootMenu {
			bgcolor="none"
		} 

				
		FriendsTitle {
			//inset="0 0 0 0"
		}

		FriendsTitle [$OSX] {
			font-family=basefont
			font-size=15
			font-weight=400
			textcolor="lightestGray"
			bgcolor="none"
			//inset="0 9 0 0"
		}

			FriendsTitle:FrameFocus [$OSX] {
				font-family=basefont
				font-size=15
				font-weight=400
				textcolor="trueWhite"
				bgcolor="none"
				//inset="0 9 0 0"
			}
		
		"MenuBar MenuButton"
		{
			padding-right=14
			render
			{
				0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_default )"
			}
		}

		"MenuBar MenuButton:hover"
		{
			render
			{
				0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_hover )"
			}
		}

		"MenuBar MenuButton:selected"
		{
			render
			{
				0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_hover )"
			}
		}
		
		FriendsSearch {
			padding-left=-4
			padding-top=1
			font-family=basefont
			font-size=14
			font-weight=400	
			textcolor="text"	
			render { }	
			bgcolor=none
			render_bg {
				// background fill
				0="fill( x0, y0, x1, y1, white )"
	     

				// single pixel fills in the corners
				
			}
		}
		
		FriendsSearch:empty
		{
			font-style=italic
			textcolor="LabelDisabled"
			
		}
		
		FriendsSearch:hover
		{	
			textcolor="texthover"	
		}
		
		FriendsSearch:empty:hover
		{
			font-style=italic
			textcolor="texthover"
			
		}
			
		FriendsSearch:disabled
		{
			font-style=italic
			textcolor="None"
			
		}
			
		FriendsSearchIcon
		{
			bgcolor="none"
			inset="4 2 0 0"
			image="graphics/icon_button_search"
			padding-left=0
			padding-right=-1
			padding-top=-1
			render_bg
			{
				// background fill
				0="fill( x0 + 2, y0 - 1, x1 + 2, y1 +3, red )"
			}
		}
		
		FriendsSearchIcon:disabled
		{
			bgcolor="none"
			inset="1 0 0 0"
			image="none"
			padding-left=0
			padding-right=-1
			render_bg
			{
				// background fill
				0="fill( x0 + 1, y0 + 1, x1 - 1, y1 - 1, blue )"
			}
		}		
		
		
		// This will only affect the HEADERS inside it for some reason
		"CFriendsDialog SectionedListPanelInterior" {
		
		inset="0 -3 0 0"
		
		bgcolor=none
		font-family=basefont
		font-size=14
		font-weight=400
		textcolor  = "white"
		selectedtextcolor  = "blue"
		selectedbgcolor  = "green"
		shadowtextcolor  = "darkGreyEnd"	// the color of disabled line items		
		render {
			0="fill(x0,y0,x1,y0+1, darkestGrey)"
			
		}
		render_bg {
			1="fill(x0,y0+2,x1,y1, grey)"
		}
	}
	
	"CFriendsDialog SectionedListPanelInterior:scrollbar" {
		padding-right=15
	}
	
	"CFriendsListSubPanel" {
		//padding-top=20
	}
		
		
		
		
	}
 	
 	layout
 	{
		place 	[$OSX] { control="frame_title" align=center x=0 y=0 width=max height=20 }
		place 	[!$OSX] { control="frame_title" visible=0 x=0 y=0 width=max height=0 }

 		// the title bar is missing, so increase the size of the grip
		place { control="frame_captiongrip" margin=2 width=max height=38 }
		place [!$OSX] { control="MenuBar" margin-left=0 height=24 margin-top=2 }
		
	
		
		place { 
			control="friends_search" 
			y=100 
			align=left 
			margin-left=145 
			width=180 
			height=25 
		}	
		
		place { 
			control="FriendPanelSelf" 
			y=24 
			align=left 
			margin-left=12 
			margin-right=0 
			margin-top=2 
			margin-bottom=0 
			width=max 
			height=max 
			dir=down 
			spacing=3 
		}	
		
		
		
		
		place { control="friends_search_icon" margin-left=-2 start=FriendPanelSelf dir=down margin-top=5 height=25 }
		place { control="friends_search" dir=right margin-left=150 y=95 min-width=175 height=25 }

		
		place {
			control="FriendsDialogSheet"
			//y=97
			y=85
			//y=150
			
			width=max
			height=max
			dir=down
			margin-left=-1
			margin-right=-1
		}
		
		
		
	
	
		place { control="addFriendsButton" align=bottom margin-left=0 margin-right=0 margin-bottom=0 height=0 }
 	}
 	
}


