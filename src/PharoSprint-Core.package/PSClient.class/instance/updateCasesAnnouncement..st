announcement handling
updateCasesAnnouncement: aFogBugzCasesUpdatedAnnouncement 
	aFogBugzCasesUpdatedAnnouncement hasNewCases ifFalse: [ ^ self ].
	aFogBugzCasesUpdatedAnnouncement newCases do: [ :eachCase | | case |
		case := PSCase new case: eachCase; yourself.
		self cases add: case ].