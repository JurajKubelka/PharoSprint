tests
testOpenMonticelloBrowser
	| presentation |
	client := PSClient alice.
	presentation := PSCaseTakenListPresentation new.
	presentation startOn: client.
	window := presentation openMonticelloBrowser.
	self assert: window isSystemWindow.