initialization
initializeWidgets
	labelModel := self newLabel.
	loginModel := PSFogBugzLoginModel new.
	loggedModel := PSFogBugzLoggedModel new.
	dynamicModel := self chooseDynamicModel.