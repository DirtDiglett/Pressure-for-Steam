"servers/InternetGamesPage_Filters.res" {
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
			margin-right=12
			align=right
			height=24
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