menu actions
discussCaseOnSlackAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | self openSlackOnCase: aCase ] ];
		icon: PSIcons slack;
		title: 'Discuss on Slack'; 
		help: 'Discuss the case on Slack';
		showTitle;
		yourself
