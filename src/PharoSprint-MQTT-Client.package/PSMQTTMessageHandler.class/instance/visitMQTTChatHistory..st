visiting
visitMQTTChatHistory: aMQTTChatHistory 
	aMQTTChatHistory messages reverseDo: [ :message | 
		message accept: self ].