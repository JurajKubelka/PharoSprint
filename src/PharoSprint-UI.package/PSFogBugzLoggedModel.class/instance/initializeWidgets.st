initialization
initializeWidgets
	infoModel := self newLabel.
	logoutButton := self newButton.
	infoModel label: 'Incoming information'.
	logoutButton label: 'Logout'; iconName: #logout.