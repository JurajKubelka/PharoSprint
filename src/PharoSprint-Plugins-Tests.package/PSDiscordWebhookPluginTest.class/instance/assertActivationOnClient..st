asserting
assertActivationOnClient: aPSClient 
	self assert: aPSClient announcer numberOfSubscriptions equals: 1.
