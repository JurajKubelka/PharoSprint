tests
testDiscordMessagesPlugin
	"Check that the client does NOT respond an instance by default.
	It should not return an inactive plugin."
	self assert: self newClient discordMessagesPlugin isNil