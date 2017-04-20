tests
testMessageFromAnnouncementDoneThenProposed
	| announcement message |
	announcement := self newProposedPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledDoneState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has returned the case back to the proposed list, using Pharo Sprint App http://bit.ly/SprintWeb. 			 	 	'.