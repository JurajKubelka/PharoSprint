tests
testHandleFogBugzLoggedInAnnouncement
	| announcements |
	announcements := OrderedCollection new.
	client := self newClient user: self newUser; fogbugz: self newFogBugz; yourself.
	client fogbugz announcer when: Announcement do: [ :ann | announcements add: ann ].
	client fogbugz announce: FogBugzLoggedInAnnouncement.
	self assert: announcements size equals: 1.
	self assert: announcements first class equals: FogBugzLoggedInAnnouncement.