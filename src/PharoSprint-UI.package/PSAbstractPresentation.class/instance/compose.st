building
compose 
	self with: [ :browser |
		self configurePresentation: browser.
		self composePresentationIn: browser  ]