*PharoSprint-Plugins-UI
newDiscordMessageListAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				sprint isPluginClient ifTrue: [ 
					list selection ifNotNil: [ :aCase | 
						sprint discordMessagesPlugin ifNotNil: [ :aPlugin |
							aPlugin openDiscordMessagesForCase: aCase ] ] ] ];
		condition: [ :list :sprint | 
			sprint isPluginClient and: [ sprint discordMessagesPlugin notNil ] ];
		icon: PSIcons discord;
		title: 'Show related Discord messages'; 
		help: 'Browse Discord messages related with the selected case';
		showTitle;
		yourself
