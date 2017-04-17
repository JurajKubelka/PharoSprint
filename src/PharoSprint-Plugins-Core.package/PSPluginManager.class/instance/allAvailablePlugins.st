accessing
allAvailablePlugins
	"Return instances of all available plugins for a particular client."
	^ (PSPlugin allAvailableFor: client) 
			collect: #new 
			as: Array