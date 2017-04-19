actions
deactivate
	self isActive ifFalse: [ ^ self ].
	self deactivateFor: self client.
	isActive := false.
	