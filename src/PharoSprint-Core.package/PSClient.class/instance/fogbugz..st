accessing
fogbugz: aFogBugzClient 
	fogbugz ifNotNil: [ :oldFogBugz | oldFogBugz announcer unsubscribe: self ].
	fogbugz := aFogBugzClient.
	aFogBugzClient announcer
		subscribe: FogBugzCasesUpdatedAnnouncement send: #handleFogbugzCasesUpdatedAnnouncement: to: self.
	self addNewCases: fogbugz cases.