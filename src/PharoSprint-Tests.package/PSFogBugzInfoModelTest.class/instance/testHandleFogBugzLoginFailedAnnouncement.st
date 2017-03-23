tests
testHandleFogBugzLoginFailedAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: (FogBugzLoginFailedAnnouncement new 
		exception: (FogBugzIdentificationError new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model loginModel.
	self assert: model loginModel info equals: (('Login Failed: ', self newMessageText) asText makeAllColor: (Color red)).