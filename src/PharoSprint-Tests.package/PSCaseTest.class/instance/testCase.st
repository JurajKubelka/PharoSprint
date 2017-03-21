tests
testCase
	| fogbugzCase |
	fogbugzCase := self newFogBugzCase.
	case := self newCase case: fogbugzCase.
	self assert: case case equals: fogbugzCase