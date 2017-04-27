asserting
denySemaphore
	self 
		assert: (semaphore waitTimeoutMSecs: self timeoutMSecs) 
		description: 'Expected timeout did not happen.'