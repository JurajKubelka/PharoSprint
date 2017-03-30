tests
testReceiveTakenCaseInformationThenCase
	| alice |
	alice := self newAlice.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client chat networkReceivePacket: self newPublishTaken.
	client fogbugz cases updateCases: { self newCaseOne }.
	self assert: client cases size equals: 1.
	self assert: client cases first rawState notNil description: 'case state should be set to taken'.
	self assert: client cases first isTaken.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )