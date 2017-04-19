accessing
client: aPSClient
	client == aPSClient ifTrue: [ ^ self ].
	client ifNotNil: [ :instance | self deactivateFor: instance ].
	client := aPSClient.