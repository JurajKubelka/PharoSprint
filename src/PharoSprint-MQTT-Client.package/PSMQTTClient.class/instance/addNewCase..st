adding
addNewCase: aPSCase
	self updateCaseState: aPSCase.
	aPSCase announcer
		subscribe: PSCaseStateUpdatedAnnouncement
		send: #handleCaseStateUpdatedAnnouncement:
		to: self.
	^ super addNewCase: aPSCase