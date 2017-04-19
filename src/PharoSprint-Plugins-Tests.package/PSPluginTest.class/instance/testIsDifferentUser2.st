tests
testIsDifferentUser2
	plugin := self newPlugin.
	plugin client: (self newClient username: self username; yourself).
	self deny: (plugin isDifferentUser: (self newUser name: self username; yourself)).