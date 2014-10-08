"friends/voicebar.res" {
	controls {
		"VoiceBar" {
			"ControlName"		"CVoiceBar"
		}
		
		"micvolume" {
			"ControlName"		"CVoiceTraffic"
		}
		
		"SpeakerVolume" {
			"ControlName"		"CVoiceTraffic"
		}
		
		"action2" {
			"ControlName"		"Button"
			style="Chat_MenuButton_withChrome"
		}

		"StatusLabel" {
			"ControlName"		"Label"
			style="status_label"
		}
		
		"VoiceImage" {
			"ControlName"		"ImagePanel"
			style="voice_image"
			image="resource/icon_voice_chat"
		}
	}
	
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

		status_label {
			font-family=basefont
			textcolor=white
			inset="0 0 0 0"
			
			font-style="outerglow"
			font-outerglow-color="darkestGrey"
			font-outerglow-offset=1
			font-outerglow-filtersize=3
			
			
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
			end-right=action2 
			margin-right=8 
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
			height=24
			margin=8 
			margin-right=10 
			align=right 
			y=0
		}
	}
}