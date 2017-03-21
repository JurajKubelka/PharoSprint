private - build ui
twoLineRowFor: aCase sprint: aSprint
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aCase title asStringMorph emphasis: 1; yourself.
			(aCase id asString, ' - ', aCase status asString) asStringMorph. })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself