"friends/ChatRoomDlg.res"
{
	controls
	{
		"ChatRoomDlg"
		{
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Group_Title"
		}

		"TextEntry"
		{
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="Textentryfocus_chat"
		}

		"ChatHistory"
		{
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

		"VoiceBar" {
			"ControlName"		"CVoiceBar"
		}

		"TitlePanel" {

			"ControlName"		"CFriendPanel"
			"zpos"		"-2"
			paintbackgroundenabled=0	
		}

		"UserList"
		{
			"ControlName"		"CFriendsListSubPanel"
			style="FriendsList"
			"linespacing"		"50"
			wide=200
		}

		"Splitter"
		{
			"ControlName"		"CChatSplitter"
			resizepanel="UserList"
			zpos=1
		}

		"VoiceChat" {
			"ControlName"		"Button"
			style="Chat_MenuButton_withChrome"
			
		}
		
		"GameInviteBar" {
			"ControlName"		"GameInviteBar"
		}
		
		"EmoticonButton" {
			"ControlName"		"CEmoticonButton"
		}
	}	
	styles
	{
	
	CChatRoomDlg {	
				
			inset="0 0 0 0"	
				
			bgcolor="none"
			render_bg {
		       	// The top section.
		        0="fill( x0, y0+5, x1, y0+6, greyHighlight )"
		        0="fill(x0, y0+4, x1,y0+5, darkGreyEnd)"
		        1="fill( x0, y0+6, x1, y0+59, darkestGrey )"
		        2="gradient( x0, y0+6, x1, y0+58, grey, lightGreyEnd)"

				// The status Label area.
				5="fill( x0, y1-60, x1, y1, darkestGrey )"
				
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
				
		
		// Used for the status label on the chat only
		label {
			font-size=12
			textcolor=grey
			font-style=none
		}
		
		TextEntry {
			font-size=14
			
			textcolor="darkestGrey"
			
			selectedbgcolor="blue"
			selectedtextcolor="trueWhite"
			
			padding-top=14
			padding-bottom=5
			inset="0 10 0 0"
			
			render {}
			render_bg {
				0="image(x0, y0-4, x0+3, y0+21, graphics/textEntryleft)"
				1="image_tiled(x0+3,y0-4, x1, y0+21, graphics/inner)"
			}  
		}
		
		
		CChatActionsButton {
			render_bg {
		        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
		
				// Dark Grey Background Corners & Fake Anti-Aliasing
					// TOP-LEFT corner pixels (Fake Anti-Aliasing)
					5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
					6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
					8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
					9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
					11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
				46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
				47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
				48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
				49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.
				
				49="image(x0+5, y0+6, x1, y1, graphics/largecog)"
				50="image(x1-14, y0+7, x1-7, y0+18, graphics/dropdown)"		
			}
		}
		
			CChatActionsButton:hover {
				render_bg {
			        // background fill
			        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, greyHighlight, grey )" // Background Gradient
			                
			        // Dark Borders around
			        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
			        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
			        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
			        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
			
					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
						6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
						9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
						12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
						15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
					// Single Pixel Highlight Line.
					17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, lightestGreyHighlight )"
					
						// Fake Anti-Aliasing for the Single Pixel Highlight
						18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, topLightPixelsHighlighted )" // Top Left		
						19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, topLightPixelsHighlighted )" // Top Left		
						20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, topLightPixelsHighlighted )" // Top Right
						21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, topLightPixelsHighlighted )" // Top Right
					
					// Fake Anti-Aliasing for the bottom corners.
					22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Right
					23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixelsHighlighted )" // Bottom Right
					24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Left
					25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixelsHighlighted )" // Bottom Left	
					
					
					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.
					
					49="image(x0+5, y0+6, x1, y1, graphics/largecog)"
					50="image(x1-14, y0+7, x1-7, y0+18, graphics/dropdown_hover)"		
				}
			}

		CChatActionsButton:selected {
			render_bg {
			        // background fill
			        0 = "fill( x0 + 1, y0 + 1, x1 - 1, y1 - 2, darkestGrey )" // Background Gradient
			                
			        // Dark Borders around
			        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
			        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
			        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
			        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
			
					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
						6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
						9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
						12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
						15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.
					
					49="image(x0+5, y0+6, x1, y1, graphics/largecog_active)"
					50="image(x1-14, y0+7, x1-7, y0+18, graphics/dropdown_active)"		
				}
		}
		
		Chat_MenuButton_withChrome {
			bgcolor=none
			textcolor=none
			
			font-style=none
			
			render_bg {
		       	
				0="gradient(x0-1,y0+3,x1,y1-12, red, darkestRed)"
			   			       	
		       		2="image(x0+2,y0+22,x1,y1, graphics/game_invite_close)"
		       	
		       		3="fill(x0-1,y0+1,x0,y1-12, darkestRed)"
		       		4="fill(x0-2,y0+1,x0-1,y1-12, darkestGrey)"

				5="fill(x0-2,y0+1,x0-1,y1-12, darkestGrey)"
				6="fill(x0-2,y0,x1,y0+1, darkestGrey)"
				7="fill(x0-2,y0+1,x1,y0+2, greyHighlight)"
				8="fill(x0-1,y0+2,x1,y0+3, lightestRed)"
			}
		}

		Chat_MenuButton_withChrome:hover {}
		
		Chat_MenuButton_withChrome:active  {}
		
		// Used to create the Chat itself.
		RichText {
			textcolor="ChatDialog.HistoryColor"
			selectedbgcolor="blue"
			selectedtextcolor="trueWhite"
			bgcolor=darkestGrey
			
			inset="8 8 8 0"
			
			render {
				// For some weird ready, this appears DARKER than the rest of darkestGrey
				0="gradient(x0,y1-9,x1,y1, none, darkestGrey)"
				1="fill(x0,y0,x1,y0+1, darkestGrey)"
			}
			render_bg {}
		}
		
		"RichText url" {}
		
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
		
		button {
			render_bg {
		        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
		
				// Dark Grey Background Corners & Fake Anti-Aliasing
					// TOP-LEFT corner pixels (Fake Anti-Aliasing)
					5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
					6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
					8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
					9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
					11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
				46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
				47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
				48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
				49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.	
			}
		}	
			
			button:hover {
				render_bg {
			        // background fill
			        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, greyHighlight, grey )" // Background Gradient
			                
			        // Dark Borders around
			        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
			        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
			        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
			        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
			
					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
						6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
						9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
						12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
						15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
					// Single Pixel Highlight Line.
					17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, lightestGreyHighlight )"
					
						// Fake Anti-Aliasing for the Single Pixel Highlight
						18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, topLightPixelsHighlighted )" // Top Left		
						19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, topLightPixelsHighlighted )" // Top Left		
						20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, topLightPixelsHighlighted )" // Top Right
						21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, topLightPixelsHighlighted )" // Top Right
					
					// Fake Anti-Aliasing for the bottom corners.
					22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Right
					23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixelsHighlighted )" // Bottom Right
					24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Left
					25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixelsHighlighted )" // Bottom Left	
					
					
					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.		
				}
			}
			
			// The button is auto-selected when typing.
			button:selected {
			
				render_bg {
			      	        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
		
				// Dark Grey Background Corners & Fake Anti-Aliasing
					// TOP-LEFT corner pixels (Fake Anti-Aliasing)
					5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
					6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
					8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
					9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
					11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
				46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
				47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
				48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
				49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.
				}
			}
			
			button:active {
			
				render_bg {
			        // background fill
			        0 = "fill( x0 + 1, y0 + 1, x1 - 1, y1 - 2, darkestGrey )" // Background Gradient
			                
			        // Dark Borders around
			        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
			        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
			        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
			        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
			
					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
						6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
						9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
						12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
						15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.	
				}
			}
			
			Button:disabled {
				font-family=basefont
				font-size=13
				textcolor="grey"
				
				font-style="none"
				
				padding-left=3
				padding-top=2
				padding-bottom=1
					
				bgcolor=none
				
				render_bg {
					// background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 2, lightGreyEnd, darkGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 3, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 3, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 2, x1 - 2, y1-1, darkestGrey )" // Bottom
		
				// Dark Grey Background Corners & Fake Anti-Aliasing
					// TOP-LEFT corner pixels (Fake Anti-Aliasing)
					5="fill( x0 + 1, y0 + 1, x0 + 2, y0 + 2, darkCornerPixels )" // Darkest Pixel
					6="fill( x0, y0 + 1, x0 + 1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					7="fill( x0 + 1, y0, x0 + 2, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
					8="fill( x1 - 2, y0 + 1, x1 - 1, y0 + 2, darkCornerPixels )" // Darkest Pixel
					9="fill( x1 - 1, y0 + 1, x1, y0 + 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					10="fill( x1 - 2, y0, x1 - 1, y0 + 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
					11="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 3, x1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 2, x1 - 1, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 3, x0 + 1, y1 - 2, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 2, x0 + 2, y1-1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 3, x1 - 2, y1 - 2, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 4, x1 - 1, y1 - 3, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 3, x0 + 3, y1 - 2, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 4, x0 + 2, y1 - 3, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
				46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
				47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
				48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
				49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.	
				
				
				}
			}

			//A fix Regarding Ingame Chat Issues
	    		
			ListPanel {			
				textcolor="ChatDialog.HistoryColor"
				selectedbgcolor="blue"

			}
		
			ChatListPanel
			{	
								textcolor="ChatDialog.HistoryColor"
				selectedbgcolor="blue"
				bgcolor=darkestGrey
			
				inset="8 8 8 0"
			
				render {
				// For some weird ready, this appears DARKER than the rest of darkestGrey
				0="gradient(x0,y1-9,x1,y1, none, darkestGrey)"
				1="fill(x0,y0,x1,y0+1, darkestGrey)"
				}
				render_bg {}
			}
		
			CChatSplitter
			{
				bgcolor=none
				//render_bg { x0+1, y0+5, x1, y1, darkGreyEnd}
			}

			FriendsList
			{	bgcolor=none

				render_bg {
				1="fill( x0+4, y0+5, x1, y1, groupGrey)"
				2="fill( x1-2, y0+5, x1-1, y1, darkGreyEnd)"
				3="fill( x0+3, y0+5, x0+4, y1, darkGreyEnd)"
				
				}
			}
			
			CFriendsListSectionHeader {
				inset="0 0 0 0"
				textcolor=White			
				font-family=basefont
				font-style="outerglow"
				font-size=16
				font-outerglow-color="black"
				font-outerglow-offset=1
				font-outerglow-filtersize=2
						
				render_bg {
				0="gradient( x0-21, y0+1, x1+2, y1, grey, lightGreyEnd)"
				1="fill( x0-2, y0, x1+2, y0+1, greyHighlight)"
				
				}    
    			}



			SectionedlistpanelCollapser {
				
				image="graphics/icon_collapse"
				padding-top=0
				padding-bottom=-5
				font-family=basefont
				font-style="lowercase"
			
				inset="-4 -5 0 0"
			
				render_bg {
				//0="image( x0, y0, x1, y1, graphics/icon_collapse)"
				1="gradient( x0-2, y0+1, x0, y1, grey, lightGreyEnd)"
				2="fill( x0, y0, x1, y0+1, greyHighlight)"				
				}   
			}
		
				SectionedlistpanelCollapser:selected {
					image="graphics/icon_expand"
				}
	}
	

layout {


// Group Chat
		
		place { 
			control="Splitter"
			width=4 
		}

		place { 
			control="Splitter,UserList"
			align=right 
			y=55
			height=max 
			margin-right=0 
			margin-bottom=51 
			spacing=-3 
		}

		place { 
			control="VoiceChat" 
			y=58 
			align=right 
			margin=0 
			width=14 
			height=65 
			dir=right
			end-right=UserList 
		}

		place { 
			control="ChatActionsButton" 
			height=24 
			width=38 
			margin=12 
			margin-top=20 
			align=right 
			dir=right 
		}
		
		place { 
			control="TitlePanel" 
			x=6 
			y=7 
			height=52 
			width=max 
			margin-right=16 
			end-right=ChatActionsButton 
		}
		
		place { 
			control="GameInviteBar,TradeInviteBar,ChatInfoBar,VoiceBar" 
			height=65 
			margin-right=8
			margin-left=8
		}
		
		place { 
			control="VoiceBar" 
			y=58 
			width=max 
			height=54 
			dir=down 
			end-right=VoiceChat 
		}
		
		place { 
			control="TradeInviteBar,GameInviteBar,ChatInfoBar,ChatHistory" 
			start=VoiceBar			
			width=max 
			height=max 
			align=right 
			dir=down 
			margin-bottom=69 
			margin-right=0
			end-right=UserList
		}
		

		
		region { 
			name=bottom1 
			align=bottom 
			height=67
			width=max
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
			
			margin-top=17
			margin-left=13
			
			end-right=EmoticonButton 
		}
		
		place { 
			control="EmoticonButton" 
			region=bottom
			width=32 
			height=25 
			align=right 
			margin-top=13
			
			end-right=sendbutton
		}
		
		place { 
			control="SendButton" 
			region=bottom
			
			align=right
			
			height=25 
			width=80 
			
			margin-top=13
			margin-left=13
			margin-right=13
		}
		
		place { 
			control="StatusLabel" 
			region=bottom1 
			height=20
			align=top 
			margin-left=8
			margin-top=-4
		}
		
		

	}
}
		