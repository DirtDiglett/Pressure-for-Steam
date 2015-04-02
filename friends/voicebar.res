"friends/voicebar.res" {
	styles {
		CVoiceBar {
			bgcolor=none
			
			render_bg {
				0="fill(x0,y0,x1,y1, darkestGrey)"
				1="gradient(x0+1,y0+1,x1,y1-1, grey, lightGreyEnd)"
				2="fill(x0+1,y0+1,x1,y0+2, greyHighlight)"
			}
		}
		
		Chat_MenuButton_withChrome {
			minimum-width=80
		}
		
			Chat_MenuButton_withChrome:hover {
				bgcolor=none
				textcolor="trueWhite"
				font-family=basefont
				font-size=15
				padding-left=3
				padding-top=2
				padding-bottom=1
					
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
				}
			}

		status_label {
			textcolor=white
			font-family=basefont
			font-style="outerglow"
			font-outerglow-color="darkestGrey"
			font-outerglow-offset=1
			font-outerglow-filtersize=3
			inset="0 0 0 0"
		}

		CVoiceTraffic {}
		
		voice_image {}
	}
	
	layout {
		//Icon
		place { 
			control="VoiceImage" 
			x=10 
			y=8
			width=24 
			height=24 
		}
		
		region { 
			name=container 
			height=24 
		}
		
		//Content
		place { 
			control="StatusLabel" 
			align=left-center
			x=40
			y=0
			height=18
			margin-right=8
			end-right=action2
		}
		
		place { 
			control="micvolume,speakervolume" 
			align=left-center 
			x=10 
			width=60 
			height=24
			spacing=15 
		}

		//Button
		place { 
			control="action2" 
			align=right
			y=0
			height=24
			margin=8
			margin-right=10
		}
	}
}