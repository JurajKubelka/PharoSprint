visiting
visitMQTTChatMessage: aMQTTChatMessage 
	aMQTTChatMessage author = self client user ifTrue: [ ^ self ].
	aMQTTChatMessage contents accept: self.
	