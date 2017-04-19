asserting
denyActivationOnClient: aPSClient 
	self assert: (results isEmpty or: [ results last = #deactivation ])