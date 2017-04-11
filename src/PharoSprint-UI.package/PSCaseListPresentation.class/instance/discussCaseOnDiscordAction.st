menu actions
discussCaseOnDiscordAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | self openDiscordOnCase: aCase ] ];
		icon: PSIcons discord;
		title: 'Discuss on Discord'; 
		help: 'Discuss the case on Dicord';
		showTitle;
		yourself
