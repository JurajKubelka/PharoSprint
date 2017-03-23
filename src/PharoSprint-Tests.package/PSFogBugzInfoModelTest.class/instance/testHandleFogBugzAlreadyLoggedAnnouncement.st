tests
testHandleFogBugzAlreadyLoggedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement new.
	self assert: model dynamicModel equals: model loggedModel.
