tests
testFogBugzSubscription
	| fogbugz |
	fogbugz := self newFogBugz.
	client := self newClient fogbugz: fogbugz.
	self assert: fogbugz announcer numberOfSubscriptions equals: 3.