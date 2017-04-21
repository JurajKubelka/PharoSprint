actions
openSliceMakerFor: aPSCase 
	| slicer |
	slicer := MCSliceMaker new.
	[ slicer info issueNumber: aPSCase id ]
		forkAt: Processor userBackgroundPriority 
		named: 'PharoIssue Retrieve Case Number ', aPSCase id asString.
	^ slicer window open.