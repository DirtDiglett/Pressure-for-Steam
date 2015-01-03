"steam/cached/InstallSubChooseApps_SingleApp.res"
{
	"InstallSubChooseApps"
	{
		"ControlName"		"CInstallSubChooseApps"
		"fieldName"		"InstallSubChooseApps"
		"xpos"		"8"
		"ypos"		"48"
		"wide"		"388"
		"tall"		"300"
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
		"xpos"		"40"
		"ypos"		"114"
		"wide"		"280"
		"tall"		"30"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"InstallSize"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSize"
		"xpos"		"24"
		"ypos"		"80"
		"wide"		"187"
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
		"xpos"		"24"
		"ypos"		"106"
		"wide"		"184"
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
		"xpos"		"220"
		"ypos"		"106"
		"wide"		"200"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"148805 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"InstallSizeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSizeLabel"
		"xpos"		"220"
		"ypos"		"80"
		"wide"		"200"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"380 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"24"
		"ypos"		"22"
		"wide"		"410"
		"tall"		"40"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallGameInfo"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"DownloadTimeInfo"
	{
		"ControlName"		"Label"
		"fieldName"		"DownloadTimeInfo"
		"xpos"		"220"
		"ypos"		"138"
		"wide"		"200"
		"tall"		"48"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallDownloadTime_Info"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	"DownloadTimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"DownloadTimeLabel"
		"xpos"		"24"
		"ypos"		"133"
		"wide"		"189"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallDownloadTime"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallFolderLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallFolderLabel"
		"xpos"		"24"
		"ypos"		"164"
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
		"xpos"		"24"
		"ypos"		"192"
		"wide"		"400"
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

	layout
	{	
		place { control="frame_minimize,frame_maximize,frame_close" align=right width=34 height=27 }

		place { control="CInstallSubChooseApps" x=0 y=0 width=max height=max margin= 0 }
		place { control="GameCheckButtonList" x=40 y=114 width=388 height=300 margin=0 }
		place { control="InstallSize" x=24 y=80 width=187 height=24 margin=0 }
		place { control="DriveSpace" x=24 y=106 width=184 height=24 margin=0 }
		place { control="DriveSpaceLabel" x=220 y=106 width=200 height=24 margin=0 }
		place { control="InstallSizeLabel" x=220 y=80 width=200 height=24 margin=0 }
		place { control="Label1" x=24 y=22 width=410 height=40 margin=0 }
		place { control="DownloadTimeInfo" x=220 y=138 width=200 height=48 margin=0 }
		place { control="DownloadTimeLabel" x=24 y=133 width=189 height=24 margin=0 }
		place { control="InstallFolderLabel" x=24 y=164 width=200 height=24 margin=0 }
		place { control="InstallFolderCombo" x=24 y=250 width=400 height=24 margin=0 }
	}
}
