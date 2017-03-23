tests
testHandleFogBugzNotLoggedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement new.
	fogbugz announce: FogBugzNotLoggedAnnouncement new.
	self assert: model dynamicModel equals: model loginModel.
	self assert: model loginModel info equals: model labelNotLogged.
	