tests
testMessageFromAnnouncementTakenThenProposed
	| announcement message |
	announcement := self newProposedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledTakenState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has <b>left</b> the case in the proposed list, <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>. 			 	 	'.