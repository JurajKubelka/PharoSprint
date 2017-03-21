tests
testUpdateCases
	| case |
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	case := self newCaseOne.
	client fogbugz cases updateCases: { case }.
	self assert: client cases size equals: 1.
	self assert: client cases first case equals: case.
