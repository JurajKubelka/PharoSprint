building
composePresentationIn: browser
	browser fastList
		display: [ :aSprint | | col | 
			col := aSprint takenAndOpen sorted: [ :a :b | (aSprint isMyState: a state) ].
			col ];
		format: [ :aCase :aSprint | self threeLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase renounce: aSprint user ] ] 
			entitled: 'Put back to proposed';
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase finish: aSprint user ] ] 
			entitled: 'Mark as done';
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aPSClient |
			aPSClient := list entity.
			draggedObject take: aPSClient user.
			true ]
		