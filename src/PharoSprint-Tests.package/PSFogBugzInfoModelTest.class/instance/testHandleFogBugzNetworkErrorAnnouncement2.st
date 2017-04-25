tests
testHandleFogBugzNetworkErrorAnnouncement2
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement.
	fogbugz tracker identifyingToken: self newIdentifyingToken.
	self assert: fogbugz isLoggedIn.
	fogbugz announce: (FogBugzNetworkErrorAnnouncement new 
		exception: (NameLookupFailure new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model messageModel.
	self assert: model messageModel info equals: (('Network Error: NameLookupFailure: ', self newMessageText) asText makeAllColor: (Color red)).
	model dynamicModel buttonModel performAction.
	self assert: model dynamicModel equals: model loggedModel.
