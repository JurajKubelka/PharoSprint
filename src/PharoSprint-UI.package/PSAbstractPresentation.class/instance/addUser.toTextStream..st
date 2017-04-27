helpers
addUser: aFogBugzUser toTextStream: aTextStream
	"Add username that opens a webpage on click action"
	aTextStream
		withAttributes: (self urlTextAttributesWithUrl: aFogBugzUser activityPageUrl)
		do: [ aTextStream << aFogBugzUser username ]