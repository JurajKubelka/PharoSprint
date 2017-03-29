instance creation
public
	^ self new 
		user: (MQTTChatUser new name: (Author fullName); yourself);
		fogbugz: FogBugzClient new;
		chat: (MQTTChat new host: self publicMQTTBroker; yourself);
		connect;
		yourself