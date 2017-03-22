tests
testIsMyStateNo
	| state |
	state := PSCaseState user: PSUser pedro.
	self 
		deny: (self newClient user: PSUser alice; isMyState: state) 
		description: 'Pedro has created the state.'
	