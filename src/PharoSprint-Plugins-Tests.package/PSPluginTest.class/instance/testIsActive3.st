tests
testIsActive3
	plugin := self newPlugin.
	plugin client: self newClient.
	plugin activate.
	plugin deactivate.
	self deny: plugin isActive