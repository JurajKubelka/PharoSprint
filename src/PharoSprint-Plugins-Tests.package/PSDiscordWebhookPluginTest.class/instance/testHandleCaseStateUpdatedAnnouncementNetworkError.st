tests
testHandleCaseStateUpdatedAnnouncementNetworkError
	"Connection Timeout is ignored"
	| announcement |
	self startZnServer.
	server stop.
	announcement := self newFilledPSCaseStateUpdatedAnnouncement.
	plugin := PSDiscordWebhookPlugin new
		url: 'http://localhost:', port asString.
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 0.
