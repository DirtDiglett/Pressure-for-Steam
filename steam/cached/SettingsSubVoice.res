"steam/cached/SettingsSubVoice.res" {
	layout {
		place {
			control="Label1"
			dir=down
			width=max
			x=18 
			y=21
			margin-right=43		
		}
		
		place {
			control="DeviceName"
			dir=down
			width=340
			height=24
			start=Label1
			y=8
		}
		
		place {
			control="ChangeDeviceButton,ReinitAudio"
			dir=down
			width=340
			height=28
			start=DeviceName
			y=8
			spacing=8
		}
		
		place {
			control="Divider1"
			dir=down
			start=ReinitAudio
			y=16
			width=max
			margin-right=43
		}

		place {
			control="SpeakerLabel,SpeakerVolume"
			dir=down
			width=200
			start=Divider1
			y=16
			spacing=8
			x=240
		}
		
		place {
			control="MicrophoneLabel,MicrophoneVolume"
			dir=down
			width=200
			start=Divider1
			y=16
			spacing=8
		}
			
		place {
			control="TestMicrophone"
			dir=down
			width=340
			height=28
			start=MicrophoneVolume
			y=16
		}
		
		place {
			control="MicMeter"
			dir=down
			start=TestMicrophone
			y=8
			height=25
		}
		
		place {
			control="MicMeter2"
			dir=down
			start=TestMicrophone
			y=8
			height=25
		}
		
		place {
			control="MicBoost"
			dir=right
			start=MicMeter
			y=-2
			x=8
		}

		place {
			control="Divider2"
			dir=down
			start=MicMeter
			y=16
			width=max
			margin-right=43
		}

		place {
			control="WhenActiveLabel"
			dir=down
			start=Divider2
			y=16
		}
		
		place {
			control="TransmitMethodRadioButton1,TransmitMethodRadioButton2"
			dir=down
			start=WhenActiveLabel
			y=8
			spacing=-4
		}
		
		place {
			control="PushToTalkKeyEntry"
			dir=down
			width=240
			height=24
			start=TransmitMethodRadioButton2
			y=-4
			x=28
		}

		place {
			control="RepairAudio"
			height=0
			width=0
		}
	}
}