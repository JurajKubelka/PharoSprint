tests
testIsDifferentUserDo2
	| count user |
	count := 0.
	plugin := self newPlugin.
	plugin client: (self newClient username: self username; yourself).
	user := self newUser name: self username; yourself.
	plugin ifDifferentUser: user do: [ count := count + 1 ].
	self assert: count equals: 0.