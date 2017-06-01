tests
testReceiveUndefinedCaseInformationThenCase
	| alice |
	alice := self newAlice.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client chat networkReceivePacket: self newPublishUndefined.
	client fogbugz cases updateCases: { self newFogBugzCaseOne }.
	self assert: client cases size equals: 1.
	self assert: client cases first rawState notNil description: 'case state should be set to undefined'.
	self assert: client cases first isUndefined.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )