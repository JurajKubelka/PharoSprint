instance creation
public
	^ self new 
		user: (MQTTChatUser new name: (Author fullName); yourself);
		fogbugz: FogBugzClient uniqueInstance;
		chat: (MQTTChat new host: self publicMQTTBroker; yourself);
		yourself