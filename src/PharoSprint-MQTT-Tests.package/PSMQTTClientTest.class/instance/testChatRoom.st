tests
testChatRoom
	client := self newClient chat: chat; user: self newAlice; yourself.
	self assert: client chat rooms size equals: 1.
	self assert: client chat rooms first id equals: client roomId.
	self assert: results size equals: 2.
	self assert: results first equals: #subscribeToTopic:.
	self assert: results second equals: client roomId.
