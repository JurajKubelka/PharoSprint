menu actions
openIssueTrackerAction
	^ GLMGenericAction new
		action: [ :presentation | self openIssueTracker ];
		iconName: #glamorousBug;
		title: 'Bug'; 
		help: 'Submit a Pharo Sprint Application Bug';
		showTitle;
		yourself