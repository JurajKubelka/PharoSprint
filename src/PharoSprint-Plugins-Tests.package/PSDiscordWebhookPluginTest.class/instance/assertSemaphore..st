asserting
assertSemaphore: numberOfTimes
	numberOfTimes timesRepeat: [ self assertSemaphore ].
	self denySemaphore.
	self deny: semaphore isSignaled.