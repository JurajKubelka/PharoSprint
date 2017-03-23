tests
testHandleFogBugzLoggedOutAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement new.
	fogbugz announce: FogBugzLoggedOutAnnouncement new.
	self assert: model dynamicModel equals: model loginModel.
