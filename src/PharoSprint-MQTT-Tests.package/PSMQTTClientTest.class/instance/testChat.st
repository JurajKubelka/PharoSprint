tests
testChat
	client := self newClient chat: chat; user: self newAlice; yourself.
	self assert: client user == client chat user.
	self assert: results size equals: 2.
	self assert: results first equals: #subscribeToTopic:.
	self assert: results second equals: client roomId.
