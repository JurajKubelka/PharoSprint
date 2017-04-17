tests
testPlugins
	self assert: manager plugins isCollection.
	self assert: manager plugins notEmpty.
	