tests
testDeactivate2
	manager deactivate.
	self assert: manager rawPlugins isNil.