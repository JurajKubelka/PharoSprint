tests
testClient
	plugin := self newPlugin.
	plugin client: self.
	self assert: plugin client == self.