tests
testClient2
	handler := self newHandler.
	self assert: handler client isNil.