"steam/cached/SettingsSubInterface.res" {
	controls {}
	
	styles {
		ComboBox { // DropDowns
			font-family=basefont
			font-size=13
			textcolor="white"

			//textcolor="red" [$OSX] //Test for Mac to see if we can define in same styles option
			
			font-style="none"
			
			inset="3 0 0 0"
				
			bgcolor=none
			
			render_bg {
		        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 1, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 2, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 2, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 1, x1 - 2, y1, darkestGrey )" // Bottom
		
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
					11="fill( x1 - 2, y1 - 2, x1 - 1, y1 - 1, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 2, x1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 1, x1 - 1, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 2, x0 + 2, y1 - 1, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 2, x0 + 1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 1, x0 + 2, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 2, x1 - 2, y1 - 1, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 2, x0 + 3, y1 - 1, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1, x1-1, y1+1, grey25)" // bottom right
				46="fill(x1-1, y1-1, x1, y1, grey25)" // bottom right
				47="fill(x0+1, y1, x0+2, y1+1, grey25)" // bottom left
				48="fill(x0, y1-1, x0+1, y1, grey25)" // bottom left
				49="fill(x0+2, y1, x1-2, y1+1, grey50)" // single 1px line.	
				
				50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown)"	
			}
	    }
	    
	    ComboBox:hover {
				font-family=basefont
				font-size=13
				textcolor="trueWhite"
				
				font-style="none"
					
				bgcolor=none

				render_bg {
			        // background fill
			        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 1, greyHighlight, grey )" // Background Gradient
			                
			        // Dark Borders around
			        1="fill( x0, y0 + 2, x0 + 1, y1 - 2, darkestGrey )" // Left
			        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
			        3="fill( x1 - 1, y0 + 2, x1, y1 - 2, darkestGrey )" // Right
			        4="fill( x0 + 2, y1 - 1, x1 - 2, y1, darkestGrey )" // Bottom
			
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
						11="fill( x1 - 2, y1 - 2, x1 - 1, y1 - 1, darkCornerPixels )" // Darkest Pixel
						12="fill( x1 - 1, y1 - 2, x1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						13="fill( x1 - 2, y1 - 1, x1 - 1, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
						// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
						14="fill( x0 + 1, y1 - 2, x0 + 2, y1 - 1, darkCornerPixels )" // Darkest Pixel
						15="fill( x0, y1 - 2, x0 + 1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						16="fill( x0 + 1, y1 - 1, x0 + 2, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
						
					// Single Pixel Highlight Line.
					17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, lightestGreyHighlight )"
					
						// Fake Anti-Aliasing for the Single Pixel Highlight
						18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, topLightPixelsHighlighted )" // Top Left		
						19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, topLightPixelsHighlighted )" // Top Left		
						20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, topLightPixelsHighlighted )" // Top Right
						21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, topLightPixelsHighlighted )" // Top Right
					
					// Fake Anti-Aliasing for the bottom corners.
					22="fill( x1 - 3, y1 - 2, x1 - 2, y1 - 1, bottomDarkPixelsHighlighted )" // Bottom Right
					23="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Right
					24="fill( x0 + 2, y1 - 2, x0 + 3, y1 - 1, bottomDarkPixelsHighlighted )" // Bottom Left
					25="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, bottomDarkPixelsHighlighted )" // Bottom Left	
					
					
					// Drop-shadow
					45="fill(x1-2, y1, x1-1, y1+1, grey25)" // bottom right
					46="fill(x1-1, y1-1, x1, y1, grey25)" // bottom right
					47="fill(x0+1, y1, x0+2, y1+1, grey25)" // bottom left
					48="fill(x0, y1-1, x0+1, y1, grey25)" // bottom left
					49="fill(x0+2, y1, x1-2, y1+1, grey50)" // single 1px line.	
										
					50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown_hover)"	
	      }
	    }
	    
	    ComboBox:focus {
				textcolor="white"
				selectedtextcolor="white"
				font-style="none"
					
				bgcolor=none
			
				render_bg {
		        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 1, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 2, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 2, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 1, x1 - 2, y1, darkestGrey )" // Bottom
		
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
					11="fill( x1 - 2, y1 - 2, x1 - 1, y1 - 1, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 2, x1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 1, x1 - 1, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 2, x0 + 2, y1 - 1, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 2, x0 + 1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 1, x0 + 2, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 2, x1 - 2, y1 - 1, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 2, x0 + 3, y1 - 1, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1, x1-1, y1+1, grey25)" // bottom right
				46="fill(x1-1, y1-1, x1, y1, grey25)" // bottom right
				47="fill(x0+1, y1, x0+2, y1+1, grey25)" // bottom left
				48="fill(x0, y1-1, x0+1, y1, grey25)" // bottom left
				49="fill(x0+2, y1, x1-2, y1+1, grey50)" // single 1px line.	
				
				50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown)"	
			}
	    }
	    
	    ComboBox:focus:hover {
	   			textcolor="white"
				font-style="none"
				
				padding-left=3
				padding-top=2
				padding-bottom=1
					
				bgcolor=none
			
				render_bg {
		        // background fill
		        0 = "gradient( x0 + 1, y0 + 1, x1 - 1, y1 - 1, grey, lightGreyEnd )" // Background Gradient
		                
		        // Dark Borders around
		        1="fill( x0, y0 + 2, x0 + 1, y1 - 2, darkestGrey )" // Left
		        2="fill( x0 + 2, y0, x1 - 2, y0 + 1, darkestGrey )" // Top
		        3="fill( x1 - 1, y0 + 2, x1, y1 - 2, darkestGrey )" // Right
		        4="fill( x0 + 2, y1 - 1, x1 - 2, y1, darkestGrey )" // Bottom
		
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
					11="fill( x1 - 2, y1 - 2, x1 - 1, y1 - 1, darkCornerPixels )" // Darkest Pixel
					12="fill( x1 - 1, y1 - 2, x1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					13="fill( x1 - 2, y1 - 1, x1 - 1, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					
					// BOTTOM-LEFT corner pixels (Fake Anti-Aliasing)
					14="fill( x0 + 1, y1 - 2, x0 + 2, y1 - 1, darkCornerPixels )" // Darkest Pixel
					15="fill( x0, y1 - 2, x0 + 1, y1 - 1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
					16="fill( x0 + 1, y1 - 1, x0 + 2, y1, darkestGreyFake )" // Partially-Transparent (Fake Anti-Aliasing)
				
				// Single Pixel Highlight Line.
				17="fill( x0 + 3, y0 + 1, x1 - 3, y0 + 2, greyHighlight )"
				
					// Fake Anti-Aliasing for the Single Pixel Highlight
					18="fill( x0 + 1, y0 + 2, x0 + 2, y0 + 3, greyHighlightFake )" // Top Left		
					19="fill( x0 + 2, y0 + 1, x0 + 3, y0 + 2, greyHighlightFake )" // Top Left		
					20="fill( x1 - 2, y0 + 2, x1 - 1, y0 + 3, greyHighlightFake )" // Top Right
					21="fill( x1 - 3, y0 + 1, x1 - 2, y0 + 2, greyHighlightFake )" // Top Right
				
				// Fake Anti-Aliasing for the bottom corners.
				22="fill( x1 - 3, y1 - 2, x1 - 2, y1 - 1, bottomDarkPixels )" // Bottom Right
				23="fill( x1 - 2, y1 - 3, x1 - 1, y1 - 2, bottomDarkPixels )" // Bottom Right
				24="fill( x0 + 2, y1 - 2, x0 + 3, y1 - 1, bottomDarkPixels )" // Bottom Left
				25="fill( x0 + 1, y1 - 3, x0 + 2, y1 - 2, bottomDarkPixels )" // Bottom Left	
				
				
				// Drop-shadow
				45="fill(x1-2, y1, x1-1, y1+1, grey25)" // bottom right
				46="fill(x1-1, y1-1, x1, y1, grey25)" // bottom right
				47="fill(x0+1, y1, x0+2, y1+1, grey25)" // bottom left
				48="fill(x0, y1-1, x0+1, y1, grey25)" // bottom left
				49="fill(x0+2, y1, x1-2, y1+1, grey50)" // single 1px line.	
				
				50="image(x1-14, y0+9, x1-7, y0+20, graphics/dropdown)"	
			}
	    }
	}
	
	layout {
		place {
			control="Label4"
			dir=down
			x=18 
			y=21
			margin-right=43
		}
		
		place {
			control="LanguageCombo"
			dir=down
			width=340
			height=28
			start=Label4
			y=4
		}
		
		place {
			control="TranslationLabel"
			dir=down
			start=LanguageCombo
			y=16
		}

		place {
			control="Divider1"
			dir=down
			start=TranslationLabel
			y=16
			width=max
			margin-right=43
		}

		place {
			control="Label2"
			dir=down
			start=Divider1
			y=16
		}
		
		place {
			control="FavoriteWindowCombo"
			dir=down width=340
			height=28
			start=Label2
			y=4
		}
		
		place {
			control="Label3"
			dir=down
			start=FavoriteWindowCombo
			dir=down
			y=16
		}
		
		place {
			control="SkinCombo"
			dir=down
			width=340
			height=28
			start=Label3
			y=4
		}
		
		place {
			controls=AutoLaunchCheck,BigPictureModeCheck,DWriteCheck,UrlBarCheck,H264HWAccelCheck
			dir=down
			start=SkinCombo
			y=10
			spacing=-4
		}
		
		place {
			control="Divider2"
			dir=down
			start=H264HWAccelCheck
			y=10
			width=max
			margin-right=43
		}

		place {
			controls=NotifyAvailableGamesCheck
			dir=down
			width=max
			start=Divider2
			margin-right=43
			y=16
		}
		
		place {
			control="SetJumpListOptionsButton"
			dir=down
			width=340
			height=28
			start=NotifyAvailableGamesCheck
			y=8
		}

		place {
			control="Label1"
			height=0
			width=0
		}
	}
}
