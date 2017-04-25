tests
testHandleFogBugzNotLoggedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement new.
	fogbugz announce: FogBugzNotLoggedAnnouncement new.
	self assert: model dynamicModel equals: model messageModel.
	self assert: model messageModel info equals: model labelNotLogged.
	model messageModel buttonModel performAction.
	self assert: model dynamicModel equals: model loginModel.
