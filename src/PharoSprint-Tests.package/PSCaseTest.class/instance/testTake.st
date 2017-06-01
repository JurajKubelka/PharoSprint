tests
testTake
	case := self newCase case: self newFogBugzCase.
	case take: self newUser.
	self assert: case state isTaken.