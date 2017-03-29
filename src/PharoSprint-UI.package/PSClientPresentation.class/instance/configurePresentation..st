building
configurePresentation: browser
	browser 
		title: [ :sprint | sprint username asString, '''s Pharo Sprint Dashboard' ];
		act: [ :presentation :client | self openHelpBrowser ] iconName: #glamorousHelp entitled: 'Get More Information About Pharo Sprint';
		act: [ :presentation :client | self openSendUsFeedback ] iconName: #glamorousEdit entitled: 'Send Us Feedback About Pharo Sprint Application';
		act: [ :presentation | presentation update ] iconName: #glamorousRefresh entitled: 'Update Pharo Sprint UI';
		act: [ :presentation :client | client inspect ] iconName: #glamorousInspect entitled: 'Inspect Pharo Sprint Model';
		yourself