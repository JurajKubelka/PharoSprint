tests
testHandleCaseStateUpdatedAnnouncementNetworkError
	"Connection Timeout is ignored"
	| announcement |
	self startZnServer.
	server stop.
	announcement := self newPSCaseStateUpdatedAnnouncement
		case: self newCaseOne;
		actualState: (self newTakenState user: (self newUser name: self username; yourself); yourself);
		yourself.
	plugin := PSDiscordWebhookPlugin new
		url: 'http://localhost:', port asString.
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 0.
