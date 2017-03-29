world menu
menuPharoSprintOn: aBuilder
	"Add a custom menu item to the world menu"
	<worldMenu>
	(aBuilder item: #'Pharo Sprint')
		order: 10;
		icon: #glamorousInspect asIcon;
		parent: #Collaboration;
		action: [ self openPublic ]