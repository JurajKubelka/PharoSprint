instance creation
newFilledDoneState
	^ self newDoneState user: (self newUser name: self username; yourself); yourself