"steam/cached/SettingsSubFriends.res" {
	styles {
		textentry {
			font-size=18
		}
		URLLabel {
			textcolor=none
		}
		URLLabel {
			textcolor=none
		}
	}
	layout {
		place {
			control="Label1,Label2,URLLabel1,Label3"
			width=0
			height=0
		}
		place {
			control="ImageAvatar"
			x=22
			y=29
		}
		place {
			control="ImageAvatarOverlay"
			x=18
			y=25
			height=46
		}
		place {
			control="URLLabel2"
			y=25
			x=18
			width=40
			height=40
		}
		place {
			control="NameEntry"
			start=ImageAvatarOverlay
			x=8
			y=3
			width=max
			height=32
			margin-right=43
			dir=right
		}
		place {
			control="Divider2"
			start=ImageAvatarOverlay
			y=16
			width=max
			margin-right=43
			dir=down
		}
		place {
			control="AutoSignIntoFriendsCheck,ShowTimeInChatLogCheck,AlwaysNewChatCheck"
			start=Divider2
			y=16
			dir=down
			spacing=-6
		}
		place {
			control="Divider1"
			start=AlwaysNewChatCheck
			y=16
			width=max
			margin-right=43
			dir=down
		}
		place {
			control="Label5"
			start=Divider1
			y=16
			dir=down
		}
		place {
			control="FriendOnlineNotifyCheck,FriendOnlinePlaySoundCheck"
			start=Label5
			y=4
			dir=down
			spacing=-6
		}
		place {
			control="Label6"
			start=FriendOnlinePlaySoundCheck
			width=max
			margin-right=43
			y=16
			dir=down
		}
		place {
			control="ReceiveMessageNotifyCheck,ReceiveMessagePlaySoundCheck"
			start=Label6
			y=4
			dir=down
			spacing=-6
		}
		place {
			control="LabelGroupEvents"
			start=ReceiveMessagePlaySoundCheck
			y=16
			dir=down
		}
		place {
			control="EventsAndAnnouncementsNotifyCheck,EventsAndAnnouncementsPlaySoundCheck"
			start=LabelGroupEvents
			y=4
			dir=down
			spacing=-6
		}
		place {
			control="Label4"
			start=Divider1
			x=240
			y=16
			dir=down
		}
		place {
			control="JoinGameNotifyCheck,JoinGamePlaySoundCheck"
			start=Label4
			y=4
			dir=down
			spacing=-6
		}
		place {
			control="Label7"
			start=JoinGamePlaySoundCheck
			y=16
			margin-right=16
			dir=down
		}
		place {
			control="FlashModeAlways,FlashModeMinimized,FlashModeNever"
			start=Label7
			y=4
			dir=down
			spacing=-6
		}
	}
}
