tests
testNumberOfRegistrations2
	registry := self newDiscordCommandRegistrations.
	command := self newCommand client: self newClient; yourself.
	registry addCommand: command.
	self assert: registry numberOfRegistrations equals: 1.
	