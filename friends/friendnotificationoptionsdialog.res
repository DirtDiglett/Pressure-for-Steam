"friends/friendnotificationoptionsdialog.res" {
	layout {
		region {
			name="bottomarea"
			align=bottom
			height=51
		}
		
		// Manually place this because Valves alignment is out by 1px, really?
		place {
			control="ReceiveMessagePlaySoundCheck"
			x=39
			y=254
			width=max
		}
		
		place {
			control="OKButton,button1"
			region=bottomarea
			align=right
			width=94
			height=28
			margin-right=14
			margin-top=12
			spacing=8
		}
	}
}
