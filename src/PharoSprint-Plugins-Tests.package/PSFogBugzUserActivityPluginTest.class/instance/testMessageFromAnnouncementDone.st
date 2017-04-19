tests
testMessageFromAnnouncementDone
	| announcement message |
	announcement := self newDonePSCaseStateUpdatedAnnouncement.
	plugin := self newPlugin.
	message := plugin messageFromAnnouncement: announcement.
	self assert: message equals: 'user one has done the case. 			 	 	'.