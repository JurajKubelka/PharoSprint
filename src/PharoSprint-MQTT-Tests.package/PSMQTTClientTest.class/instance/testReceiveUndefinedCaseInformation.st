tests
testReceiveUndefinedCaseInformation
	| alice |
	alice := self newAlice.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client fogbugz cases updateCases: { self newFogBugzCaseOne }.
	self assert: client cases size equals: 1.
	client chat networkReceivePacket: self newPublishUndefined.
	self assert: client cases first rawState notNil description: 'case state should be set to undefined'.
	self assert: client cases first isUndefined.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )