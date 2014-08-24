"friends/ChatRoomDlgFriend.res" {
	controls {
		"ChatRoomDlg" {
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Title"
		}
		
		"TextEntry" {
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="textentryfocus_chat"
		}
		
		"ChatHistory" {
			"ControlName"		"RichText"
			"maxchars"		"-1"
			"ScrollBar"		"1"
			style="ListPanel"
		}
		
		"SendButton" {
			"ControlName"		"Button"
			"tabPosition"		"2"
			"paintbackground"		"1"
			"labelText"		"#Friends_Chat_Send"
			"textAlignment"		"west"
			"Default"		"1"
			style="button"
		}
		
		"StatusLabel" {
			"ControlName"		"Label"
			"labelText"			""
		}
		
		"TitlePanel" {
			"ControlName"		"CFriendPanel"
			"zpos"		"-2"
			paintbackgroundenabled=0	
		}
		
		"VoiceBar" {
			"ControlName"		"CVoiceBar"
		}
		
		"VoiceChat" {
			"ControlName"		"Button"
			style="controlbutton"
			minimum-width="120"
		}
		
		"GameInviteBar" {
			"ControlName"		"GameInviteBar"
		}
		
		"EmoticonButton" {
			"ControlName"		"CEmoticonButton"
		}
	}	

	styles {
		CChatRoomDlg {	
				
			bgcolor="none"
			render_bg {
		       	// The top section.
		        0="fill( x0, y0-1, x1, y0, red )"
		        1="fill( x0, y0, x1, y0+57, red )"
		        2="fill( x0, y0, x1, y0+56, red )"


				// The status Label area.
				5="fill( x0, y1-80, x1, y1, darkestGrey )"
				
				// The chat Input area.
				4="gradient( x0, y1-50, x1, y1, grey, lightGreyEnd)"
				5="fill(x0,y1-50,x1,y1-49, greyHighlight)"
				
				// Dark corner pixels for the Chat Input area.
				6="fill(x0,y1-1,x0+1,y1, darkestGrey)"
				7="fill(x1-1,y1-1,x1,y1, darkestGrey)"
				8="fill(x0,y1-2,x0+1,y1-1, bottomDarkPixels)" // Bottom Left
				9="fill(x0+1,y1-1,x0+2,y1, bottomDarkPixels)" // Bottom Left
				10="fill(x1-2,y1-1,x1-1,y1, bottomDarkPixels)" // Bottom Right
				11="fill(x1-1,y1-2,x1,y1-1, bottomDarkPixels)" // Bottom Right
      }
		}
		
		// Pretty sure this is only used for the status label on the chat.
		label {
			font-size=12
			textcolor=grey
			font-style=none
		}
		
		TextEntry {
			font-size=14
			
			textcolor="darkestGrey"
			
			padding-top=14
			padding-bottom=5
			inset="0 10 0 0"
			
			render {}
			render_bg {
				0="image(x0, y0, x0+3, y0+25, graphics/textEntryleft)"
				1="image_tiled(x0+3,y0, x1, y0+25, graphics/inner)"
			}  
		}
		
		
		CChatActionsButton {
			//image="graphics/metro/icons/chat/cog"
			render {
			0="image(x0,y0,x1,y1,graphics/metro/icons/chat/cog)"
			}
		}
		
			CChatActionsButton:hover {
				render {
					0="image(x0,y0,x1,y1,graphics/metro/icons/chat/cog_h)"
				}
			}

		CChatActionsButton:selected {
			render {
				0="image(x0,y0,x1,y1,graphics/metro/icons/chat/cog_p)"
			}
		}
		
		controlbutton {
			textcolor=none
			bgcolor=none
			render_bg
			{
				0="image(x0,y0,x1,y1,graphics/tab_close_def)"
			}
			render
			{
				1="fill(x0,y0-4,x1+4,y0+50,white10)"
			}
    }

		controlbutton:hover
    {
			bgcolor=White12
			render_bg
			{
				0="image(x0,y0,x1,y1,graphics/tab_close_def)"
			}
    }
		
		controlbutton:active
		{
			bgcolor=White24
			render_bg
			{
				0="image(x0,y0,x1,y1,graphics/tab_close_hov)"
			}
		}
		
		Button {
		//bgcolor=focus
		}
		
		// Used to create the Chat itself.
		RichText {
			bgcolor=darkestGrey
			
			inset="8 8 8 0"
			
			render {
				0="gradient(x0,y1-9,x1,y1, none, darkestGrey)"
			}
			render_bg {}
		}
		
		"RichText url" {
	//		font-style=none
	//		font-family=basefont
		}
		
		// The styling for the Text Entry
		textentryfocus_chat {
			inset="10 10 0 0"
		}
		
		CEmoticonButton {
			//32 x 25
			
			render {
				0="image(x0,y0,x1,y1, graphics/emote_button)"
			}
		}
		
			CEmoticonButton:hover {
				//32 x 25
				
				render {
					0="image(x0,y0,x1,y1, graphics/emote_button_hover)"
				}
			}		
			
	}
	
	layout {
		// Voice Chat Close Button
		place { control="VoiceChat" y=57 align=right margin=4 width=16 height=16 dir=right }

		place { control="ChatActionsButton" height=34 width=34 margin=12 margin-top=11 align=right dir=right }
		
		place { control="TitlePanel" x=5 y=3 height=56 width=max margin-right=16 end-right=ChatActionsButton }
		place { control="GameInviteBar,TradeInviteBar,ChatInfoBar,VoiceBar" height=54 }
		
		place { control="VoiceBar" y=57 width=max height=54 dir=down end-right=VoiceChat }
		place { control="TradeInviteBar,GameInviteBar,ChatInfoBar,ChatHistory" start=VoiceBar y=0 width=max height=max align=right dir=down margin-bottom=81 margin-right=1 }
		
		region { 
			name=bottom1 
			align=bottom 
			height=75 
			width=max 
			margin=8 
		}
		
		region { 
			name=bottom 
			align=bottom 
			height=50 
		}

		place { 
			control="TextEntry" 
			region=bottom 
			height=25
			width=max 
			
			margin-top=13
			margin-left=13
			
			end-right=EmoticonButton 
		}
		
		place { 
			control="EmoticonButton" 
			region=bottom
			width=32 
			height=25 
			align=right 
		}
		
		place { 
			control="StatusLabel" 
			region=bottom1 
			height=15 
		}
		
		place { control="SendButton" height=0 width=0 }
	}
}
