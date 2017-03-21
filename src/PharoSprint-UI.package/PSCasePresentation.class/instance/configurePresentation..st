building
configurePresentation: browser
	super configurePresentation: browser.
	browser title: [ :aCase | 'Case #', aCase id asString ]