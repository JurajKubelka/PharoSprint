instance creation
newWithDefaultRegistry
	^ self new
		registry: PSDiscordCommandRegistrations default;
		yourself