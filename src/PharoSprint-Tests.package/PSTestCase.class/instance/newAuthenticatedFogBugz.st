instance creation
newAuthenticatedFogBugz
	| fogbugz |
	fogbugz := self newFogBugz.
	fogbugz tracker 
		identifyingToken: self token;
		user: self newFilledFogBugzUser.
	^ fogbugz