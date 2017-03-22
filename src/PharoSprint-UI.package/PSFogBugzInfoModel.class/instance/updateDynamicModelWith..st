private
updateDynamicModelWith: newModel 
	dynamicModel == newModel ifTrue: [ ^ self ].
	dynamicModel := newModel.
	self updateDynamicModel.