tests
testPlugins2
	manager plugins: self newPlugins.
	self assert: manager plugins isCollection.
	self assert: manager plugins size equals: 1.
	self assert: manager client notNil.
	self assert: manager plugins first client == manager client.