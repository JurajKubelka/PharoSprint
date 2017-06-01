tests
testHandleCaseStateUpdatedAnnouncementFilledUndefined2
	"This scenario should not happened in a real use case.
	By default, undefined state does not define user."
	| announcement |
	self startZnServer.
	announcement := self newUndefinedPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user; fogbugz: self newAuthenticatedFogBugz);
		yourself.
	self assert: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self denySemaphore.
	self assert: serverRequests size equals: 0.