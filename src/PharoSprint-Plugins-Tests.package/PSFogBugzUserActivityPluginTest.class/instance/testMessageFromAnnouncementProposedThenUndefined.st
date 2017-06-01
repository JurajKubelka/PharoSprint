tests
testMessageFromAnnouncementProposedThenUndefined
	| announcement message |
	announcement := self newFilledUndefinedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledProposedState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has <b>left</b> the case in the all list, <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>. 			 	 	'.