building
configurePresentation: browser
	browser 
		title: [ :sprint | (sprint 
			ifNotNil: [ :s | s username asString ]
			ifNil: [ '<annonymous>' ]), '''s Pharo Sprint App' ];
		addAction: self openHelpBrowserAction;
		addAction: self openSendUsFeedbackAction;
		addAction: self openIssueTrackerAction;
		with: [ :aBrowser |
			self debugMode ifTrue: [ 
				aBrowser 
					act: [ :presentation | presentation update ] 
						iconName: #glamorousRefresh entitled: 'Update Pharo Sprint UI';
					act: [ :presentation :client | client inspect ] 
						iconName: #glamorousInspect entitled: 'Inspect Pharo Sprint Model' ] ];
		yourself