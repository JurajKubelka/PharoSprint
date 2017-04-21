tests
testMessageFromAnnouncementDoneThenTaken
	| announcement message |
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledDoneState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has <b>taken</b> the case <b>back</b>, <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>. 			 	 	'.