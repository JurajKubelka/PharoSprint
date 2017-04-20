instance creation
publicWithTestingDiscordChannelOnly
	^ self new 
		user: (MQTTChatUser new name: (Author fullName); yourself);
		fogbugz: FogBugzClient uniqueInstance;
		chat: (MQTTChat new host: self publicMQTTBroker; yourself);
		addPlugin: PSDiscordWebhookPlugin newWithTestingWebhookUrl;
		yourself