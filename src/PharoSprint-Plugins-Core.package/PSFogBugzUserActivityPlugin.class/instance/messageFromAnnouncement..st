private
messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return message that is saved on FogBugz."
	^ String streamContents: [ :stream | | actualState |
		actualState := aPSCaseStateUpdatedAnnouncement actualState.
		stream 
			<< actualState username
			<< ' has '
			<< (self stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement)
			<< '.'
			<< self hiddenString
		]