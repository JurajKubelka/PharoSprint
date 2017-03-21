building
composePresentationIn: browser
	^ browser fastList 
		updateOn: PSCaseUpdatedAnnouncement from: [ :case | case announcer ];
		display: [ :aFogBugzCase | aFogBugzCase events ];
		format: [ :aFogBugzEvent :aFogBugzCase | self rowForEvent: aFogBugzEvent case: aFogBugzCase ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		yourself