tests
testHandleCaseStateUpdatedAnnouncementDoneThenTaken
	| announcement |
	self startZnServer.
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledDoneState.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 1.
	self 
		assert: serverRequests first contents 
		equals: '{"avatar_url":"https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png","embeds":[{"color":65280,"description":"user one has **taken** the case [1 - case one](https://pharo.fogbugz.com/default.asp?1) **back**, *using [Pharo Sprint App](http://bit.ly/SprintWeb).*"}],"username":"Pharo Sprint"}'