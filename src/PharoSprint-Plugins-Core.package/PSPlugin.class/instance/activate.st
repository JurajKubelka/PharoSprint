actions
activate
	self isActive ifTrue: [ ^ self ].
	self activateFor: self client.
	isActive := true.
	