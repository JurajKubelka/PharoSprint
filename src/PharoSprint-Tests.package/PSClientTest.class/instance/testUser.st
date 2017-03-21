tests
testUser
	| user |
	user := self newUser.
	client := self newClient user: user.
	self assert: client user equals: user.