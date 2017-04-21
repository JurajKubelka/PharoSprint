private
stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return state message that is displayed to users."
	^ self stateStringDictionary
		at: (aPSCaseStateUpdatedAnnouncement previousStateId asString, '_', 
			aPSCaseStateUpdatedAnnouncement actualStateId asString)
		ifAbsent: [ '<b>', aPSCaseStateUpdatedAnnouncement actualStateId asString, '</b> the case' ]