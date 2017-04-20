*PharoSprint-Plugins-Core
pluginsIn: compose
	^ compose fastTable
		title: [ 'Plugins' translated ];
		display: [ :object | object plugins ];
		column: 'Active' evaluated: [ :plugin | plugin isActive ] width: 45;
		column: 'Name' evaluated: [ :plugin | plugin asPrettyString ];
		addSelectionAction: self newActivatePluginAction;
		addSelectionAction: self newDeactivatePluginAction;
		addAction: self newActivateAllPluginsAction;
		addAction: self newDeactivateAllPluginsAction;
		addAction: self newAddDiscordTestingWebhookAction;
		yourself