tests
testDisablePlugins
	| results |
	results := OrderedCollection new.
	client := self newClient.
	plugin := PSMockPlugin new.
	plugin
		activation: [ :aClient | results add: #activation; add: aClient ];
		deactivation: [ :aClient | results add: #deactivation; add: aClient ].
	client pluginManager plugins: (Array with: plugin).
	client activatePlugins; disablePlugins.
	self assert: results size equals: 4.
	self assert: results first equals: #activation.
	self assert: results second equals: client.
	self assert: results third equals: #deactivation.
	self assert: results fourth equals: client.
	self assert: client pluginManager plugins isEmpty.