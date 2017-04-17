tests
testDisablePlugins
	manager disable.
	self assert: manager plugins isCollection.
	self assert: manager plugins isEmpty.
	