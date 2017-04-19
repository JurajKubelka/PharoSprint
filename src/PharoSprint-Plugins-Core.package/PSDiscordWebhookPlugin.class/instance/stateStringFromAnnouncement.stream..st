private
stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement stream: aWriteStream
	"Return state message that is displayed to users."
	| pattern message |
	pattern := self stateStringDictionary
		at: (aPSCaseStateUpdatedAnnouncement previousStateId asString, '_', 
			aPSCaseStateUpdatedAnnouncement actualStateId asString)
		ifAbsent: [ '**', aPSCaseStateUpdatedAnnouncement actualStateId asString, '** the case {1}' ].
	message := pattern format: { 	String streamContents: [ :stream |
		stream << '['.
		aPSCaseStateUpdatedAnnouncement case printOn: stream.
		stream << ']('.
		(PharoIssue number: aPSCaseStateUpdatedAnnouncement case id) trackerUrl printOn: stream.
		stream << ')' ] }.
	aWriteStream << message.