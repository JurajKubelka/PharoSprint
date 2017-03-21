accessing
stateFor: aFogBugzCase 
	aFogBugzCase hasPharoSprintTag ifTrue: [ ^ PSProposedCaseState default ].
	^ PSUndefinedCaseState default