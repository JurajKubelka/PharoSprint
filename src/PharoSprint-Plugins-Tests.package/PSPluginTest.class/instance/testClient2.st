tests
testClient2
	"Ensure deactivation on a client change."
	| client client2 |
	plugin := self newPlugin.
	client := self newClient.
	plugin client: client.
	self denyActivationOnClient: client.
	plugin activate.
	self assertActivationOnClient: client.
	client2 := self newClient.
	plugin client: client2.
	self assert: plugin client == client2.
	self denyActivationOnClient: client.
	self denyActivationOnClient: client2.
