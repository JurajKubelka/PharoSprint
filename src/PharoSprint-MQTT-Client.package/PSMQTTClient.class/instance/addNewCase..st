adding
addNewCase: aPSCase
	aPSCase announcer
		subscribe: PSCaseStateUpdatedAnnouncement
		send: #handleCaseStateUpdatedAnnouncement:
		to: self.
	^ super addNewCase: aPSCase