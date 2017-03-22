initialization
initializePresenter
	super initializePresenter.
	self bindKeyCombination: Character cr toAction: [ self login ].