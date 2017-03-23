initialization
initializePresenter
	super initializePresenter.
	loginModel
		loginBlock: [ :login :password | self login: login password: password ].
	loggedModel
		logoutBlock: [ self logout ];
		updateBlock: [ self update ].
	