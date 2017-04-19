private
messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return message that is sent to a Discord channel."
	^ String streamContents: [ :stream | | actualState |
		actualState := aPSCaseStateUpdatedAnnouncement actualState.
		stream 
			<< actualState username
			<< ' has '.
		self stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement stream: stream.
		stream 
			<< ', *using [Pharo Sprint App](' << self homepageUrl << ').*'
		]