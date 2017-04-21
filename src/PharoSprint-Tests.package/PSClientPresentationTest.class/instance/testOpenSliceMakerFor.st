tests
testOpenSliceMakerFor
	| presentation |
	client := PSClient alice.
	presentation := PSCaseTakenListPresentation new.
	presentation startOn: client.
	window := presentation openSliceMakerFor: (PSCase new case: FogBugzExamples case11606; yourself).
	self assert: window isSystemWindow.