"Friends/FriendsDialog.res" {
	styles {
		// Here we force-set the minimum width to ensure that the search bar is not cut off.
		CFriendsDialog {
			font-family=basefont
			font-style="normal"
			minimum-width=225
			minimum-height=400
		}

		ListPanelSectionHeader {
			font-family=semibold
		}

		FrameTitle {
			bgcolor=none
			textcolor=none
			font-family=basefont
			font-size=1
			font-weight=400

			render {
				//0="fill(x0+1,y0+143,x1-1,y0+144, darkGreyEnd)"
				0="fill(x1-1,y0,x1,y1, darkestGrey)"
			}

			render_bg {
				// Creates the top section
				0="gradient( x0+1, y0+1, x1-1, y0 + 48, grey, lightGreyEnd )"
				21="fill( x0+1, y0+48, x1-1, y0 + 75, lightGreyEnd )"

				1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
				2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel

				3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
				4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased

				5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
				6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased

				// Create the 1px Highlight on top
				7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"

				//8="image_scale(x0+1, y0+77, x1-1, y0+155, graphics/subnav_bg)"

				// 9="fill(x0+1, y0+78, x0+2, y0+115, grey10)"
				// 10="fill(x1-2, y0+78, x1-1, y0+115, grey10)"

				11="fill(x0+1, y0+144, x1-1, y0+230, darkestGrey)" // Single pixel line below the gradient

				// Background for the pageTabs
				// 15="fill(x0+7,y0+114,x0+146,y0+138, darkestGrey)"// Top->Bottom
				// 16="fill(x0+6,y0+115,x0+7,y0+137, darkestGrey)" // Left
				// 17="fill(x0+146,y0+115,x0+147,y0+137, darkestGrey)" // Right
				// 18="fill(x0+7,y0+138,x0+146,y0+139, grey50)"//grey50)"
				// 19="fill(x0+6, y0+137, x0+7, y0+138, grey50)"
				// 20="fill(x0+146, y0+137, x0+147, y0+138, grey50)"

				//21="fill(x0+1,y0+77,x1-1,y0+78, darkestGrey)"
			}
	    }

		    FrameTitle:framefocus {
				bgcolor=none
				textcolor=none
				font-family=basefont
				font-size=1
				font-weight=400
				inset="0 4 0 0" [$OSX]

				render_bg {
					// Creates the top section
					0="gradient( x0+1, y0+1, x1-1, y0 + 48, grey, lightGreyEnd )"
					21="fill( x0+1, y0+48, x1-1, y0 + 75, lightGreyEnd )"

					1="fill(x0+1, y0+1, x0+2, y0+2, bottomDarkPixels)" // Top Left Dark Pixel
					2="fill(x1-2, y0+1, x1-1, y0+2, bottomDarkPixels)" // Top Right Dark Pixel

					3="fill(x0+2, y0+1, x0+3, y0+2, greyHighlightFake)" // Top Left Fake Anti-Aliased
					4="fill(x0+1, y0+2, x0+2, y0+3, greyHighlightFake)" // Top Left Fake Anti-Aliased

					5="fill(x1-3, y0+1, x1-2, y0+2, greyHighlightFake)" // Top Right Fake Anti-Aliased
					6="fill(x1-2, y0+2, x1-1, y0+3, greyHighlightFake)" // Top Right Fake Anti-Aliased

					// Create the 1px Highlight on top
					7="fill( x0+3, y0+1, x1-3, y0+2, greyHighlight)"

					//8="image_scale(x0+1, y0+77, x1-1, y0+155, graphics/subnav_bg)"

					// 9="fill(x0+1, y0+78, x0+2, y0+115, grey10)"
					// 10="fill(x1-2, y0+78, x1-1, y0+115, grey10)"

					11="fill(x0+1, y0+144, x1-1, y0+230, darkestGrey)" // Single pixel line below the gradient

					// Background for the pageTabs
					// 15="fill(x0+7,y0+114,x0+146,y0+138, darkestGrey)"// Top->Bottom
					// 16="fill(x0+6,y0+115,x0+7,y0+137, darkestGrey)" // Left
					// 17="fill(x0+146,y0+115,x0+147,y0+137, darkestGrey)" // Right
					// 18="fill(x0+7,y0+138,x0+146,y0+139, grey50)"//grey50)"
					// 19="fill(x0+6, y0+137, x0+7, y0+138, grey50)"
					// 20="fill(x0+146, y0+137, x0+147, y0+138, grey50)"

					//21="fill(x0+1,y0+77,x1-1,y0+78, darkestGrey)"
				}
			}

		// Used to push the friends section down lower for trickery with the PageTabs.
		Page {
			bgcolor=none
			font-family=basefont
			font-style="none"
			inset="0 10 0 0"
		}

		SectionedlistpanelCollapser {
			font-family=basefont
			font-style="normal"
			padding-top=0
			padding-bottom=-5
			image="graphics/icon_collapse"
			inset="-4 -5 0 0"
			minimum-height=14

			render_bg {}
		}

			SectionedlistpanelCollapser:selected {
				image="graphics/icon_expand"
			}


		// Overriding the default styling for these controls.
		// So far, can't work out a way to move the pagetabs higher from their current position to make the button look.
		PageTab {
			textcolor=white
			font-family=basefont
			font-style="outerglow,regular"
			font-outerglow-color="darkGreyEnd"
			font-outerglow-offset=1
			font-outerglow-filtersize=1
			inset="7 0 0 0"
			minimum-width=68
			minimum-height=32

			render_bg {
				//0="fill(x0+8,y0+6,x1+9,y1-6, blue)"
				1="gradient(x0+10, y0+7, x1+12, y1-5, grey, lightGreyEnd)"
				2="fill(x0+10, y0+7, x1+12, y0+8, greyHighlight)"
				3="fill(x0+10, y0+7, x0+11, y0+8, darkGreyEnd)"
				4="fill(x1+11, y0+7, x1+12, y0+8, darkGreyEnd)"
				5="fill(x0+10, y1-6, x0+11, y1-5, darkGreyEnd)"
				6="fill(x1+11, y1-6, x1+12, y1-5, darkGreyEnd)"
			}
		}

			PageTab:hover {
				textcolor=white

				render_bg {
					0="gradient(x0+10, y0+7, x1+12, y1-5, greyHighlight, grey)"
					1="fill(x0+10, y0+7, x1+12, y0+8, lightestGreyHighlight)"
					3="fill(x0+10, y0+7, x0+11, y0+8, darkGreyEnd)"
					4="fill(x1+11, y0+7, x1+12, y0+8, darkGreyEnd)"
					5="fill(x0+10, y1-6, x0+11, y1-5, darkGreyEnd)"
					6="fill(x1+11, y1-6, x1+12, y1-5, darkGreyEnd)"
				}
			}

			PageTab:selected {
				textcolor=blue

				render_bg {
					//0="fill(x0+8, y0+6, x1+9, y1-6, darkestGrey)"
					//1="fill(x1+9, y0+7, x1+10, y1-5, darkestGrey)"
				}
			}

		"CFriendsDialog SectionedListPanel" {
		    bgcolor=none
		    font-family=basefont

		    render_bg {
			    // background fill to overwrite the normal listPanel background
				//0  = "fill( x0, y0, x1, y1, darkestGrey)"
		    }
	    }

	    CFriendsListSectionHeader {
			textcolor=white
			font-family=semibold
			font-style="regular,normal"
			inset="0 0 0 0"

			render_bg {
				0="gradient(x0-22, y0+1, x1, y1, grey, lightGreyEnd)"
				1="fill(x0-22, y0, x1, y0+1, greyHighlight)"
				2="gradient(x0-22,y1,x1,y1+1, darkGrey, none)"
			}
	    }

		// The actual whole dialog window itself.
		FriendsPanel {
			bgcolor="darkestGrey"

			render {
				//0="fill(x0,y0+143,x1,y0+144, darkestGrey)"
				0="fill(x1-1,y0,x1,y1, darkestGrey)"
			}
			render_bg {
			//	0="fill(x0,y0,x1,y1, darkestGrey)"
				1="fill( x0, y1-16, x1, y1-15, darkestGrey )"
				2="fill( x0+1, y1-15, x1-1, y1-14, greyHighlight )"
				3="gradient( x0+1, y1-14, x1-1, y1-1, grey, lightGreyEnd )"
			}
		}

		"CFriendsDialog SectionedListPanel" {
			font-family=basefont
			font-style="regular,normal"
		}

		AddFriendsButton  {
			textcolor="none"
			font-family=basefont
			font-size=15
			font-weight=400

			render {
				// 0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
				// 0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
			}
			render_bg {}
		}

			AddFriendsButton:hover {
				textcolor="none"
				render_bg {}
			}

		RootMenu {
			bgcolor="none"
			textcolor="none"
		}

		// Hide the word "Friends" on the title area.
		FriendsTitle [$OSX] {
			bgcolor=none
			textcolor=none
			font-family=basefont
			font-size=1
			font-weight=400
		}

			FriendsTitle:FrameFocus [$OSX] {
				bgcolor="none"
				textcolor="none"
				font-family=basefont
				font-size=1
				font-weight=400
			}

		"MenuBar MenuButton" {
			textcolor=none

			render_bg {
				0="image( x0, y0, x1,y1, graphics/supermenus/friends/normal )"
			}
		}

			"MenuBar MenuButton:hover" {
				textcolor=none

				render_bg {
					0="image( x0, y0, x1,y1, graphics/supermenus/friends/hover )"
				}
			}

			"MenuBar MenuButton:selected" {
				textcolor=none

				render_bg {
					0="image( x0, y0, x1,y1, graphics/supermenus/friends/active )"
				}
			}

		FriendsSearch {
			textcolor="darkestGrey"
			font-family=basefont
			font-size=15
			font-weight=400
			padding-left=4
			padding-right=20
			inset-left=0
			minimum-width=110

			render {
				6="gradient(x1, y0-5, x1+9999, y0+61, lightGreyEnd, darkGreyEnd)"
			}

			render_bg {
				6="gradient(x0-27, y0-5, x1+7, y0+61, lightGreyEnd, darkGreyEnd)"
				1="image(x0-19, y0, x0+3, y0+25, graphics/search/active/left)"
				2="image(x1-14, y0, x1-2, y0+25, graphics/search/active/right)"
				3="image_scale(x0+3, y0, x1-14, y0+25, graphics/search/active/inner)"

				//4="fill(x0-24, y0-5, x1+4, y0-4, darkestGrey)"
				//5="fill(x0-23, y0-4, x1+3, y0-3, greyHighlight)"
				7="fill(x0-27, y0+61, x1+7, y0+62, darkestGrey)"

				15="fill(x0-19,y0+33,x0+121,y0+55, darkestGrey)"// Top->Bottom
				16="fill(x0-20,y0+34,x0-19,y0+54, darkestGrey)" // Left
				17="fill(x0+121,y0+34,x0+122,y0+54, darkestGrey)" // Right
				18="fill(x0-19,y0+55,x0+121,y0+56, grey50)"//grey50)"
				19="fill(x0-20, y0+54, x0-19, y0+55, grey50)"
				20="fill(x0+121, y0+54, x0+122, y0+55, grey50)"
			}
		}

			// Typed in, as well as hovered.
			FriendsSearch:hover {
				textcolor="darkGreyEnd"
				padding-left=4
			}

				FriendsSearch:focus {
					render_bg {
						6="gradient(x0-27, y0-5, x1+7, y0+61, lightGreyEnd, darkGreyEnd)"
						1="image(x0-19, y0, x0+3, y0+25, graphics/search/active/left)"
						2="image(x1-14, y0, x1-2, y0+25, graphics/search/active/right)"
						3="image_scale(x0+3, y0, x1-14, y0+25, graphics/search/active/inner)"

						//4="fill(x0-24, y0-5, x1+4, y0-4, darkestGrey)"
						//5="fill(x0-23, y0-4, x1+3, y0-3, greyHighlight)"
						7="fill(x0-27, y0+61, x1+7, y0+62, darkestGrey)"

						15="fill(x0-19,y0+33,x0+121,y0+55, darkestGrey)"// Top->Bottom
						16="fill(x0-20,y0+34,x0-19,y0+54, darkestGrey)" // Left
						17="fill(x0+121,y0+34,x0+122,y0+54, darkestGrey)" // Right
						18="fill(x0-19,y0+55,x0+121,y0+56, grey50)"//grey50)"
						19="fill(x0-20, y0+54, x0-19, y0+55, grey50)"
						20="fill(x0+121, y0+54, x0+122, y0+55, grey50)"
					}
				}


				FriendsSearch:focus [$OSX] {
					render_bg {
						1="image(x0-19, y0-1, x0+3, y0+24, graphics/search/active/left)"
						2="image(x1-14, y0-1, x1-2, y0+24, graphics/search/active/right)"
						3="image_scale(x0+3, y0-1, x1-14, y0+24, graphics/search/active/inner)"
					}
				}

				FriendsSearch:active [$OSX] {
					render_bg {
						1="image(x0-19, y0-1, x0+3, y0+24, graphics/search/active/left)"
						2="image(x1-14, y0-1, x1-2, y0+24, graphics/search/active/right)"
						3="image_scale(x0+3, y0-1, x1-14, y0+24, graphics/search/active/inner)"
					}
				}

			// Default State when nothing in it.
			FriendsSearch:empty [!$OSX] {
				textcolor="lightestGrey"
				font-family=basefont
				font-style=italic
				padding-left=4

				render_bg {
					6="gradient(x0-27, y0-5, x1+7, y0+61, lightGreyEnd, darkGreyEnd)"
					1="image(x0-19, y0, x0+3, y0+25, graphics/search/left)"
					2="image(x1-14, y0, x1-2, y0+25, graphics/search/right)"
					3="image_scale(x0+3, y0, x1-14, y0+25, graphics/search/inner)"

					//4="fill(x0-24, y0-5, x1+4, y0-4, darkestGrey)"
					//5="fill(x0-23, y0-4, x1+3, y0-3, greyHighlight)"
					7="fill(x0-27, y0+61, x1+7, y0+62, darkestGrey)"

					15="fill(x0-19,y0+33,x0+121,y0+55, darkestGrey)"// Top->Bottom
					16="fill(x0-20,y0+34,x0-19,y0+54, darkestGrey)" // Left
					17="fill(x0+121,y0+34,x0+122,y0+54, darkestGrey)" // Right
					18="fill(x0-19,y0+55,x0+121,y0+56, grey50)"//grey50)"
					19="fill(x0-20, y0+54, x0-19, y0+55, grey50)"
					20="fill(x0+121, y0+54, x0+122, y0+55, grey50)"
				}
			}

				FriendsSearch:empty:focus [!$OSX] {
					render_bg {
						6="gradient(x0-27, y0-5, x1+7, y0+61, lightGreyEnd, darkGreyEnd)"
						1="image(x0-19, y0, x0+3, y0+25, graphics/search/active/left)"
						2="image(x1-14, y0, x1-2, y0+25, graphics/search/active/right)"
						3="image_scale(x0+3, y0, x1-14, y0+25, graphics/search/active/inner)"

						//4="fill(x0-24, y0-5, x1+4, y0-4, darkestGrey)"
						//5="fill(x0-23, y0-4, x1+3, y0-3, greyHighlight)"
						7="fill(x0-27, y0+61, x1+7, y0+62, darkestGrey)"

						15="fill(x0-19,y0+33,x0+121,y0+55, darkestGrey)"// Top->Bottom
						16="fill(x0-20,y0+34,x0-19,y0+54, darkestGrey)" // Left
						17="fill(x0+121,y0+34,x0+122,y0+54, darkestGrey)" // Right
						18="fill(x0-19,y0+55,x0+121,y0+56, grey50)"//grey50)"
						19="fill(x0-20, y0+54, x0-19, y0+55, grey50)"
						20="fill(x0+121, y0+54, x0+122, y0+55, grey50)"
					}
				}

				FriendsSearch:empty:active [!$OSX] {
					render_bg {
						6="gradient(x0-27, y0-5, x1+7, y0+61, lightGreyEnd, darkGreyEnd)"
						1="image(x0-19, y0, x0+3, y0+25, graphics/search/active/left)"
						2="image(x1-14, y0, x1-2, y0+25, graphics/search/active/right)"
						3="image_scale(x0+3, y0, x1-14, y0+25, graphics/search/active/inner)"

						//4="fill(x0-24, y0-5, x1+4, y0-4, darkestGrey)"
						//5="fill(x0-23, y0-4, x1+3, y0-3, greyHighlight)"
						7="fill(x0-27, y0+61, x1+7, y0+62, darkestGrey)"

						15="fill(x0-19,y0+33,x0+121,y0+55, darkestGrey)"// Top->Bottom
						16="fill(x0-20,y0+34,x0-19,y0+54, darkestGrey)" // Left
						17="fill(x0+121,y0+34,x0+122,y0+54, darkestGrey)" // Right
						18="fill(x0-19,y0+55,x0+121,y0+56, grey50)"//grey50)"
						19="fill(x0-20, y0+54, x0-19, y0+55, grey50)"
						20="fill(x0+121, y0+54, x0+122, y0+55, grey50)"
					}
				}

				FriendsSearch:empty:focus [$OSX] {
					render_bg {
						1="image(x0-19, y0-1, x0+3, y0+24, graphics/search/active/left)"
						2="image(x1-14, y0-1, x1-2, y0+24, graphics/search/active/right)"
						3="image_scale(x0+3, y0-1, x1-14, y0+24, graphics/search/active/inner)"
					}
				}

				FriendsSearch:empty:active [$OSX] {
					render_bg {
						1="image(x0-19, y0-1, x0+3, y0+24, graphics/search/active/left)"
						2="image(x1-14, y0-1, x1-2, y0+24, graphics/search/active/right)"
						3="image_scale(x0+3, y0-1, x1-14, y0+24, graphics/search/active/inner)"
					}
				}

			FriendsSearch:empty [$OSX] {
				textcolor="lightestGrey"
				font-family=basefont
				font-style=italic
				padding-left=0
			}

				FriendsSearch:empty:hover [!$OSX] {
					textcolor="lightGreyEnd"
					font-style=italic
					padding-left=4
				}

				FriendsSearch:empty:hover [$OSX] {
						textcolor="lightGreyEnd"
						font-style=italic
						padding-left=0
				}

			FriendsSearch:disabled [!$OSX] {
				textcolor="None"
				font-family=basefont
				font-style=italic
				padding-left=4
			}

			FriendsSearch:disabled [$OSX] {
				textcolor="None"
				font-family=basefont
				font-style=italic
				padding-left=0
			}

		// Used as an overlay to round off the buttons
		FriendsSearchIcon {
			bgcolor="none"
			textcolor=none

			render_bg {
				// 0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
				// 0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
			}
		}

			FriendsSearchIcon:disabled {
				bgcolor="none"
				inset="0 0 0 0"

				render_bg {
					//0="fill(x0, y0, x0+1, y0+1, darkestGrey)"
					//0="fill(x0, y1-1, x0+1, y1, darkestGrey)"
				}
			}


		// This will only affect the HEADERS inside it for some reason
		"CFriendsDialog SectionedListPanelInterior" {
			bgcolor=none
			selectedtextcolor=blue
			selectedbgcolor=green
			shadowtextcolor=darkGreyEnd	// the color of disabled line items
			textcolor=white
			font-family=semibold
			font-style="regular"
			font-size=15
			font-weight=400
			inset="0 -3 0 0"
			minimum-width=800	// if window is made larger than this, it looks different from if it's smaller
		}

			"CFriendsDialog SectionedListPanelInterior:scrollbar" {
				font-family=semibold
				font-style="regular,normal"
				padding-right=15
			}
	}

 	layout {
		place [$OSX] {
			control="frame_title"
			align=center
			x=0
			y=0
			width=max
			height=20
		}

		place [!$OSX] {
			control="frame_title"
			visible=0
			x=0
			y=0
			width=max
			height=0
		}

 		// the title bar is missing, so increase the size of the grip
		place {
			control="frame_captiongrip"
			width=max
			height=38
			margin=2
		}

		place [!$OSX] {
			control="MenuBar"
			margin-left=2
			width=62
			height=24
			margin-top=-1
		}

		place {
			control="FriendPanelSelf"
			x=10
			y=25
			width=max
		}

		place {
			control="friends_search"
			start="FriendPanelSelf"
			//y=85
			width=192 // should be max but right side is buggy if window size is changed using right-side handle of window border (only if box is empty)
			height=25
			margin-left=18
			margin-right=8
			margin-top=4
			dir=down
		}

		place {
			control="FriendsDialogSheet"
			align=left
			start="friends_search"
			dir=down
			width=max
			height=max
			margin-left=-29
			margin-top=-2
			margin-right=0
			margin-bottom=16
		}

		// Use this for cleverness to make the buttons.
		place {
			control="friends_search_icon" // this rounds off the corners for the pagetab buttons; it was never clickable
			y=0
			margin-left=7
			width=0
			height=0
			dir=right
		}

		place {
			control="addFriendsButton" // this rounds off the corners for the pagetab buttons; it's still clickable
			width=0
			y=0
			height=0
			margin-left=145
			dir=right
		}

		place {
			control="NoFriendsAddFriendButton"
			width=141
			height=24
			margin-left=6
			margin-top=83
		}

		place {
			control="DownLabel"
			width=max
			height=max
			start="NoFriendsAddFriendButton"
			margin-left=2
			margin-top=5
			margin-right=6
			dir=down
		}
 	}
}