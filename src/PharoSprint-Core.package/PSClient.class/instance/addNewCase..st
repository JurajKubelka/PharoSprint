adding
addNewCase: aPSCase 
	aPSCase announcer 
		subscribe: PSCaseUpdatedAnnouncement 
		send: #handleCaseUpdatedAnnouncement: 
		to: self.
	^ self cases add: aPSCase