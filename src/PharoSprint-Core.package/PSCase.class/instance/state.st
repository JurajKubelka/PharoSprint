accessing
state
	^ state ifNil: [ state := PSCaseStateIdentifier default stateFor: self case ]