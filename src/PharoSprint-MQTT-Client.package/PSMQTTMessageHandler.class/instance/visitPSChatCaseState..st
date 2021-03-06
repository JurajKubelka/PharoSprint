visiting
visitPSChatCaseState: aPSChatCaseState 
	| case |
	case := self client cases detect: [ :eachCase | eachCase id = aPSChatCaseState caseId ] ifNone: [ ^ self ].
	client sprintRoomMessages reverseDo: [ :message |
		(message contents isPSChatCaseState and: [ 
			message contents caseId = aPSChatCaseState caseId ])
				ifTrue: [ message contents == aPSChatCaseState 
					ifFalse: [ ^ self ]
					ifTrue: [ | state |
						state := PSCaseState fromStateId: aPSChatCaseState stateId.
						state user: aPSChatCaseState user.
						^ case state: state  ] ] ].