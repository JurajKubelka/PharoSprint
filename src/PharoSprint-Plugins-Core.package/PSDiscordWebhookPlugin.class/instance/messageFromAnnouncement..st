private
messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Return message that is sent to a Discord channel."
	^ String streamContents: [ :stream | | actualState activityPageUrl |
		actualState := aPSCaseStateUpdatedAnnouncement actualState.
		activityPageUrl := self client fogbugzActivityPageUrl.
		activityPageUrl 
			ifNotNil: [ 
				stream << $[ << actualState username << '](' << activityPageUrl asString << $) ]
			ifNil: [ stream << actualState username ].
		stream << ' has '.
		self stateStringFromAnnouncement: aPSCaseStateUpdatedAnnouncement stream: stream.
		stream 
			<< ', *using [Pharo Sprint App](' << self homepageUrl << ').*'
		]