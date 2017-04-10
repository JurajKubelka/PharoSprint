building
composePresentationIn: browser
	^ browser fastList 
		display: [ :aSprint | | col | 
			col := aSprint undefinedAndOpen.
			col ];
		format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
		enableFilter: [ :case :pattern | self case: case match: pattern ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase propose: aSprint user ] ] 
			entitled: 'Propose case';
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase take: aSprint user ] ] 
			entitled: 'Take case';
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject renounce: aSprint user.
			true ]
