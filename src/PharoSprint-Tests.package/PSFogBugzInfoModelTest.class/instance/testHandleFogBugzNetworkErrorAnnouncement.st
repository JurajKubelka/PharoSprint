tests
testHandleFogBugzNetworkErrorAnnouncement
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: (FogBugzNetworkErrorAnnouncement new 
		exception: (NameLookupFailure new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model loginModel.
	self assert: model loginModel info equals: (('Network Error: NameLookupFailure: ', self newMessageText) asText makeAllColor: (Color red)).