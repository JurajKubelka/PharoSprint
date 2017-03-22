initialization
initializeWidgets
	labelModel := self newLabel.
	loginModel := PSFogBugzLoginModel new.
	loggedModel := PSFogBugzLoggedModel new.
	loginModel
		loginBlock: [ :login :password | self login: login password: password ].
	self setDynamicModel.