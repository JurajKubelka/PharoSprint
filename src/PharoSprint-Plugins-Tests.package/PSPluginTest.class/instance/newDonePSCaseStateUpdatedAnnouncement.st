instance creation
newDonePSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: self newFilledDoneState;
			yourself.