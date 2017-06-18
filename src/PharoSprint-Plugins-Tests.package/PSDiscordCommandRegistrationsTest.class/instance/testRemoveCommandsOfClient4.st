tests
testRemoveCommandsOfClient4
	"Command should not be removed."
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	registry addCommand: command.
	registry removeCommandsOfClient: self newClient.
	self assert: registry commands size equals: 1.