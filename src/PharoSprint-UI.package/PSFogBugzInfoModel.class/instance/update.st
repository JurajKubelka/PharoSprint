api
update
	self fogbugz isLoggedIn ifFalse: [ ^ self ].
	loggedModel updateButton label: 'Updating'; enabled: false.
	self updateDynamicModelWith: loggedModel.
	self fogbugz updateOpenOrRecentlyClosedIssues.