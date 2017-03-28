instance creation
newPublishDoneContent
	"it is a message send by testCaseTaken test case"
	^ 'MQTTChatMessage{#id:MQTTChatTimestamp{#id:UUID[''bb572c4831080d0094ea1d1b0da45386''],#timestamp:DateAndTime[''2017-03-28T16:34:28.419783-03:00'']},#author:MQTTChatUser{#id:@3,#name:''Alice''},#contents:PSChatCaseState{#caseId:1,#stateId:#done,#user:@5}}' utf8Encoded 