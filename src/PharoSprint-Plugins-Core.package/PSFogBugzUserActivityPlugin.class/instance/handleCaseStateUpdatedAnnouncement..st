announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Publish user activity (proposed/taken/done case) on FogBugz."
	self ifDifferentUser: aPSCaseStateUpdatedAnnouncement actualState user do: [ ^ self ].
	self fogbugz
		saveRichMessage: (self messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement)
		inCase: aPSCaseStateUpdatedAnnouncement fogbugzCase;
		updateCase: aPSCaseStateUpdatedAnnouncement fogbugzCase