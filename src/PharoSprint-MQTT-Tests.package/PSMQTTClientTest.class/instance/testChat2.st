tests
testChat2
	client := self newClient user: self newAlice; chat: chat; yourself.
	self assert: client user == client chat user.
	self assert: results size equals: 2.
	self assert: results first equals: #subscribeToTopic:.
	self assert: results second equals: client roomId.
