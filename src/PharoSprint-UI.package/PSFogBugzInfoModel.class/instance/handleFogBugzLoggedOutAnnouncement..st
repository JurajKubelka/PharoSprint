announcement handling
handleFogBugzLoggedOutAnnouncement: aFogBugzLoggedOutAnnouncement 
	loginModel info: self emptyLabel.
	self updateDynamicModelWith: loginModel.