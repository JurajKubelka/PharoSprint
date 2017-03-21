building
composePresentationIn: browser
	^ browser fastList 
		display: [ :aFogBugzCase | aFogBugzCase events ];
		format: [ :aFogBugzEvent :aFogBugzCase | self rowForEvent: aFogBugzEvent case: aFogBugzCase ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		yourself