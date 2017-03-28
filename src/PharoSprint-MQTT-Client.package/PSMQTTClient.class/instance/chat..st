accessing
chat: aMQTTChat 
	| room |
	chat := aMQTTChat.
	aMQTTChat user: self user; clientId: self user mqttId.
	room := aMQTTChat roomId: self roomId.
	room announcer
		subscribe: MQTTChatMessageReceivedAnnouncement 
			send: #handleMQTTChatMessageReceivedAnnouncement: 
			to: self;
		subscribe: MQTTChatHistoryReceivedAnnouncement 
			send: #handleMQTTChatHistoryReceivedAnnouncement: 
			to: self.