tests
testIsPluginClient
	client := self newClient.
	self assert: client isPluginClient.