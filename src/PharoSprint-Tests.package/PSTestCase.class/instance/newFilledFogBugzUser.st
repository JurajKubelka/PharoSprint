instance creation
newFilledFogBugzUser
	^ self newFogBugzUser
		id: 1;
		username: self username;
		mail: self mail;
		yourself