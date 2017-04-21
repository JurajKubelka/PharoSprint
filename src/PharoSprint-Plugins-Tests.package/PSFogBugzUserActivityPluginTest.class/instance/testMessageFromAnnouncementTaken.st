tests
testMessageFromAnnouncementTaken
	| announcement message |
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has <b>taken</b> the case, <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>. 			 	 	'.