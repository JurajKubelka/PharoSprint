tests
testPropose
	case := self newCase case: self newFogBugzCase.
	case propose: self newUser.
	self assert: case state isProposed.