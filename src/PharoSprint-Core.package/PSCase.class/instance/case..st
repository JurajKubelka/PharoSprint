accessing
case: aFogBugzCase 
	case := aFogBugzCase.
	self announce: (PSCaseUpdatedAnnouncement new case: self; yourself)