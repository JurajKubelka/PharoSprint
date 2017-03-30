updating
updateCaseState: aPSCase 
	mutex critical: [ self rawUpdateCaseState: aPSCase ]