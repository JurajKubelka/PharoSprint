accessing
state: aPSCaseState 
	| previousState |
	previousState := state.
	state := aPSCaseState.
	self announce: (PSCaseStateUpdatedAnnouncement new 
		case: self; previousState: previousState; actualState: aPSCaseState; yourself)