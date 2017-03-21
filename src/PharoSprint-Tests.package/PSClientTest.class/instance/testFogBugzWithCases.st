tests
testFogBugzWithCases
	| fogbugz |
	fogbugz := FogBugzClient allCases.
	self assert: fogbugz cases size > 0.
	client := self newClient fogbugz: fogbugz.
	self deny: client cases == fogbugz cases.
	self assert: client cases size equals: fogbugz cases size.
