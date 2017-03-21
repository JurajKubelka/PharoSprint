private - build ui
rowForEvent: aFogBugzEvent case: aGCFogBugzCase 
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aFogBugzEvent description asStringMorph emphasis: 1; yourself. 
			aFogBugzEvent comment asStringMorph.
			aFogBugzEvent user username asStringMorph })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself