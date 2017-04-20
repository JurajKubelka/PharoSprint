tests
testPublicWithTestingDiscordChannelOnly
	client := PSMQTTClient publicWithTestingDiscordChannelOnly.
	self assert: client plugins size equals: 1.
	self assert: client plugins first class equals: PSDiscordWebhookPlugin.
	self assert: client plugins first url asString equals: PSDiscordWebhookPlugin testingWebhookUrl.