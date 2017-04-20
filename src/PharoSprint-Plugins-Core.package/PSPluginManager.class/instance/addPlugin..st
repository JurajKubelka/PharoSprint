adding
addPlugin: aPSPlugin 
	"Add a plugin to the plugin list.
	Notice, that it does not activate the plugin.
	You have to activate it."
	plugins ifNil: [ ^ self plugins: (Array with: aPSPlugin); yourself ].
	self plugins: (self plugins copyWith: aPSPlugin).
	^ aPSPlugin