adding
addNewCases: collectionOfCases
	^ collectionOfCases collect: [ :eachCase | | case |
		case := PSCase new case: eachCase; yourself.
		self cases add: case ].