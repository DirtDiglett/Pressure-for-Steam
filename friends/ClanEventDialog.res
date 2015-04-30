"friends/ClanEventDialog.res" {
	styles {
		frame {
			minimum-width=320
			minimum-height=175
		}
	}

	layout {
		place {
			control="ImageAvatar"
			x=32
			y=50
		}
	
		place {
			control="LabelGroup,LabelInfo,LabelEventTitle"
			x=90
			y=46
			dir=down
		}
	
		place {
			control="LabelEventTitle"
			start=LabelInfo
			width=max
			height=33
			margin-right=8
			dir=down
		}
	
	
		region {
			name=bottom
			align=bottom
			width=max
			height=51
		}
	
		place {
			control="ViewEventButton,CloseButton"
			region=bottom
			align=right
			width=91
			height=24
			margin-top=14
			margin-right=14
			dir=right
			spacing=8
		}	
	}
}