announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"inform about case state change"
	| contents |
	aPSCaseStateUpdatedAnnouncement actualState user = self user ifFalse: [ ^ self ].
	contents := PSChatCaseState new 
		user: aPSCaseStateUpdatedAnnouncement actualState user;
		caseId: aPSCaseStateUpdatedAnnouncement case id;
		stateId: aPSCaseStateUpdatedAnnouncement actualState stateId.
	self chat sendMessageContents: contents toRoomId: self roomId.
	self handleCaseUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement.
	