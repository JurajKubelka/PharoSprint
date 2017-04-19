tests
testDisablePlugins2
	| results |
	results := OrderedCollection new.
	client := self newClient.
	plugin := PSMockPlugin new.
	plugin
		activation: [ :aClient | results add: #activation; add: aClient ];
		deactivation: [ :aClient | results add: #deactivation; add: aClient ].
	client pluginManager plugins: (Array with: plugin).
	client disablePlugins.
	self assert: results size equals: 0.
	self assert: client pluginManager plugins isEmpty.