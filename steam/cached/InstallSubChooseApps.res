"steam/cached/InstallSubChooseApps.res"
{
	"InstallSubChooseApps"
	{
		"ControlName"		"CInstallSubChooseApps"
		"fieldName"		"InstallSubChooseApps"
		"xpos"		"8"
		"ypos"		"48"
		"wide"		"416"
		"tall"		"342"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"WizardWide"		"0"
		"WizardTall"		"0"
	}
	"GameCheckButtonList"
	{
		"ControlName"		"CheckButtonList"
		"fieldName"		"GameCheckButtonList"
		"xpos"		"9"
		"ypos"		"48"
		"wide"		"444"
		"tall"		"159"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"8"
		"ypos"		"4"
		"wide"		"340"
		"tall"		"43"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Install_SelectGames"
		"textAlignment"		"west"
		"wrap"		"1"
	}
	"InstallSize"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSize"
		"xpos"		"10"
		"ypos"		"212"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceRequired"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"DriveSpace"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpace"
		"xpos"		"10"
		"ypos"		"232"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceAvailable"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"DriveSpaceLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpaceLabel"
		"xpos"		"201"
		"ypos"		"232"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"101247 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"InstallSizeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSizeLabel"
		"xpos"		"201"
		"ypos"		"212"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"4801 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
		
	"InstallFolderLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallFolderLabel"
		"xpos"		"10"
		"ypos"		"252"
		"wide"		"200"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_ChooseInstallFolder"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallFolderCombo"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"InstallFolderCombo"
		"xpos"		"10"
		"ypos"		"274"
		"wide"		"432"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"textAlignment"		"west"
		"wrap"		"0"
	}
}

	layout
	{	
			place { 
			control="frame_close" 
			align-right
			margin-top=-2 
			margin-right=6 
			spacing=-8
			width=20 
			height=16
			}
		place { control="CInstallSubChooseApps" x=0 y=0 width=max height=max margin= 0 }
		place { control="GameCheckButtonList" x=40 y=114 width=388 height=300 margin=0 }
		place { control="InstallSize" x=24 y=80 width=187 height=24 margin=0 }
		place { control="DriveSpace" x=24 y=106 width=184 height=24 margin=0 }
		place { control="DriveSpaceLabel" x=220 y=106 width=200 height=24 margin=0 }
		place { control="InstallSizeLabel" x=220 y=80 width=200 height=24 margin=0 }
		place { control="Label1" x=24 y=22 width=410 height=40 margin=0 }

		place { control="InstallFolderLabel" x=24 y=164 width=200 height=24 margin=0 }
		place { control="InstallFolderCombo" x=24 y=220 width=400 height=24 margin=0 }
	}
}

