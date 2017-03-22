adding
addNewCases: collectionOfCases
	^ collectionOfCases collect: [ :eachCase | | case |
		case := PSCase new case: eachCase; yourself.
		case announcer 
			subscribe: PSCaseUpdatedAnnouncement 
			send: #handleCaseUpdatedAnnouncement: 
			to: self.
		self cases add: case ].