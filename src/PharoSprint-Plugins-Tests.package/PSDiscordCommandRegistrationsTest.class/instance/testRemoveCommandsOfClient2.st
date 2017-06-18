tests
testRemoveCommandsOfClient2
	"Only one command should be removed."
	| commandTwo |
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	commandTwo := self newCommand client: self newClient; yourself.
	registry addCommand: command.
	registry addCommand: commandTwo.
	registry removeCommandsOfClient: command client.
	self assert: registry commands size equals: 1.
	self assert: registry commands first == commandTwo.