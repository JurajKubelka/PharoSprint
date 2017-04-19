tests
testDeactivate
	| results |
	results := OrderedCollection new.
	manager plugins: self newPlugins.
	manager plugins first 
		activation: [ :client | results add: #activation; add: client ];
		deactivation: [ :client | results add: #deactivation; add: client ].
	manager activate; deactivate.
	self assert: results size equals: 4.
	self assert: results first equals: #activation.
	self assert: results second equals: self.
	self assert: results third equals: #deactivation.
	self assert: results fourth equals: self.