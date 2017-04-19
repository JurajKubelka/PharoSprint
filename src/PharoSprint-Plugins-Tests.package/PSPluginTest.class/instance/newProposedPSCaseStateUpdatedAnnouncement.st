instance creation
newProposedPSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: self newFilledProposedState;
			yourself.