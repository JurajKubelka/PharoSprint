tests
testMessageFromAnnouncementTakenThenProposed
	| announcement message |
	announcement := self newProposedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledTakenState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has left the case in the proposed list. 			 	 	'.