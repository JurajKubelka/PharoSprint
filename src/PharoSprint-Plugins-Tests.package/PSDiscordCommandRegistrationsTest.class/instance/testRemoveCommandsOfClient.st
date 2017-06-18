tests
testRemoveCommandsOfClient
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	registry addCommand: command.
	registry removeCommandsOfClient: command client.
	self assert: registry commands size equals: 0.