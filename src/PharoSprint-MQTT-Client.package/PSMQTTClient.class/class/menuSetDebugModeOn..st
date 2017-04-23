world menu
menuSetDebugModeOn: aBuilder
	"Add a custom menu item to the world menu"
	"self setDebugMode."
	"<worldMenu>"
	self debugMode ifTrue: [ ^ self ]. 
	(aBuilder item: #'Set expert mode')
		order: 110;
		icon: #glamorousBug asIcon;
		parent: #Collaboration;
		help: 'It exposes more actions that permits to debug the application';
		action: [ self setDebugMode ].
