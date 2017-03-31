menu actions
openHelpBrowserAction
	^ GLMGenericAction new
		action: [ :presentation | self openHelpBrowser ];
		iconName: #glamorousHelp;
		title: 'Help'; 
		help: 'Get More Information About Pharo Sprint';
		showTitle;
		yourself