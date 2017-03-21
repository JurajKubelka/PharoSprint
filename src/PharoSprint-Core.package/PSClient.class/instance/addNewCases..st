adding
addNewCases: collectionOfCases
	collectionOfCases do: [ :eachCase | | case |
		case := PSCase new case: eachCase; yourself.
		self cases add: case ].