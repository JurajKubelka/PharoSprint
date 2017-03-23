initialization
initializeWidgets
	infoModel := self newLabel.
	updateButton := self newButton.
	logoutButton := self newButton.
	logoutButton label: 'Logout'; iconName: #logout.
	updateButton label: 'Update'; iconName: #update.
	