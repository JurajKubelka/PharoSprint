private - build ui
threeLineRowFor: aCase sprint: aSprint
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aCase title asStringMorph emphasis: 1; yourself. 
			(aCase id asString, ' - ', aCase status asString) asStringMorph.
			aCase developer name asStringMorph 
				emphasis: ((aSprint isMyState: aCase) ifTrue: [ 1 ] ifFalse: [ 0 ]); 
				yourself })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself