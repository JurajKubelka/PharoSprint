accessing
fogbugzUser
	"Return authenticated user."
	^ self fogbugz ifNotNil: #authenticatedUser