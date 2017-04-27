actions
openCommitToolsFor: aPSCase 
	| monticello |
	self copyCaseIdToClipboard: aPSCase.
	monticello := Smalltalk tools monticelloBrowser new.
	monticello show; addSlice.