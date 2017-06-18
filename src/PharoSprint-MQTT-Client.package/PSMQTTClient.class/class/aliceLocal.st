examples
aliceLocal
	<qtExample>
	^ self new 
		user: MQTTChatUser alice;
		fogbugz: FogBugzClient allCases;
		chat: (MQTTChat new host: NetNameResolver loopBackName; yourself);
		disablePlugins;
		addPlugin: PSDiscordAssignCasePlugin newWithDefaultRegistry;
		connect;
		yourself