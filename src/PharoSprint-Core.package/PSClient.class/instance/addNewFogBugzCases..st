adding
addNewFogBugzCases: collectionOfCases
	^ collectionOfCases collect: [ :eachCase | | case |
		case := PSCase new case: eachCase; yourself.
		self addNewCase: case ].