tests
testMessageFromAnnouncementProposed
	| announcement message |
	announcement := self newProposedPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has proposed the case. 			 	 	'.