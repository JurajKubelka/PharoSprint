tests
testCaseUpdatedAnnouncement
	| fogbugzCase announcements |
	announcements := OrderedCollection new.
	fogbugzCase := self newFogBugzCase.
	case := self newCase.
	case announcer when: PSCaseUpdatedAnnouncement do: [ :ann | announcements add: ann ].
	case case: fogbugzCase.
	self assert: announcements size equals: 1.
	self assert: announcements first case == case.
	