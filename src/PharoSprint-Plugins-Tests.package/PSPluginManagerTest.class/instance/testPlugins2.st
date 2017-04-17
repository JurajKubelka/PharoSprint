tests
testPlugins2
	manager plugins: self newPlugins.
	self assert: manager plugins isCollection.
	self assert: manager plugins size equals: 1.
	