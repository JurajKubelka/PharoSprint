asserting
denyActivationOnClient: aPSClient 
	self assert: aPSClient announcer numberOfSubscriptions equals: 0.
