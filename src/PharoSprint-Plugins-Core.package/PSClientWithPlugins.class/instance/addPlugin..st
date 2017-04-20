adding
addPlugin: aPSPlugin 
	"Add a plugin to the plugin list.
	Notice, that it does not activate the plugin.
	You have to activate it."
	^ self pluginManager addPlugin: aPSPlugin