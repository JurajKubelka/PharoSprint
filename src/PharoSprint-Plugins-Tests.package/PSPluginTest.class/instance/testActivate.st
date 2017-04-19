tests
testActivate
	"Ensure activation happens only once."
	| client |
	plugin := self newPlugin.
	client := self newClient.
	plugin client: client.
	self denyActivationOnClient: client.
	plugin activate.
	self assertActivationOnClient: client.
	plugin activate.
	self assertActivationOnClient: client.
	self assertActivatedOnlyOnce: client.