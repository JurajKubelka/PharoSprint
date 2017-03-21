testing
isProposedAndOpen
	^ self state isProposed and: [ self case isOpen ]