accessing
fogbugzActivityPageUrl
	"Return FogBugz activity page URL of the authenticated user; nil otherwise."
	^ self fogbugzUser ifNotNil: #activityPageUrl