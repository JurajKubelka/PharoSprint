tests
testFogBugzUnsubscribe
	| fogbugz |
	fogbugz := self newFogBugz.
	client := self newClient fogbugz: fogbugz.
	client fogbugz: self newFogBugz.
	self assert: fogbugz announcer numberOfSubscriptions equals: 0.
	self assert: client fogbugz announcer numberOfSubscriptions equals: 3.