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
			height=0
			width=0
		}

		place {
			control="ImageAvatar"
			y=29
			x=22
		}

		place {
			control="ImageAvatarOverlay"
			y=25
			x=18
			height=46
		}
		
		place {
			control="URLLabel2"
			y=25
			x=18
			height=40
			width=40
		}
		
		place {
			control="NameEntry"
			start=ImageAvatarOverlay
			dir=right
			width=max
			height=32
			x=8
			y=3
			margin-right=43
		}
		
		place {
			control="Divider2"
			dir=down
			start=ImageAvatarOverlay
			y=16
			width=max
			margin-right=43
		}
		
		place {
			control="AutoSignIntoFriendsCheck,ShowTimeInChatLogCheck,AlwaysNewChatCheck"
			start=Divider2
			dir=down
			y=16	
			spacing=-6
		}
		
		place {
			control="Divider1"
			dir=down
			start=AlwaysNewChatCheck
			y=16
			margin-right=43
			width=max
		}

		place {
			control="Label5"
			dir=down
			start=Divider1
			y=16
		}
		
		place {
			control="FriendOnlineNotifyCheck,FriendOnlinePlaySoundCheck"
			dir=down
			start=Label5
			y=4
			spacing=-6
		}
		
		place {
			control="Label6"
			dir=down
			start=FriendOnlinePlaySoundCheck
			y=16
		}
		
		place {
			control="ReceiveMessageNotifyCheck,ReceiveMessagePlaySoundCheck"
			dir=down
			start=Label6
			y=4
			spacing=-6
		}
		
		place {
			control="Label4"
			dir=down
			x=240
			y=16
			start=Divider1
		}
		
		place {
			control="JoinGameNotifyCheck,JoinGamePlaySoundCheck"
			dir=down
			start=Label4
			y=4
			spacing=-6
		}
		
		place {
			control="Label7"
			dir=down
			start=JoinGamePlaySoundCheck
			y=16
		}
		
		place {
			control="FlashModeAlways,FlashModeMinimized,FlashModeNever"
			dir=down
			start=Label7
			y=4
			spacing=-6
		}
	}
}