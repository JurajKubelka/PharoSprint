menu actions
newOpenCaseInFogBugzWebpageAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | self openWebBrowserOnCase: aCase ] ];
		icon: PSIcons fogbugz;
		title: 'Open in FogBugz'; 
		help: 'Open the case in FogBugz web page';
		showTitle;
		yourself
