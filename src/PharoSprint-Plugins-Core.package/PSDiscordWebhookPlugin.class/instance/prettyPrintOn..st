printing
prettyPrintOn: aStream
	self url asString = self class webhookUrl 
		ifTrue: [ ^ aStream << 'Official Discord Sprint Webhook Plugin' ].
	self url asString = self class testingWebhookUrl 
		ifTrue: [ ^ aStream << 'Testing Discord Sprint Webhook Plugin' ].		
	aStream << 'Discord Webhook URL: ' << self url