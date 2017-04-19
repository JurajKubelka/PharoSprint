instance creation
newTakenPSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: self newFilledTakenState;
			yourself.