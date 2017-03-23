announcement handling
handleFogBugzNotLoggedAnnouncement: aFogBugzNotLoggedAnnouncement 
	loginModel info: self labelNotLogged.
	self updateDynamicModelWith: loginModel.