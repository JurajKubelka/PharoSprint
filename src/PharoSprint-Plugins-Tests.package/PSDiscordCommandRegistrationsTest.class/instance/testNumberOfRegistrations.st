tests
testNumberOfRegistrations
	registry := self newDiscordCommandRegistrations.
	self assert: registry numberOfRegistrations equals: 0.	