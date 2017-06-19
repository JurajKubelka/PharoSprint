accessing
discordMessagesPlugin
	"Return a Discord Message plugin if included and active.
	It is used by UIs."
	^ self plugins 
		detect: [ :eachPlugin | 
			eachPlugin isDiscordMessagesPlugin and: [ eachPlugin isActive ] ] 
		ifNone: nil