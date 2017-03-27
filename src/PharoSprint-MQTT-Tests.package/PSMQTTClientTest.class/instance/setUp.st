running
setUp
	super setUp.
	results := OrderedCollection new.
	chat := self newChat.
	chat mqttClient: self.
