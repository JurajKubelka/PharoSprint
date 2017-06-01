tests
testMessageFromAnnouncementTakenThenUndefined
	| announcement message |
	announcement := self newFilledUndefinedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledTakenState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has <b>returned</b> the case <b>back</b> to the all list, <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>. 			 	 	'.