instance creation
newFilledTakenState
	^ self newTakenState user: (self newUser name: self username; yourself); yourself