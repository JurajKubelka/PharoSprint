world menu
menuPharoSprintDebugModeOn: aBuilder
	"Add a custom menu item to the world menu"
	"self setDebugMode."
	<worldMenu>
	self debugMode ifFalse: [ ^ self ]. 
	(aBuilder item: #'Pharo Sprint Detailed')
		order: 100;
		icon: #glamorousInspect asIcon;
		parent: #Collaboration;
		action: [ self openDetailedPublic ].
	(aBuilder item: #'Public App only with testing Discord plugin')
		order: 120;
		icon: PSIcons discord;
		parent: #Collaboration;
		help: 'Open Pharo Sprint only with one active plugin';
		action: [ self openPublicWithTestingDiscordChannelOnly ].
	(aBuilder item: #'Unset expert mode')
		order: 200;
		icon: #glamorousBug asIcon;
		parent: #Collaboration;
		action: [ self unsetDebugMode ].