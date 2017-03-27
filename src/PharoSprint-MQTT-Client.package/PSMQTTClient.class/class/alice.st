examples
alice
	<gtExample>
	^ self new 
		user: MQTTChatUser alice;
		fogbugz: FogBugzClient allCases;
		chat: MQTTChat new;
		yourself