accessing
state: aPSCaseState 
	state := aPSCaseState.
	self announce: (PSCaseUpdatedAnnouncement new case: self; yourself)