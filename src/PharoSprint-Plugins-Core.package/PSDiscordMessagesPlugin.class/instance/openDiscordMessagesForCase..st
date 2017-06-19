actions
openDiscordMessagesForCase: aPSCase 
	"We should define somehow a default server and default channel,
	where to search for messages.
	For now, I just inspect the client instance."
	self discordClient inspect 
	