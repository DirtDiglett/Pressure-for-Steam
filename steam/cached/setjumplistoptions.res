"steam/cached/SetJumplistOptions.res" {
	layout {
		place [!$OSX]  { 
			control="frame_close" 
			align=right 
			margin-top=-2 
			margin-right=6 
			spacing=-9 
		}

		place {
			control=Label1
			x=32
			y=53
			width=max
			margin-right=32
		}

		place {
			control="ShowOnlineStatus,ShowAwayStatus,ShowBusyStatus,ShowAppearOfflineStatus"
			start="Label1"
			y=4
			spacing=-4
			dir=down
		}

		place {
			control="Label2"
			start=ShowAppearOfflineStatus
			y=16
			dir=down
		}

		place {
			controls="ShowStore,ShowMyGames,ShowCommunity,ShowFriendActivity,ShowFriends,ShowMusicPlayer,ShowScreenshots,ShowServers,ShowSettings,ShowBigPicture,ShowExit"
			dir=down
			start=Label2
			y=4
			spacing=-4
		}
		
		region {
			name="bottom"
			align=bottom
			height=51
			width=max
		}
		
		place {
			control="OkButton,CancelButton"
			region=bottom
			align=right
			margin-right=14
			margin-top=14
			spacing=8
			width=90
		}

		place {
			control="Divider1,Divider2"
			height=0
			width=0
		}
	}
}