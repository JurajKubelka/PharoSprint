asserting
assertDeactivatedOnlyOnce: aPSClient 
	| activations |
	activations := results select: [ :each | each = #deactivation ].
	self assert: activations size equals: 1.