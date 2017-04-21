building
composePresentationIn: browser
	browser fastList
		display: [ :aSprint | | col | 
			col := aSprint takenAndOpen sorted: [ :a :b | (aSprint isMyState: a state) ].
			col ];
		format: [ :aCase :aSprint | self threeLineRowFor: aCase sprint: aSprint ];
		rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
		addSelectionAction: self newCommitChanges;
		addSelectionAction: self newPutCaseBackToProposedAction;
		addSelectionAction: self newDoneCaseAction;
		with: [ :list | self configureList: list ];
		dropOnItem: [ :draggedObject :targetItem :list | | aPSClient |
			aPSClient := list entity.
			draggedObject take: aPSClient user.
			true ]
		