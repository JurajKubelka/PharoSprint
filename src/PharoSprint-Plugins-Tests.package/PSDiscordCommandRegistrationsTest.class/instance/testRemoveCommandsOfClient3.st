tests
testRemoveCommandsOfClient3
	"All commands should be removed."
	| commandTwo |
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	commandTwo := self newCommand client: command client; yourself.
	registry addCommand: command.
	registry addCommand: commandTwo.
	registry removeCommandsOfClient: command client.
	self assert: registry commands size equals: 0.
