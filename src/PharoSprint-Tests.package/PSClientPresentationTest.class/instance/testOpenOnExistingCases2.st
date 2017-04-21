tests
testOpenOnExistingCases2
	client := PSClient alice.
	window := PSClientPresentation openOn: client.
	self assert: window isMorph.