tests
testFinish
	case := self newCase case: self newFogBugzCase.
	case finish: self newUser.
	self assert: case state isDone.