convenience
numberOfRegistrations
	"Return number of registered commands."
	^ mutex critical: [ 
		commands 
			ifNil: [ 0 ] 
			ifNotNil: [ self commands size ] ]