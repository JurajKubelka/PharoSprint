tests
testHandleCaseStateUpdatedAnnouncementTakenThenProposed2
	| announcement |
	self startZnServer.
	announcement := self newProposedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledTakenState.
	plugin := self newPlugin
		url: 'http://localhost:', port asString;
		client: (self newClient user: announcement actualState user; fogbugz: self newAuthenticatedFogBugz);
		yourself.
	self deny: (plugin isDifferentUser: announcement actualState user).
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: serverRequests size equals: 1.
	self 
		assert: serverRequests first contents 
		equals: '{"avatar_url":"https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png","embeds":[{"color":10461087,"description":"[user one](https://pharo.fogbugz.com/f/personInfo/activity/1) has **left** the case [1 - case one](https://pharo.fogbugz.com/default.asp?1) **in the proposed list**, *using [Pharo Sprint App](http://bit.ly/SprintWeb).*"}],"username":"Pharo Sprint"}'