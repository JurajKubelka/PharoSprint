building
composePresentationIn: browser
	^ browser fastList 
			display: [ :aSprint | | col | 
				col := aSprint proposedAndOpen.
				col ];
			format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
			enableFilter;
			addSelectionAction: self newTakeCaseAction;
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint user.
				true ].