accessing
registrations
	"Return all registered commands.
	Note that this is a copy of the registered commands."
	^ mutex critical: [ self commands copy ]