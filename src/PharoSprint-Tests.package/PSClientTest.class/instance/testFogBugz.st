tests
testFogBugz
	| fogbugz |
	fogbugz := self newFogBugz.
	client := self newClient fogbugz: fogbugz.
	self assert: client fogbugz equals: fogbugz.