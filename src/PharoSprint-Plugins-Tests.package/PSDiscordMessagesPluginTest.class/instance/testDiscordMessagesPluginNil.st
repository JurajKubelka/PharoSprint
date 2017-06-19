tests
testDiscordMessagesPluginNil
	"Check that the client responds nil by default."
	plugin := self newClient disablePlugins; discordMessagesPlugin.
	self assert: plugin isNil