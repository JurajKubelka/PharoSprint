announcement handling
handleFogBugzNotLoggedAnnouncement: aFogBugzNotLoggedAnnouncement 
	messageModel 
		info: self labelNotLogged;
		acceptBlock: [ self updateDynamicModelWith: loginModel ].
	 self updateDynamicModelWith: messageModel 