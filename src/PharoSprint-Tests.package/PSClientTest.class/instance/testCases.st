tests
testCases
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	self assert: client cases isEmpty.