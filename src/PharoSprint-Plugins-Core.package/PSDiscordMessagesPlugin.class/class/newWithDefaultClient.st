instance creation
newWithDefaultClient
	^ self new 
		discordClient: DSClient default;
		yourself