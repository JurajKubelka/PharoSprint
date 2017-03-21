actions
loginToFogBugz
	self fogbugz isLoggedIn ifFalse: [ 
		self fogbugz askForCredentialsIfNecessary.
		self fogbugz login; update. ]
