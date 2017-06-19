private
allAvailableInstancesFor: aPSClient
	"Return one instance of me that should be used for aPSClient."
	^ Array with: self newWithDefaultClient