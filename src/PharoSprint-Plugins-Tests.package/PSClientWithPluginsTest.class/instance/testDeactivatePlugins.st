tests
testDeactivatePlugins
	| results |
	results := OrderedCollection new.
	client := self newClient.
	plugin := PSMockPlugin new.
	plugin
		activation: [ :aClient | results add: #activation; add: aClient ];
		deactivation: [ :aClient | results add: #deactivation; add: aClient ].
	client pluginManager plugins: (Array with: plugin).
	client deactivatePlugins.
	self assert: results size equals: 2.
	self assert: results first equals: #deactivation.
	self assert: results second equals: client.