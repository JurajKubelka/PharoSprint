accessing
fogbugz: aFogBugzClient 
	fogbugz ifNotNil: [ :oldFogBugz | oldFogBugz announcer unsubscribe: self ].
	fogbugz := aFogBugzClient.
	aFogBugzClient announcer
		subscribe: FogBugzCasesUpdatedAnnouncement send: #handleFogbugzCasesUpdatedAnnouncement: to: self;
		subscribe: FogBugzLoggedInAnnouncement send: #handleFogBugzLoggedInAnnouncement: to: self;
		subscribe: FogBugzAlreadyLoggedAnnouncement send: #handleFogBugzAlreadyLoggedAnnouncement: to: self.
	self addNewFogBugzCases: fogbugz cases.