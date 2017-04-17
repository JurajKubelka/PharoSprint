running
setUp
	super setUp.
	manager := self newManager.
	manager client: self.
	