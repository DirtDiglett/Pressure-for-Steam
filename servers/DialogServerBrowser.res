"Servers/DialogServerBrowser.res" {
	
	controls {
		"CServerBrowserDialog"
		{
			"ControlName"		"Frame"
			"fieldName"		"CServerBrowserDialog"
			"xpos"		"1"
			"ypos"		"1"
			"wide"		"602"
			"tall"		"407"
			"autoResize"		"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
		}
		"GameTabs"
		{
			"ControlName"		"PropertySheet"
			"fieldName"		"GameTabs"
			"xpos"		"1"
			"ypos"		"24"
			"wide"		"638"
			"tall"		"338"
			"autoResize"	"3"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"1"
		}
		"StatusLabel"
		{
			"ControlName"		"Label"
			"fieldName"		"StatusLabel"
			"xpos"		"1"
			"ypos"		"362"
			"wide"		"5000"
			"tall"		"24"
			"autoResize"		"1"
			"pinCorner"		"2"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"		"0"
			"textAlignment"		"west"
			"dulltext"		"0"
			"zpos"	"-1"
			style="status"
		}
	}
	
	styles {
		status {
			bgcolor="none"
			textcolor=lighterGrey
			inset="8 0 0 0"
		}
	}
	
	layout {
		place [!$OSX]  { 
			control="frame_minimize,frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}
		
		place {
			control=CServerBrowserDialog
			width=max
			height=max
			margin-bottom=0
		}
		
		place {
			control="StatusLabel"
			align=bottom
			width=max
			x=0
			margin-bottom=55
			
		}
	}
}
