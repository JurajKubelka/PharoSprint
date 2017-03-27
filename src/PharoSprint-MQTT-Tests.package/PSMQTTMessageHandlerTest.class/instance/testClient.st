tests
testClient
	handler := self newHandler client: self; yourself.
	self assert: handler client equals: self.
	