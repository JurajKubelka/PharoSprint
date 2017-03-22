api
login: loginString password: passwordString
	self fogbugz isLoggedIn ifTrue: [ ^ self ].
	labelModel label: 'Logging to FogBugz as ', loginString asString, '...'.
	self updateDynamicModelWith: labelModel.
	self fogbugz login: loginString password: passwordString  