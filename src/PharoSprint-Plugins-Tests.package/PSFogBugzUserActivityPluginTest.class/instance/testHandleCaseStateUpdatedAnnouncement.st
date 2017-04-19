tests
testHandleCaseStateUpdatedAnnouncement
	| announcement |
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin.
	fogbugz := self newFogBugz.
	plugin 
		client: (self newClient 
			user: announcement actualState user;
			fogbugz: fogbugz;
			yourself);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: fogbugz queue size equals: 2.