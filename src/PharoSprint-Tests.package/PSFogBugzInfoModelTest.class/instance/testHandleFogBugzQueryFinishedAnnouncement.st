tests
testHandleFogBugzQueryFinishedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzQueryFinishedAnnouncement new.
	self assert: model dynamicModel equals: model loggedModel.
