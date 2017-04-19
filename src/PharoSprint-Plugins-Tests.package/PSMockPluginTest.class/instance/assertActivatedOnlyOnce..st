asserting
assertActivatedOnlyOnce: aPSClient 
	| activations |
	activations := results select: [ :each | each = #activation ].
	self assert: activations size equals: 1.