tests
testUsername
	client := self newClient username: self username; yourself.
	self assert: client username equals: self username.