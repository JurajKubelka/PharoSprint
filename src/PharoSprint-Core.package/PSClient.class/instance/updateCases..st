public
updateCases: collectionOfFogBugzCases 
	^ collectionOfFogBugzCases collect: [ :fogBugzCase | | sprintCase |
		sprintCase := self cases detect: [ :eachSprintCase | eachSprintCase id = fogBugzCase id ].
		sprintCase case: fogBugzCase ]