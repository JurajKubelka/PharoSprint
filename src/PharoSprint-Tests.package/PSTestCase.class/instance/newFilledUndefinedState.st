instance creation
newFilledUndefinedState
	^ self newUndefinedState user: (self newUser name: self username; yourself); yourself