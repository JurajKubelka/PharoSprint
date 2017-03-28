tests
testReceiveTakenThenDoneCaseInformation
	| alice pedro |
	alice := self newAlice.
	pedro := self newPedro.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client fogbugz cases updateCases: { self newCaseOne }.
	self assert: client cases size equals: 1.
	client chat networkReceivePacket: self newPublishTaken.
	self assert: client cases first rawState notNil description: 'case state should be set to taken'.
	self assert: client cases first isTaken.
	client chat networkReceivePacket: self newPublishDone.
	self assert: client cases first rawState notNil description: 'case state should be set to done'.
	self assert: client cases first isDone.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )