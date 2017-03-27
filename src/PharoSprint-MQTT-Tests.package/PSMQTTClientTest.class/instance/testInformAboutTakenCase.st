tests
testInformAboutTakenCase
	| message alice pedro |
	alice := self newAlice.
	pedro := self newPedro.
	client := self newClient fogbugz: self newFogBugz; chat: chat; user: alice; yourself.
	client fogbugz cases updateCases: { self newCaseOne }.
	self assert: client cases size equals: 1.
	client cases first take: alice.
	self assert: client cases first isTaken.
	self assert: results isNotEmpty description: 'Case taken action should be sent by the chat'.
	self assert: results size equals: 5.
	self assert: results first equals: #subscribeToTopic:.
	self assert: results second equals: client roomId.
	self assert: results third equals: #sendMessage:toTopic:success:error:.
	self assert: results fourth isCollection.
	self assert: results fifth equals: client roomId.
	message := MQTTChatEncoderDecoder fromByteArray: results fourth.
	self assert: message author equals: client user.
	self assert: message contents class equals: PSChatCaseState.
	self assert: message contents caseId equals: self newCaseOne id.
	self assert: message contents stateId equals: PSTakenCaseState stateId.
	self assert: message contents user equals: alice.
	