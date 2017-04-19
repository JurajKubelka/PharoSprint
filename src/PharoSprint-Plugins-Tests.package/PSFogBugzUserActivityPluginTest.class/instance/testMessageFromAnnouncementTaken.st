tests
testMessageFromAnnouncementTaken
	| announcement message |
	announcement := self newTakenPSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has taken the case. 			 	 	'.