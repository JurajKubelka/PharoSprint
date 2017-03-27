tests
testChat2
	client := self newClient user: self newAlice; chat: self newChat; yourself.
	client chat mqttClient: self.
	self assert: client user == client chat user.
	