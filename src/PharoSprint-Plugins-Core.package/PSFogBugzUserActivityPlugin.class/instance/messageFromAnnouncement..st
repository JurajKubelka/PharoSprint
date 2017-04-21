private
messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return message that is saved on FogBugz."
	^ String streamContents: [ :stream | | actualState |
		actualState := aPSCaseStateUpdatedAnnouncement actualState.
		stream 
			<< actualState username
			<< ' has '
			<< (self stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement)
			<< ', <i>using <a href="http://bit.ly/SprintWeb" title="Pharo Sprint Homepage">Pharo Sprint App</a></i>.'
			<< self hiddenString
		]