tests
testIsDifferentUser
	plugin := self newPlugin.
	plugin client: (self newClient username: self username; yourself).
	self assert: (plugin isDifferentUser: (self newUser name: self usernameStringTwo; yourself)).