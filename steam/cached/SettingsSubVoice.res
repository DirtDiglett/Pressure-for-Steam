"steam/cached/SettingsSubVoice.res" {
	layout {
		place {
			control="Label1"
			x=18
			y=21
			width=max
			margin-right=43
			dir=down
		}
		place {
			control="DeviceName"
			start=Label1
			y=8
			width=340
			height=24
			dir=down
		}
		place {
			control="ChangeDeviceButton,ReinitAudio"
			start=DeviceName
			y=8
			width=340
			height=28
			dir=down
			spacing=8
		}
		place {
			control="Divider1"
			start=ReinitAudio
			y=16
			width=max
			margin-right=43
			dir=down
		}
		place {
			control="SpeakerLabel,SpeakerVolume"
			start=Divider1
			x=240
			y=16
			width=200
			dir=down
			spacing=8
		}
		place {
			control="MicrophoneLabel,MicrophoneVolume"
			start=Divider1
			y=16
			width=200
			dir=down
			spacing=8
		}
		place {
			control="TestMicrophone"
			start=MicrophoneVolume
			y=16
			width=340
			height=28
			dir=down
		}
		place {
			control="MicMeter"
			start=TestMicrophone
			y=8
			height=25
			dir=down
		}
		place {
			control="MicMeter2"
			start=TestMicrophone
			y=8
			height=25
			dir=down
		}
		place {
			control="MicBoost"
			start=MicMeter
			x=8
			y=-2
			dir=right
		}
		place {
			control="Divider2"
			start=MicMeter
			y=16
			width=max
			margin-right=43
			dir=down
		}
		place {
			control="WhenActiveLabel"
			start=Divider2
			y=16
			dir=down
		}
		place {
			control="TransmitMethodRadioButton1,TransmitMethodRadioButton2"
			start=WhenActiveLabel
			y=8
			spacing=-4
			dir=down
		}
		place {
			control="PushToTalkKeyEntry"
			start=TransmitMethodRadioButton2
			x=28
			y=-4
			width=240
			height=24
			dir=down
		}
		place {
			control="RepairAudio"
			width=0
			height=0
		}
	}
}