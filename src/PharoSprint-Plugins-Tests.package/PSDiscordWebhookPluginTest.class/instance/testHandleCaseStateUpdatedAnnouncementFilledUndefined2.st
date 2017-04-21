tests
testHandleCaseStateUpdatedAnnouncementFilledUndefined2
	"This scenario should not happened in a real use case.
	By default, undefined state does not define user."
	| announcement |
	self startZnServer.
	announcement := self newFilledUndefinedPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user; fogbugz: self newAuthenticatedFogBugz);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	self 
		should: [ plugin handleCaseStateUpdatedAnnouncement: announcement ]
		raise: ShouldNotImplement