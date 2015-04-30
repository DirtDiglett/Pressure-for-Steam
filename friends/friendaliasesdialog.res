"friends/friendaliasesdialog.res" {
	styles {
		frame {
			minimum-width=300
			minimum-height=300
		}
	}
	layout {
		place {
			control=Caption
			x=16
			y=45
			margin-right=20
		}
	
		region {
			name="dates"
			align=left
			margin-left=16
			margin-top=85
		}
	
		region {
			name="aliases"
			margin-left=10
			margin-top=85		
			margin-right=20
		}
	
		place {
			control=CloseButton
			align=left
			x=0
			y=0
			width=0
			height=0
		}
	
		place {
			control=FriendAliasesNone
			x=16
			y=70
			width=max
			height=200
			margin-right=16
		}
	
		place {
			control=Date1,Date2,Date3,Date4,Date5,Date6,Date7,Date8,Date9,Date10
			region="dates"
			width=100
			height=15
			dir=down
			spacing=4
		}
	
		place {
			control=Label1,Label2,Label3,Label4,Label5,Label6,Label7,Label8,Label9,Label10
			region="aliases"
			align=left
			width=max
			height=15
			margin-left=100
			dir=down
			spacing=4
		}
	}
}