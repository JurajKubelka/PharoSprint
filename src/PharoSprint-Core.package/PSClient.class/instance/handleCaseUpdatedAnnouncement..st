announcement handling
handleCaseUpdatedAnnouncement: aPSCaseUpdatedAnnouncement 
	ignorePSCaseUpdatedAnnouncement ifTrue: [ ^ self ].
	self announcer announce: aPSCaseUpdatedAnnouncement