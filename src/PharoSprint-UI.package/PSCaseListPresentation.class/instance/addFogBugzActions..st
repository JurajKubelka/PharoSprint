private - build ui
addFogBugzActions: aList
	^ aList
		addAction: (GLMGenericAction new 
		action: [ :presentation :aSprint | aSprint loginToFogBugz ];
		icon: #addItem asIcon;
		title: 'Login to FogBugz' translated;
		showTitle);
		yourself
