tests
testIsActive4
	plugin := self newPlugin.
	plugin client: self newClient.
	plugin deactivate.
	self deny: plugin isActive