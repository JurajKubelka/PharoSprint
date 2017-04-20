tests
testAddPlugin2
	| plugin plugin2 |
	plugin := self newPlugin.
	plugin2 := self newPlugin.
	manager addPlugin: plugin.
	manager addPlugin: plugin2.
	self assert: manager plugins size equals: 2.
	self assert: manager plugins first == plugin.
	self assert: manager plugins second == plugin2.
