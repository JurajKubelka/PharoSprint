announcement handling
handleFogBugzQueryFinishedAnnouncement: aFogBugzQueryFinishedAnnouncement 
	loggedModel info: self emptyLabel.
	loggedModel updateButton label: 'Update'; enabled: true.
	self updateDynamicModelWith: loggedModel