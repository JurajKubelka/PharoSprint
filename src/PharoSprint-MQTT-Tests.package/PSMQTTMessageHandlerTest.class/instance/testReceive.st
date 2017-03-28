tests
testReceive
	| contents message case |
	user := self newPedro.
	cases := self newCases.
	case := self newCase.
	case case id: self caseId.
	cases add: case.
	handler := self newHandler client: self; yourself.
	contents := PSChatCaseState new caseId: self caseId; stateId: self stateId; user: self newAlice; yourself.
	message := MQTTChatMessage contents: contents.
	message author: contents user.
	messages add: message.
	handler receive: message.
	self assert: cases size equals: 1.
	self assert: cases first state stateId equals: self stateId.
	self assert: cases first state user equals: contents user.
	