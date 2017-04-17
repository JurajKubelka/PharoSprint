actions
activateFor: aPSClient 
	aPSClient announcer
		subscribe: PSCaseStateUpdatedAnnouncement send: #handleCaseStateUpdatedAnnouncement: to: self.