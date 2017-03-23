accessing
fogbugz: aFogBugzClient
	fogbugz ifNotNil: [ :old | old announcer unsubscribe: self ].
	fogbugz := aFogBugzClient.
	fogbugz announcer 
		subscribe: FogBugzAlreadyLoggedAnnouncement send: #handleFogBugzAlreadyLoggedAnnouncement: to: self;
		subscribe: FogBugzLoggedInAnnouncement send: #handleFogBugzLoggedInAnnouncement: to: self;
		subscribe: FogBugzLoginFailedAnnouncement send: #handleFogBugzLoginFailedAnnouncement: to: self;
		subscribe: FogBugzNetworkErrorAnnouncement send: #handleFogBugzNetworkErrorAnnouncement: to: self;
		subscribe: FogBugzNotLoggedAnnouncement send: #handleFogBugzNotLoggedAnnouncement: to: self;
		subscribe: FogBugzQueryFinishedAnnouncement send: #handleFogBugzQueryFinishedAnnouncement: to: self;
		subscribe: FogBugzLoggedOutAnnouncement send: #handleFogBugzLoggedOutAnnouncement: to: self.
	self updateDynamicModelWith: self chooseDynamicModel.