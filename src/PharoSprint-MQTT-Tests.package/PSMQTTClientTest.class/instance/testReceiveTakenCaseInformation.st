tests
testReceiveTakenCaseInformation
	| alice pedro |
	alice := self newAlice.
	pedro := self newPedro.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client fogbugz cases updateCases: { self newCaseOne }.
	self assert: client cases size equals: 1.
	client chat networkReceivePacket: self newPublish.
	self assert: client cases first rawState notNil description: 'case state should be set to taken'.
	self assert: client cases first isTaken.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )