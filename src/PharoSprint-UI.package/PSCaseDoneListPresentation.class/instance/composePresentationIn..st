building
composePresentationIn: browser
	^ browser fastList
		display: [ :aSprint | | col | 
			col := aSprint doneAndOpen sorted: [ :a :b | (aSprint isMyState: a state) ].
			col ];
		format: [ :aCase :aSprint | self threeLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase take: aSprint user ] ] 
			entitled: 'Put back to taken';
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase renounce: aSprint user ] ] 
			entitled: 'Put back to proposed';
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject finish: aSprint user.
			true ];
		yourself