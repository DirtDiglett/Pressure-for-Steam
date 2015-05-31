"friends/ChatRoomDlg.res" {
	styles {
		CChatRoomDlg {
			bgcolor=none
			inset="0 0 0 0"

			render {
				0="fill(x0,y0+57, x1, y0+58, darkestGrey)"
			}
			render_bg {
				-1="fill(x0,y0+20,x1,y1, darkestGrey)"

				// The top section.
				0="fill(x0, y0+5, x1, y0+6, greyHighlight)"
				1="fill(x0, y0+4, x1,y0+5, darkGreyEnd)"
				2="fill(x0, y0+6, x1, y0+59, darkestGrey)"
				3="gradient(x0, y0+6, x1, y0+58, grey, lightGreyEnd)"
				// The status Label area.
				4="fill(x0, y1-90, x1, y1, darkestGrey)"

				// The chat Input area.
				5="gradient(x0, y1-58, x1, y1, grey, lightGreyEnd)"
				6="fill(x0,y1-58,x1,y1-57, greyHighlight)"

				// Dark corner pixels for the Chat Input area.
				7="fill(x0,y1-1,x0+1,y1, darkestGrey)"
				8="fill(x1-1,y1-1,x1,y1, darkestGrey)"
				9="fill(x0,y1-2,x0+1,y1-1, bottomDarkPixels)" // Bottom Left-Higher
				10="fill(x0+1,y1-1,x0+2,y1, bottomDarkPixels)" // Bottom Left-Lower
				11="fill(x1-1,y1-2,x1,y1-1, bottomDarkPixels)" // Bottom Right-Higher
				12="fill(x1-2,y1-1,x1-1,y1, bottomDarkPixels)" // Bottom Right-Lower
			}
		}

		SectionedListPanelCollapser {
			render{}
		}

		// Used for the status label on the chat only
		label {
			textcolor=lighterGrey
			font-size=15
font-size=14 [$LINUX]
			font-style=none
		}

		TextEntry {
			bgcolor=none
			selectedbgcolor=blue
			selectedtextcolor=white
			shadowtextcolor=darkestGrey
			textcolor=white
			font-family=basefont
			font-size=15
font-size=14 [$LINUX]
			inset-left=4
			inset-top=6
			inset-right=6

			render_bg {
				0="fill(x0+2,y0+2,x1+32,y1-2, darkestGrey)"

				// TOP
				1="image(x0,y0,x0+3,y0+4, graphics/textEntry/topLeft)"
				2="image_scale(x0+3,y0,x1+32,y0+4, graphics/textEntry/topMiddle)"
				3="image(x1+32,y0,x1+35,y0+4, graphics/textEntry/topRight)"

				// LEFT
				4="image_scale(x0,y0+4,x0+3,y1-3, graphics/textEntry/leftMiddle)"

				// RIGHT
				5="image_scale(x1+32,y0+4,x1+35,y1-3, graphics/textEntry/rightMiddle)"

				// BOTTOM
				6="image(x0,y1-3,x0+3,y1+1, graphics/textEntry/bottomLeft)"
				7="image_scale(x0+3,y1-2,x1+32,y1+1, graphics/textEntry/bottomMiddle)"
				8="image(x1+32,y1-3,x1+35,y1+1, graphics/textEntry/bottomRight)"
			}
		}

		CChatActionsButton {
			render_bg {
				// background fill
				0 = "gradient(x0+1, y0+1, x1-1, y1-2, grey, lightGreyEnd)" // Background Gradient

				// Dark Borders around
				1="fill(x0, y0+2, x0+1, y1-3, darkGrey)" // Left
				2="fill(x0+2, y0, x1-2, y0+1, darkGrey)" // Top
				3="fill(x1-1, y0+2, x1, y1-3, darkGrey)" // Right
				4="fill(x0+2, y1-2, x1-2, y1-1, darkGrey)" // Bottom

				// Dark Grey Background Corners & Fake Anti-Aliasing
					// TOP-LEFT corner pixels (Fake Anti-Aliasing)
					5="fill(x0+1, y0+1, x0+2, y0+2, darkCornerPixels)" // Darkest Pixel
					6="fill(x0, y0+1, x0+1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
					7="fill(x0+1, y0, x0+2, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

					// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
					8="fill(x1-2, y0+1, x1-1, y0+2, darkCornerPixels)" // Darkest Pixel
					9="fill(x1-1, y0+1, x1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
					10="fill(x1-2, y0, x1-1, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

					// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
					11="fill(x1-2, y1-3, x1-1, y1-2, darkCornerPixels)" // Darkest Pixel
					12="fill(x1-1, y1-3, x1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill(x1-2, y1-2, x1-1, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill(x0+1, y1-3, x0+2, y1-2, darkCornerPixels)" // Darkest Pixel
					15="fill(x0, y1-3, x0+1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill(x0+1, y1-2, x0+2, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

				// Single Pixel Highlight Line.
				17="fill(x0+3, y0+1, x1-3, y0+2, greyHighlight)"

					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left
					19="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left
					20="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right
					21="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right

				// Fake Anti-Aliasing for the bottom corners.
				22="fill(x1-3, y1-3, x1-2, y1-2, bottomDarkPixels)" // Bottom Right
				23="fill(x1-2, y1-4, x1-1, y1-3, bottomDarkPixels)" // Bottom Right
				24="fill(x0+2, y1-3, x0+3, y1-2, bottomDarkPixels)" // Bottom Left
				25="fill(x0+1, y1-4, x0+2, y1-3, bottomDarkPixels)" // Bottom Left


				// Drop-shadow
				45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
				46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
				47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
				48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
				49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.

				49="image(x0+5, y0+8, x1, y1, graphics/largecog)"
				50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown)"
			}
		}

			CChatActionsButton:hover {
				render_bg {
					// background fill
					0 = "gradient(x0+1, y0+1, x1-1, y1-2, greyHighlight, grey)" // Background Gradient

					// Dark Borders around
					1="fill(x0, y0+2, x0+1, y1-3, darkGrey)" // Left
					2="fill(x0+2, y0, x1-2, y0+1, darkGrey)" // Top
					3="fill(x1-1, y0+2, x1, y1-3, darkGrey)" // Right
					4="fill(x0+2, y1-2, x1-2, y1-1, darkGrey)" // Bottom

					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill(x0+1, y0+1, x0+2, y0+2, darkCornerPixels)" // Darkest Pixel
						6="fill(x0, y0+1, x0+1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill(x0+1, y0, x0+2, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill(x1-2, y0+1, x1-1, y0+2, darkCornerPixels)" // Darkest Pixel
						9="fill(x1-1, y0+1, x1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill(x1-2, y0, x1-1, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill(x1-2, y1-3, x1-1, y1-2, darkCornerPixels)" // Darkest Pixel
						12="fill(x1-1, y1-3, x1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill(x1-2, y1-2, x1-1, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill(x0+1, y1-3, x0+2, y1-2, darkCornerPixels)" // Darkest Pixel
						15="fill(x0, y1-3, x0+1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill(x0+1, y1-2, x0+2, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

					// Single Pixel Highlight Line.
					17="fill(x0+3, y0+1, x1-3, y0+2, lightestGreyHighlight)"

						// Fake Anti-Aliasing for the Single Pixel Highlight
						18="fill(x0+1, y0+2, x0+2, y0+3, topLightPixelsHighlighted)" // Top Left
						19="fill(x0+2, y0+1, x0+3, y0+2, topLightPixelsHighlighted)" // Top Left
						20="fill(x1-2, y0+2, x1-1, y0+3, topLightPixelsHighlighted)" // Top Right
						21="fill(x1-3, y0+1, x1-2, y0+2, topLightPixelsHighlighted)" // Top Right

					// Fake Anti-Aliasing for the bottom corners.
					22="fill(x1-3, y1-3, x1-2, y1-2, bottomDarkPixelsHighlighted)" // Bottom Right
					23="fill(x1-2, y1-4, x1-1, y1-3, bottomDarkPixelsHighlighted)" // Bottom Right
					24="fill(x0+2, y1-3, x0+3, y1-2, bottomDarkPixelsHighlighted)" // Bottom Left
					25="fill(x0+1, y1-4, x0+2, y1-3, bottomDarkPixelsHighlighted)" // Bottom Left


					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.

					49="image(x0+5, y0+8, x1, y1, graphics/largecog)"
					50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown_hover)"
				}
			}
			CChatActionsButton:selected {
				render_bg {
					// background fill
					0 = "fill(x0+1, y0+1, x1-1, y1-2, darkestGrey)" // Background Gradient

					// Dark Borders around
					1="fill(x0, y0+2, x0+1, y1-3, darkestGrey)" // Left
					2="fill(x0+2, y0, x1-2, y0+1, darkestGrey)" // Top
					3="fill(x1-1, y0+2, x1, y1-3, darkestGrey)" // Right
					4="fill(x0+2, y1-2, x1-2, y1-1, darkestGrey)" // Bottom

					// Dark Grey Background Corners & Fake Anti-Aliasing
						// TOP-LEFT corner pixels (Fake Anti-Aliasing)
						5="fill(x0+1, y0+1, x0+2, y0+2, darkCornerPixels)" // Darkest Pixel
						6="fill(x0, y0+1, x0+1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						7="fill(x0+1, y0, x0+2, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// TOP-RIGHT corner pixels (Fake Anti-Aliasing)
						8="fill(x1-2, y0+1, x1-1, y0+2, darkCornerPixels)" // Darkest Pixel
						9="fill(x1-1, y0+1, x1, y0+2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						10="fill(x1-2, y0, x1-1, y0+1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// BOTTOM-RIGHT corner pixels (Fake Anti-Aliasing)
						11="fill(x1-2, y1-3, x1-1, y1-2, darkCornerPixels)" // Darkest Pixel
						12="fill(x1-1, y1-3, x1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill(x1-2, y1-2, x1-1, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill(x0+1, y1-3, x0+2, y1-2, darkCornerPixels)" // Darkest Pixel
						15="fill(x0, y1-3, x0+1, y1-2, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill(x0+1, y1-2, x0+2, y1-1, darkestGreyFake)" // Partially-Transparent (Fake Anti-Aliasing)

					// Drop-shadow
					45="fill(x1-2, y1-1, x1-1, y1, grey50)" // bottom right
					46="fill(x1-1, y1-2, x1, y1-1, grey50)" // bottom right
					47="fill(x0+1, y1-1, x0+2, y1, grey50)" // bottom left
					48="fill(x0, y1-2, x0+1, y1-1, grey50)" // bottom left
					49="fill(x0+2, y1-1, x1-2, y1, grey)" // single 1px line.

					49="image(x0+5, y0+8, x1, y1, graphics/largecog_active)"
					50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown_active)"
				}
			}

		Chat_MenuButton_withChrome {
			bgcolor=none
			textcolor=none
			font-style=none

			render {}
			render_bg {
				0="gradient(x0-1,y0+2,x1,y0+39, grey, lightGreyEnd)"
				1="image(x0+2,y0+16,x1,y1, graphics/tab_close)"
				2="fill(x0-2,y0+1,x1,y0+2, greyHighlight)"
				3="fill(x0-2,y0,x1,y0+1, darkestGrey)"
			}
		}
			Chat_MenuButton_withChrome:hover {
				render_bg {
					0="gradient(x0-1,y0+2,x1,y0+39, grey, lightGreyEnd)"

					1="image(x0+2,y0+16,x1,y1, graphics/tab_close_hover)"
					2="fill(x0-2,y0+1,x1,y0+2, greyHighlight)"
					3="fill(x0-2,y0,x1,y0+1, darkestGrey)"
				}
			}

			Chat_MenuButton_withChrome:active  {
				render_bg {
					0="gradient(x0-1,y0+2,x1,y0+39, grey, lightGreyEnd)"

						1="image(x0+2,y0+16,x1,y1, graphics/tab_close_active)"
					2="fill(x0-2,y0+1,x1,y0+2, greyHighlight)"
					3="fill(x0-2,y0,x1,y0+1, darkestGrey)"
				}
			}

		// Used to create the Chat itself.
		RichText {
			bgcolor=none
			selectedbgcolor="blue"
			selectedtextcolor="trueWhite"
			textcolor="ChatDialog.HistoryColor"
			font-size=15
font-size=14 [$LINUX]
			inset="0 8 0 0"

			render {}
		}

		"RichText url" {}

		textentryfocus_chat {
			inset="10 10 0 0"
		}

		CEmoticonButton {
			render {
				0="image(x0,y0,x1,y1, graphics/emote_button)"
			}
		}

			CEmoticonButton:hover {
				render {
					0="image(x0,y0,x1,y1, graphics/emote_button_hover)"
				}
			}

		//A fix Regarding Ingame Chat Issues
		ListPanel {
			selectedbgcolor="blue"
			textcolor="ChatDialog.HistoryColor"
		}

		ChatListPanel {
			bgcolor=darkestGrey
			selectedbgcolor="blue"
			textcolor="ChatDialog.HistoryColor"

			render {
				1="fill(x0,y0,x1,y0+1, darkestGrey)"
			}
			render_bg {}
		}

		CChatSplitter {
			bgcolor=none
		}
		FriendsList {
			bgcolor=none
			render {
				0="fill(x0,y0,x1,y0+3, lightGreyEnd)"
				1="fill(x0,y0+3,x1,y0+4, darkestGrey)"
			}
			render_bg {
				1="fill(x0+4, y0+5, x1, y1, groupGrey)"
				2="fill(x1-2, y0+5, x1-1, y1, darkGreyEnd)"
				3="fill(x0+3, y0+5, x0+4, y1, darkGreyEnd)"
			}
		}

		CFriendsListSectionHeader [$OSX] {
			textcolor=White
			font-family=basefont
font-size=15
font-size=14 [$LINUX]
			font-style="outerglow"
			font-outerglow-color="darkestGrey"
			font-outerglow-offset=1
			font-outerglow-filtersize=2
			inset="0 3 0 0"

			render_bg {
				0="gradient(x0-21, y0+1, x1+2, y1, grey, lightGreyEnd)"
				1="fill(x0-2, y0, x1+2, y0+1, greyHighlight)"
			}
		}

		CFriendsListSectionHeader [!$OSX] {

			textcolor=White
			font-family=basefont
			font-size=16
font-size=15
font-size=14 [$LINUX]
			font-style="outerglow"
			font-outerglow-color="darkestGrey"
			font-outerglow-offset=1
			font-outerglow-filtersize=2
			inset="0 0 0 0"
			render_bg {
				0="gradient(x0-21, y0+1, x1+2, y1, grey, lightGreyEnd)"
				1="fill(x0-2, y0, x1+2, y0+1, greyHighlight)"
			}
		}
		SectionedlistpanelCollapser {
			font-family=basefont
			font-style="lowercase"
			image="graphics/icon_collapse"
			inset="-4 -5 0 0"
			padding-top=0
			padding-bottom=-5
			render_bg {
				1="gradient(x0-2, y0+1, x0, y1, grey, lightGreyEnd)"
				2="fill(x0+2, y0, x1, y0+1, greyHighlight)"
			}
		}

			SectionedlistpanelCollapser:selected {
				image="graphics/icon_expand"
			}
	}

	layout {
		place {
			control="Splitter"
			width=4
		}
		place {
			control="Splitter,UserList"
			align=right
			y=54
			height=max
			margin-right=0
			margin-bottom=58
			spacing=-3
		}
		place {
			control="VoiceChat"
			align=right
			y=57
			width=14
			height=65
			margin=0
			dir=right
			end-right=UserList
		}
		place {
			control="ChatActionsButton"
			align=right
			width=38
			height=28
			margin=12
			margin-top=18
			dir=right
		}

		place {
			control="TitlePanel"
			x=5
			y=7
			width=max
			height=52
			margin-right=16
			end-right=ChatActionsButton
		}

		place {
			control="GameInviteBar,TradeInviteBar,ChatInfoBar,VoiceBar"
			height=65
			margin-left=8
			margin-right=8
		}

		place {
			control="VoiceBar"
			y=57
			width=max
			height=40
			dir=down
			end-right=VoiceChat
		}

		place {
			control="TradeInviteBar,GameInviteBar,ChatInfoBar,ChatHistory"
			start=VoiceBar
			align=right
			y=0
			width=max
			height=max
			margin-bottom=75
			margin-left=8
			end-right=UserList
			dir=down
		}

		region {
			name=bottom1
			align=bottom
			width=max
			height=79
		}

		region {
			name=bottom
			align=bottom
			height=50
		}
		place {
			control="TextEntry"
			region=bottom
			width=max
			height=40
			margin-left=8
			margin-bottom=6
			end-right=EmoticonButton
		}

		place {
			control="EmoticonButton"
			region=bottom
			align=right
			width=32
			height=25
			margin-top=9
			end-right=sendbutton
		}

		place {
			control="SendButton"
			region=bottom
			align=right
			width=50
			height=40
			margin-left=8
			margin-right=8
			margin-bottom=6
		}

		place {
			control="StatusLabel"
			region=bottom1
			align=top
			height=20
			margin-left=8
			margin-top=0
		}
	}
}
