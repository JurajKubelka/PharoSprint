tests
testReceiveTakenThenDoneCaseInformationThenCase
	| alice |
	alice := self newAlice.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client chat networkReceivePacket: self newPublishTaken.
	client chat networkReceivePacket: self newPublishDone.
	client fogbugz cases updateCases: { self newFogBugzCaseOne }.
	self assert: client cases size equals: 1.
	self assert: client cases first rawState notNil description: 'case state should be set to done'.
	self assert: client cases first isDone.
	self assert: results asArray equals: #( #subscribeToTopic: sprint )