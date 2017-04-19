tests
testIsActive5
	"do not deactivate if not active"
	plugin := self newPlugin.
	plugin deactivate.
	self deny: plugin isActive