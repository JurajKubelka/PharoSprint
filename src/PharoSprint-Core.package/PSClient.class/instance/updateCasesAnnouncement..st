announcement handling
updateCasesAnnouncement: aFogBugzCasesUpdatedAnnouncement 
	| newCases updatedCases |
	aFogBugzCasesUpdatedAnnouncement hasCases ifFalse: [ ^ self ].
	newCases := self addNewCases: aFogBugzCasesUpdatedAnnouncement newCases.
	updatedCases := self updateCases: aFogBugzCasesUpdatedAnnouncement updatedCases.
	self announce: (PSCasesUpdatedAnnouncement new newCases: newCases; updatedCases: updatedCases).
	