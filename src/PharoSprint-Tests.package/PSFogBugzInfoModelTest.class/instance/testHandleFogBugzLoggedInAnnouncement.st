tests
testHandleFogBugzLoggedInAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzLoggedInAnnouncement new.
	self assert: model dynamicModel equals: model loggedModel.
