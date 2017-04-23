world menu
menuExamplesOn: aBuilder
	"Add a custom menu item to the world menu"
	"self setDebugMode."
	<worldMenu>
	self debugMode ifFalse: [ ^ self ]. 
	(aBuilder item: #'Alice on local MQTT and separate FogBugz')
		order: 500;
		parent: #Collaboration;
		action: [ self openAliceLocal ].
	(aBuilder item: #'Pedro on local MQTT and separate FogBugz')
		order: 510;
		parent: #Collaboration;
		help: 'Open Pharo Sprint only with one active plugin';
		action: [ self openPedroLocal ].
