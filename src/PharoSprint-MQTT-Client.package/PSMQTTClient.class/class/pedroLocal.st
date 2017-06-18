examples
pedroLocal
	<qtExample>
	^ self new 
		user: MQTTChatUser pedro;
		fogbugz: FogBugzClient allCases;
		chat: (MQTTChat new host: NetNameResolver loopBackName; yourself);
		disablePlugins;
		addPlugin: PSDiscordAssignCasePlugin newWithDefaultRegistry;
		connect;
		yourself