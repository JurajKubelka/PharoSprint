tests
testHandleCaseStateUpdatedAnnouncement
	| announcement |
	announcement := self newFilledPSCaseStateUpdatedAnnouncement.
	fogbugz := self newFogBugz.
	plugin := PSFogBugzUserActivityPlugin new.
	plugin client: self.
	plugin handleCaseStateUpdatedAnnouncement: announcement.
	self assert: fogbugz queue size equals: 2.