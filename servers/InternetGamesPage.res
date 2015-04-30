"servers/InternetGamesPage.res" {
	layout {
		region {
			name="bottom"
			align=bottom
			width=max
			height=24
			margin=0
			margin-left=8
			margin-right=8
		}
	
		place {
			control="AddServerButton,RefreshQuickButton,RefreshButton,ConnectButton"
			region="bottom"
			align=right
			height=24
			margin-right=12
			spacing=8
		}

		place {
			control="Filter,FilterString"
			region="bottom"
			width=max
			height=24
			margin-left=4
			spacing=8
			end-right="AddServerButton"
		}		
	}
}