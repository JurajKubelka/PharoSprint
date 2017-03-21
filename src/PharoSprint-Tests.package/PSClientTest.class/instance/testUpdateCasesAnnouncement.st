tests
testUpdateCasesAnnouncement
	| case1 case2 |
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	case1 := self newCaseOne.
	client fogbugz cases updateCases: { case1 }.
	case2 := self newCaseOne.
	case2 lastModification: case1 lastModification + 1 hour. 
	client fogbugz cases updateCases: { case2 }.
	self assert: client cases size equals: 1.
	self assert: client cases first case equals: case2.
	self assert: client cases first case == case2.
