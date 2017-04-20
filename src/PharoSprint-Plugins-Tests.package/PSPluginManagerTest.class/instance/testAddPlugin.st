tests
testAddPlugin
	| plugin |
	plugin := self newPlugin.
	manager addPlugin: plugin.
	self assert: manager plugins size equals: 1.
	self assert: manager plugins first == plugin.
	