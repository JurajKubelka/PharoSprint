announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"inform about case state change"
	| contents |
	contents := PSChatCaseState new 
		user: aPSCaseStateUpdatedAnnouncement actualState user;
		caseId: aPSCaseStateUpdatedAnnouncement case id;
		stateId: aPSCaseStateUpdatedAnnouncement actualState stateId.
	self chat sendMessageContents: contents toRoomId: self roomId.