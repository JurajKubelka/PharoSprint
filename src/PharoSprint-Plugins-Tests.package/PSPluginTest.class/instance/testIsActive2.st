tests
testIsActive2
	plugin := self newPlugin.
	plugin client: self newClient.
	plugin activate.
	self assert: plugin isActive