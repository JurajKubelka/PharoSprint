building
composePresentationIn: browser
	browser fastList
		display: [ :aSprint | | col | 
			col := aSprint takenAndOpen sorted: [ :a :b | (aSprint isMyState: a) ].
			col ];
		format: [ :aCase :aSprint | self threeLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject take: aSprint user.
			true ]
		