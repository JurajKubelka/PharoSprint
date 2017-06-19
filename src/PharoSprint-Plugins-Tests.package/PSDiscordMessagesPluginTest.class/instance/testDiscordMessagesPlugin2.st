tests
testDiscordMessagesPlugin2
	"Check that the client responds an instance by default."
	| client |
	client := self newClient.
	plugin := client plugins detect: [ :eachPlugin | eachPlugin isDiscordMessagesPlugin ].
	self assert: plugin notNil.
	plugin activate.
	self assert: client discordMessagesPlugin notNil.
	self assert: client discordMessagesPlugin isDiscordMessagesPlugin