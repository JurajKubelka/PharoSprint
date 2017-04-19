instance creation
newUndefinedPSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: self newUndefinedState;
			yourself.