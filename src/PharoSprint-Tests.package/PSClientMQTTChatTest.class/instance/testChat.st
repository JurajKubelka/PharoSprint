tests
testChat
	client := self newClient chat: self newChat; user: self newAlice; yourself.
	client chat mqttClient: self.
	self assert: client user == client chat user.
	