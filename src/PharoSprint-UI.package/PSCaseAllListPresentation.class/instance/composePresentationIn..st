building
composePresentationIn: browser
	^ browser fastList 
		display: [ :aSprint | | col | 
			col := aSprint undefinedAndOpen.
			col ];
		format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
		addSelectionAction: self newProposeCaseAction;
		addSelectionAction: self newTakeCaseAction;
		with: [ :list | self addSortActions: list ];
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
			aSprint := list entity.
			draggedObject all: aSprint user.
			true ]
