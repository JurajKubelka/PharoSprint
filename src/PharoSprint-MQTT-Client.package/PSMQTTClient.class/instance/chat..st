accessing
chat: aMQTTChat 
	| room |
	chat := aMQTTChat.
	aMQTTChat user: self user.
	room := aMQTTChat roomId: self roomId.
	room announcer
		subscribe: MQTTChatMessageReceivedAnnouncement send: #handleMQTTChatMessageReceivedAnnouncement: to: self.
	