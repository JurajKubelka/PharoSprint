private
messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return message that is send to a Discord channel."
	^ String streamContents: [ :stream | | actualState |
		actualState := aPSCaseStateUpdatedAnnouncement actualState.
		stream 
			<< actualState username
			<< ' has '
			<< actualState stateId asString
			<< ' case ['.
		aPSCaseStateUpdatedAnnouncement case printOn: stream.
		stream << ']('.
		(PharoIssue number: aPSCaseStateUpdatedAnnouncement case id) trackerUrl printOn: stream.
		stream << $)
		]