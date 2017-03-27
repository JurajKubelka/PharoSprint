tests
testHandleCaseUpdatedAnnouncement
	| case1 case2 announcements |
	announcements := OrderedCollection new.
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	client announcer when: Announcement do: [ :ann | announcements add: ann ].
	case1 := self newCaseOne.
	client fogbugz cases updateCases: { case1 }.
	case2 := client cases first.
	case2 state: (PSTakenCaseState user: client user).
	self assert: announcements size equals: 2.
	self assert: announcements first class equals: PSCasesUpdatedAnnouncement.
	self assert: announcements second class equals: PSCaseStateUpdatedAnnouncement.
	self assert: announcements second case equals: case2.
	