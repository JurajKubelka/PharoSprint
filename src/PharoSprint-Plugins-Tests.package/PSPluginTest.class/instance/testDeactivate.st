tests
testDeactivate
	"Ensure deactivation happens only once."
	| client |
	plugin := self newPlugin.
	client := self newClient.
	plugin client: client.
	self denyActivationOnClient: client.
	plugin activate.
	self assertActivationOnClient: client.
	plugin deactivate.
	self denyActivationOnClient: client.
	plugin deactivate.
	self denyActivationOnClient: client.
	self assertDeactivatedOnlyOnce: client.