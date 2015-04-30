"steam/cached/SetJumplistOptions.res" {
	layout {
		region {
			name="bottom"
			align=bottom
			height=51
			width=max
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
			dir=down
			spacing=-4
		}

		place {
			control="Label2"
			start=ShowAppearOfflineStatus
			y=16
			dir=down
		}

		place {
			controls="ShowStore,ShowMyGames,ShowCommunity,ShowFriendActivity,ShowFriends,ShowMusicPlayer,ShowScreenshots,ShowServers,ShowSettings,ShowBigPicture,ShowExit"
			start=Label2
			y=4
			dir=down
			spacing=-4
		}

		place {
			control="OkButton,CancelButton"
			region=bottom
			align=right
			width=90
			height=28
			margin-right=14
			margin-top=12
			spacing=8
		}

		place {
			control="Divider1,Divider2"
			height=0
			width=0
		}
	}
}