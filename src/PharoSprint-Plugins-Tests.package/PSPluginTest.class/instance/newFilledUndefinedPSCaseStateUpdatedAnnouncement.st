instance creation
newFilledUndefinedPSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: self newFilledUndefinedState;
			yourself.