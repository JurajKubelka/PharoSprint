public
receive: aMQTTChatMessage 
	mutex critical: [ 
		aMQTTChatMessage accept: self ]