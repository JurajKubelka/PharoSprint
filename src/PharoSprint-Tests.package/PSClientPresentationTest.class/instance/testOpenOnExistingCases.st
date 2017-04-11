tests
testOpenOnExistingCases
	client := PSClient alice.
	window := PSClientDetailedPresentation openOn: client.
	self assert: window isMorph.