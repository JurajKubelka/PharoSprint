tests
testCasesUpdatedAnnouncement
	| case1 case2 announcements |
	announcements := OrderedCollection new.
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	client announcer when: Announcement do: [ :ann | announcements add: ann ].
	case1 := self newFogBugzCaseOne.
	client fogbugz cases updateCases: { case1 }.
	case2 := self newFogBugzCaseOne.
	case2 lastModification: case1 lastModification + 1 hour. 
	client fogbugz cases updateCases: { case2 }.
	self assert: announcements size equals: 2.
	self assert: announcements first newCases size equals: 1.
	self assert: announcements first updatedCases size equals: 0.
	self assert: announcements second newCases size equals: 0.
	self assert: announcements second updatedCases size equals: 1.
	