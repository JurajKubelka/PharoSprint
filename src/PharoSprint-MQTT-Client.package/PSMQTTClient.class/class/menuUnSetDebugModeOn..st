world menu
menuUnSetDebugModeOn: aBuilder
	"Add a custom menu item to the world menu"
	"self setDebugMode."
	<worldMenu>
	self debugMode ifFalse: [ ^ self ]. 
	(aBuilder item: #'Unset expert mode')
		order: 2000;
		icon: #glamorousBug asIcon;
		parent: #Collaboration;
		action: [ self unsetDebugMode ].