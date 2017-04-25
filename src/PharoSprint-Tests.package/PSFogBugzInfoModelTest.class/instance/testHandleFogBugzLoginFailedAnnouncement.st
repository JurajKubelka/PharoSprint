tests
testHandleFogBugzLoginFailedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: (FogBugzLoginFailedAnnouncement new 
		exception: (FogBugzIdentificationError new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model messageModel.
	self assert: model messageModel info equals: (('Login Failed: ', self newMessageText) asText makeAllColor: (Color red)).
	model messageModel buttonModel performAction.
	self assert: model dynamicModel equals: model loginModel.
