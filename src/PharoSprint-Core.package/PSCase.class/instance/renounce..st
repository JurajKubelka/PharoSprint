actions
renounce: aPSUser
	"Set the case as a proposed.
	Currently, we do not distinquish between propose: and renounce: messages."
	self state: (PSProposedCaseState new user: aPSUser)