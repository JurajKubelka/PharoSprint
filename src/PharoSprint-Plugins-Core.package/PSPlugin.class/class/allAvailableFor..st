accessing
allAvailableFor: aPSClient 
	"Return all available plugins for aPSClient."
	^ self allSubclasses 
		flatCollect: [ :eachClass | eachClass allAvailableInstancesFor: aPSClient ]