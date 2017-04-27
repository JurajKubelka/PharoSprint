tests
testHandleCaseStateUpdatedAnnouncementDone
	| announcement |
	self startZnServer.
	announcement := self newDonePSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assertSemaphore: 1.
	self assert: serverRequests size equals: 1.
	self 
		assert: serverRequests first contents 
		equals: '{"avatar_url":"https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png","embeds":[{"color":16711680,"description":"user one has **done** the case [1 - case one](https://pharo.fogbugz.com/default.asp?1), *using [Pharo Sprint App](http://bit.ly/SprintWeb).*"}],"username":"Pharo Sprint"}'