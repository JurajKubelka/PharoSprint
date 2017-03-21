building
composePresentationIn: browser
	^ browser fastList 
		display: [ :aSprint | | col | 
			col := aSprint undefinedAndOpen.
			col ];
		format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
		with: [ :list | self configureList: list ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase propose: aSprint developer ] ] 
			entitled: 'Propose for Pharo Sprint';
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject renounce: aSprint developer.
			true ]
