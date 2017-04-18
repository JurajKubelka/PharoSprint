actions
activateFor: aPSClient 
	self client: aPSClient.
	aPSClient announcer
		subscribe: PSCaseStateUpdatedAnnouncement send: #handleCaseStateUpdatedAnnouncement: to: self.