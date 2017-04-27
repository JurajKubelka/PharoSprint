asserting
assertSemaphore
	self 
		deny: (semaphore waitTimeoutMSecs: self timeoutMSecs) 
		description: 'Timeout while waiting for semaphore.'