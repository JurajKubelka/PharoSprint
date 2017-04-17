tests
testDisablePlugins2
	self assert: manager plugins isCollection.
	self assert: manager plugins notEmpty.
	manager disable.
	self assert: manager plugins isCollection.
	self assert: manager plugins isEmpty.
