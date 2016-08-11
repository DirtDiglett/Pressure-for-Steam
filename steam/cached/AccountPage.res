"Steam/cached/AccountPage.res" {
	layout {
		place {
			control="AccountLink"
			align=right
			y=21
			margin-right=43
		}
		place {
			control="AccountInfo,EmailInfo,NoPersonalInfoCheck"
			align=left
			x=18
			y=21
			width=max
			margin-right=32
			dir=down
			spacing=8
		}
		place {
			control="ValidateContactEmailButton,ChangeContactEmailButton"
			start="NoPersonalInfoCheck"
			y=8
			width=340
			height=28
			margin-right=32
			dir=down
			spacing=8
		}
		place {
			control="Divider1"
			start="ChangeContactEmailButton"
			align=left
			y=16
			width=max
			height=1
			margin-right=43
			dir=down
		}
		place {
			control="SecurityIcon"
			start="Divider1"
			y=16
			dir=down
		}
		place {
			control=SecurityStatusState
			start=SecurityIcon
			x=4
			y=6
			width=max
		}
		place {
			control="Label2"
			start=SecurityIcon
			y=4
			dir=down
		}
		place {
			control="VACStatusLabel, VacInfoLink"
			start="Label2"
			x=6
			dir=right
		}
		place {
			control="ChangeUserButton,ManageSecurityButton,ChangePasswordButton"
			start="Label2"
			y=24
			width=340 // Matches default steam so should cover all other languages too
			height=28
			dir=down
			spacing=8
		}
		place {
			control="Divider2"
			start="ChangePasswordButton"
			align=left
			y=16
			width=max
			height=1
			margin-right=43
			dir=down
		}
		place {
			control="BetaParticipationLabel,CurrentBetaLabel"
			start="Divider2"
			y=16
			width=max
			margin-right=43
			dir=down
			spacing=8
		}
		place {
			control="ChangeBetaButton"
			start="CurrentBetaLabel"
			y=16
			width=340
			height=28
			dir=down
		}
		place {
			control="ReportBugLink"
			start="ChangeBetaButton"
			y=8
			margin-right=43
			dir=down
		}
		// NULL ZONE
		place {
			control="Label1,Label,SecurityStatusLabel,LogOutLabel,ContactEmailLabel"
			x=-100
			y=-100
			width=0
			height=0
		}
	}
}