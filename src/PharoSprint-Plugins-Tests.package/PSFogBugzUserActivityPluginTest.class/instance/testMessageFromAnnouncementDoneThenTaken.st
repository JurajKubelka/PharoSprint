tests
testMessageFromAnnouncementDoneThenTaken
	| announcement message |
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	announcement previousState: self newFilledDoneState.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has taken the case back. 			 	 	'.