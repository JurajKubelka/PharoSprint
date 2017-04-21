tests
testHandleCaseStateUpdatedAnnouncementUndefined2
	"Message should not be sent to Discord."
	| announcement |
	self startZnServer.
	announcement := self newUndefinedPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user; fogbugz: self newAuthenticatedFogBugz);
		yourself.
	self assert: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 0.
