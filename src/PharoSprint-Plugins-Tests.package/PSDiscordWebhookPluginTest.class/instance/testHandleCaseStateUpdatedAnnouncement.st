tests
testHandleCaseStateUpdatedAnnouncement
	| announcement |
	self startZnServer.
	announcement := self newPSCaseStateUpdatedAnnouncement
		case: self newCaseOne;
		actualState: (self newTakenState user: (self newUser name: self username; yourself); yourself);
		yourself.
	plugin := PSDiscordWebhookPlugin new
		url: 'http://localhost:', port asString.
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 1.
	self 
		assert: serverRequests first contents 
		equals: '{"content":"user one has taken case [1 - case one](https://pharo.fogbugz.com/default.asp?1)","avatar_url":"https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png","username":"Pharo Sprint App"}'