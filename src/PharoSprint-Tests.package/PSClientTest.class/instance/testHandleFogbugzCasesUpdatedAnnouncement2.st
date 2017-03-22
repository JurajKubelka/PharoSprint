tests
testHandleFogbugzCasesUpdatedAnnouncement2
	| fogbugz numberOfCases case |
	fogbugz := FogBugzClient allCases.
	client := self newClient fogbugz: fogbugz.
	numberOfCases := client cases size.
	case := self newCaseOne.
	fogbugz cases updateCases: { case }.
	self assert: client cases size equals: numberOfCases + 1.
	self assert: (client cases anySatisfy: [ :eachCase | eachCase case = case ] ).
	