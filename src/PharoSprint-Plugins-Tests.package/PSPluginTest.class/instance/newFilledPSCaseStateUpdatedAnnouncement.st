instance creation
newFilledPSCaseStateUpdatedAnnouncement
	^ self newPSCaseStateUpdatedAnnouncement
			case: self newCaseOne;
			actualState: (self newTakenState user: (self newUser name: self username; yourself); yourself);
			yourself.