tests
testIsDifferentUserDo
	| count user |
	count := 0.
	plugin := self newPlugin.
	plugin client: (self newClient username: self username; yourself).
	user := self newUser name: self usernameTwo; yourself.
	plugin ifDifferentUser: user do: [ count := count + 1 ].
	self assert: count equals: 1.