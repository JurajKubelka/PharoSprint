tests
testHandleFogBugzNetworkErrorAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: (FogBugzNetworkErrorAnnouncement new 
		exception: (NameLookupFailure new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model messageModel.
	self assert: model messageModel info equals: (('Network Error: NameLookupFailure: ', self newMessageText) asText makeAllColor: (Color red)).
	model messageModel buttonModel performAction.
	self assert: model dynamicModel equals: model loginModel.
