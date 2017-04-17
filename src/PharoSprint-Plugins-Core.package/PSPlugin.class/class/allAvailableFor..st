accessing
allAvailableFor: aPSClient 
	"Return all available plugins for aPSClient."
	^ self allSubclasses select: [ :each | each isAvailableFor: aPSClient ]