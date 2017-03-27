accessing
user: aMQTTChatUser
	super user: aMQTTChatUser.
	chat ifNotNil: [ :instance | instance user: aMQTTChatUser; clientId: aMQTTChatUser mqttId ].
	