accessing
commands
	"Return all registered commands.
	Note that you should not use it (manipulate the collection) in a production,
	because two commands could be added at the same time
	and you could obtain inconistent collection (behavior).
	Use #registrations method if you need to obtain registered commands."
	^ commands ifNil: [ commands := self newCollection ]