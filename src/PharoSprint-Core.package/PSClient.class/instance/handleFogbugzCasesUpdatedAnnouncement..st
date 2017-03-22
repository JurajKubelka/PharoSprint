announcement handling
handleFogbugzCasesUpdatedAnnouncement: aFogBugzCasesUpdatedAnnouncement 
	| newCases updatedCases |
	aFogBugzCasesUpdatedAnnouncement hasCases ifFalse: [ ^ self ].
	self supressPSCaseUpdatedAnnouncementWhile: [ 
		newCases := self addNewCases: aFogBugzCasesUpdatedAnnouncement newCases.
		updatedCases := self updateCases: aFogBugzCasesUpdatedAnnouncement updatedCases.
	].
	self announce: (PSCasesUpdatedAnnouncement new newCases: newCases; updatedCases: updatedCases).
	