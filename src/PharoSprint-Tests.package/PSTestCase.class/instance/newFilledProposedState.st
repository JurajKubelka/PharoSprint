instance creation
newFilledProposedState
	^ self newProposedState user: (self newUser name: self username; yourself); yourself