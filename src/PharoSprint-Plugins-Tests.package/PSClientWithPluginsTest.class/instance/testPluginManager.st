tests
testPluginManager
	client := self newClient.
	self assert: client pluginManager notNil.
	self assert: client pluginManager client == client.