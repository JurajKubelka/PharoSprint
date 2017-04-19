asserting
assertActivationOnClient: aPSClient 
	self assert: results notEmpty.
	self assert: results last equals: #activation.
	