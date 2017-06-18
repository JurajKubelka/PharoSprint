asserting
assertActivationOnClient: aPSClient 
	self assert: plugin registry numberOfRegistrations equals: 1.
	self assert: plugin registry commands first client == aPSClient.