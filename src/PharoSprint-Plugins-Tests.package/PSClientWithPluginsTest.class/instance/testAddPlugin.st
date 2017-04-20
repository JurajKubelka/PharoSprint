tests
testAddPlugin
	| results |
	results := OrderedCollection new.
	client := self newClient.
	plugin := PSMockPlugin new.
	plugin
		activation: [ :aClient | results add: #activation; add: aClient ];
		deactivation: [ :aClient | results add: #deactivation; add: aClient ].
	client addPlugin: plugin.
	self assert: results size equals: 0.
	self assert: client plugins size equals: 1.
	self assert: client plugins first == plugin.
