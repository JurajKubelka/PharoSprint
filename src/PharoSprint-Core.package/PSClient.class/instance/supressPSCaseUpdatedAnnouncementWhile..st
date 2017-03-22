private
supressPSCaseUpdatedAnnouncementWhile: aBlockClosure 
	[ ignorePSCaseUpdatedAnnouncement := true.
		aBlockClosure value ] ensure: [ ignorePSCaseUpdatedAnnouncement := false ]