initialization widgets
initializeWidgets
	usernameLabel := self newLabel.
	usernameLabel label: 'Username'.
	usernameField := self newTextInput.
	usernameField autoAccept: true; ghostText: 'pharo@fogbugz.com'.
	passwordLabel := self newLabel.
	passwordLabel label: 'Password'; yourself.
	passwordField := self newTextInput.
	passwordField beEncrypted; autoAccept: true; ghostText: '******'.
	infoLabel := self newLabel.
	self focusOrder add: usernameField; add: passwordField