tests
testActivate
	| results |
	results := OrderedCollection new.
	manager plugins: self newPlugins.
	manager plugins first 
		activation: [ :client | results add: #activation; add: client ];
		deactivation: [ :client | results add: #deactivation; add: client ].
	manager activate.
	self assert: results size equals: 2.
	self assert: results first equals: #activation.
	self assert: results second equals: self.