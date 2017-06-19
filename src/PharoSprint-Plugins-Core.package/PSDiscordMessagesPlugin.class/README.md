I represent a PharoSprint plugin.
I know how to find Discord messages related to a particular PSCase. 

I am used by a UI that adds an extra menu item for a selected PSCase instance, and executes my #openDiscordMessagesForCase: method when a user clicks on the menu item. 

I then open a list of messages from a Discord server. 
Currently, I just inspect a PSClient isntance where the user can see all servers, channels, and messages. It should be improved for sure :-)

Public API and Key Messages

- discordClient: - set a Discord client used for receiving messages
- openDiscordMessagesForCase: - open a dialog with messages relevant to a PSCase.

Internal Representation and Key Implementation Points.

    Instance Variables
	discordClient:		<DSClient>
