tests
testHandleCaseStateUpdatedAnnouncementNetworkError
	"Connection Timeout is ignored"
	| announcement |
	self startZnServer.
	server stop.
	announcement := self newFilledPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 0.
