*PharoSprint-MQTT-Server
pharoSprintServer
	"Create instance that is used on the Pharo Sprint server side."
	| user | 
	user := MQTTChatUser new name: self pharoSprintAuthorName; yourself.
	^ self new
		host: self pharoSprintPublicMQTTBroker;
		user: user;
		clientId: user mqttId;
		roomId: self pharoSprintRoomId;
		yourself