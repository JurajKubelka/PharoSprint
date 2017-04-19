private
stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	^ self stateStringDictionary
		at: (aPSCaseStateUpdatedAnnouncement previousStateId asString, '_', 
			aPSCaseStateUpdatedAnnouncement actualStateId asString)
		ifAbsent: [ aPSCaseStateUpdatedAnnouncement actualStateId asString ]