accessing
url
	"Return URL of a Discord Webhook used for publishing in a channel."
	^ url ifNil: [ url := self defaultUrl ]