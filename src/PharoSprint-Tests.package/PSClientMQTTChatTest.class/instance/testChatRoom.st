tests
testChatRoom
	client := self newClient chat: self newChat; user: self newAlice; yourself.
	client chat mqttClient: self.
	self assert: client chat rooms size equals: 1.
	self assert: client chat rooms first id equals: client roomId.