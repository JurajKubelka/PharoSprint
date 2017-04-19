tests
testDeactivate3
	"do not deactivate if not active"
	| results |
	results := OrderedCollection new.
	manager plugins: self newPlugins.
	manager plugins first 
		activation: [ :client | results add: #activation; add: client ];
		deactivation: [ :client | results add: #deactivation; add: client ].
	manager deactivate.
	self assert: results size equals: 0.
