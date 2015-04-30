"Servers/DialogServerBrowser.res" {
	styles {
		status {
			bgcolor=none
			textcolor=lightestGrey
			inset="8 0 0 0"
		}
	}
	
	layout {
		region {
			name=bottom
			align=bottom
			height=51
			width=max
		}
		
		place {
			control=StatusLabel
			region=bottom
			align=bottom
			width=max
			margin-bottom=6
		}
	}
}