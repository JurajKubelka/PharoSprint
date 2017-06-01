tests
testAll
	case := self newCase case: self newFogBugzCase.
	case all: self newUser.
	self assert: case state isUndefined.