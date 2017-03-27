announcement handling
handleMQTTChatMessageReceivedAnnouncement: aMQTTChatMessageReceivedAnnouncement 
		aMQTTChatMessageReceivedAnnouncement message 
			accept: (PSMQTTMessageHandler new client: self; yourself)