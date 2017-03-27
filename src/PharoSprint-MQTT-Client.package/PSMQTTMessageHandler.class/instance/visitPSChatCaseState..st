visiting
visitPSChatCaseState: aPSChatCaseState 
	| case state |
	case := self client cases detect: [ :eachCase | eachCase id = aPSChatCaseState caseId ] ifNone: [ ^ self ].
	state := PSCaseState fromStateId: aPSChatCaseState stateId.
	state user: aPSChatCaseState user.
	case state: state. 