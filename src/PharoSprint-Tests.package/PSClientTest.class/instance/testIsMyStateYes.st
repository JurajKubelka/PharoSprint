tests
testIsMyStateYes
	| state |
	state := PSCaseState user: PSUser alice.
	self 
		assert: (self newClient user: PSUser alice; isMyState: state) 
		description: 'Alice has created the state.'
	