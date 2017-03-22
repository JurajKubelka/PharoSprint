private - build ui
threeLineRowFor: aCase sprint: aSprint
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aCase title asStringMorph emphasis: 1; yourself. 
			(aCase id asString, ' - ', aCase status asString) asStringMorph.
			aCase stateUsername asStringMorph 
				emphasis: ((aSprint isMyState: aCase state) ifTrue: [ 1 ] ifFalse: [ 0 ]); 
				yourself })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself