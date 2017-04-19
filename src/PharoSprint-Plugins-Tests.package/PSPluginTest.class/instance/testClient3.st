tests
testClient3
	"Ensure that setter is ignored on the same object"
	| client |
	plugin := self newPlugin.
	client := self newClient.
	plugin client: client.
	plugin activate.
	plugin client: client.
	self assert: plugin client == client.
	self assertActivationOnClient: client.