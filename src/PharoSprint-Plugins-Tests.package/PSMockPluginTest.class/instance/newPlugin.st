instance creation
newPlugin
	^ PSMockPlugin new
		activation: [ :client | results add: #activation ];
		deactivation: [ :client | results add: #deactivation ];
		yourself