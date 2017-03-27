tests
testReceiveEmpty
	| contents message |
	user := self newPedro.
	cases := self newCases.
	handler := self newHandler client: self; yourself.
	contents := PSChatCaseState new caseId: self caseId; stateId: self stateId; user: self newAlice; yourself.
	message := MQTTChatMessage contents: contents.
	message author: contents user.
	handler receive: message.
	self assert: cases isEmpty.