instance creation
newWithTestingWebhookUrl
	"Create instance with Discord Testing Webhook URL"
	^ self new url: self testingWebhookUrl; yourself