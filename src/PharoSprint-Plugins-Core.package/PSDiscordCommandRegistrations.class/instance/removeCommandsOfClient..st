removing
removeCommandsOfClient: aPSClient 
	"Remove commands of the same client."
	^ mutex critical: [ 
		self commands removeAllSuchThat: [ :eachCommand |
			eachCommand client == aPSClient ] ]