announcement handling
handleFogBugzQueryFinishedAnnouncement: aFogBugzQueryFinishedAnnouncement 
	loggedModel updateButton label: 'Update'; enabled: true.
	self updateDynamicModelWith: loggedModel