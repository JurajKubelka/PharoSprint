tests
testRenounce
	case := self newCase case: self newFogBugzCase.
	case renounce: self newUser.
	self assert: case state isProposed.