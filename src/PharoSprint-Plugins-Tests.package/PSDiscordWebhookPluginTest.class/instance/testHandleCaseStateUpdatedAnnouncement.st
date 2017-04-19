tests
testHandleCaseStateUpdatedAnnouncement
	| announcement |
	self startZnServer.
	announcement := self newFilledPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 1.
	self 
		assert: serverRequests first contents 
		equals: '{"content":"user one has taken case [1 - case one](https://pharo.fogbugz.com/default.asp?1)","avatar_url":"https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png","username":"Pharo Sprint App"}'