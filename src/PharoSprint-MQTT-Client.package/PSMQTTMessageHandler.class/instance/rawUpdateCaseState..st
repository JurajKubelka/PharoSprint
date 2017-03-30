private
rawUpdateCaseState: aPSCase 
	client sprintRoomMessages reverseDo: [ :message |
		(message contents isPSChatCaseState and: [ 
			message contents caseId = aPSCase id ])
				ifTrue: [ | state |
					state := PSCaseState fromStateId: message contents stateId.
					state user: message contents user.
					^ aPSCase state: state ] ]