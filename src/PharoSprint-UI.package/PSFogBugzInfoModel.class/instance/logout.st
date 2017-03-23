api
logout
	self fogbugz isLoggedIn ifFalse: [ ^ self ].
	labelModel label: 'Signing off FogBugz...'.
	self updateDynamicModelWith: labelModel.
	self fogbugz logout