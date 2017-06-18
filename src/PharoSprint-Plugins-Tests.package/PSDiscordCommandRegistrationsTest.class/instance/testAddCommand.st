tests
testAddCommand
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	registry addCommand: command.
	self assert: registry commands size equals: 1.
	self assert: registry commands first == command.
	