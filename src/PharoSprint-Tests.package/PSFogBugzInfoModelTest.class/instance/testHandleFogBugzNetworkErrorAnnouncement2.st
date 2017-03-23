tests
testHandleFogBugzNetworkErrorAnnouncement2
	window := model openWithSpec.
	self assert: window notNil.
	fogbugz announce: FogBugzAlreadyLoggedAnnouncement.
	fogbugz tracker identifyingToken: self newIdentifyingToken.
	self assert: fogbugz isLoggedIn.
	fogbugz announce: (FogBugzNetworkErrorAnnouncement new 
		exception: (NameLookupFailure new messageText: self newMessageText)).
	self assert: model dynamicModel equals: model loggedModel.
	self assert: model loggedModel info equals: (('Network Error: NameLookupFailure: ', self newMessageText) asText makeAllColor: (Color red)).