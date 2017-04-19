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
	(aBuilder item: #'Unset expert mode')
		order: 110;
		icon: #glamorousBug asIcon;
		parent: #Collaboration;
		action: [ self unsetDebugMode ]