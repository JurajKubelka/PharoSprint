tests
testDiscordClient
	| discordClient |
	plugin := self newPlugin.
	discordClient := self newDiscordClient.
	plugin discordClient: discordClient.
	self assert: plugin discordClient == discordClient.