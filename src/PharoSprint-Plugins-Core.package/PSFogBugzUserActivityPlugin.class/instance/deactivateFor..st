actions
deactivateFor: aPSClient 
	self client: nil.
	aPSClient announcer unsubscribe: self.