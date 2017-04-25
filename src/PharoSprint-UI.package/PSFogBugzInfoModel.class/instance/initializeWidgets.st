initialization
initializeWidgets
	labelModel := self newLabel.
	loginModel := PSFogBugzLoginModel new.
	loggedModel := PSFogBugzLoggedModel new.
	messageModel := PSFogBugzMessageModel new.
	dynamicModel := self chooseDynamicModel.