building
composePresentationIn: browser
	^ browser fastList 
			with: [ :aList | self addFogBugzActions: aList ];
			display: [ :aSprint | | col | 
				col := aSprint proposedAndOpen.
				col ];
			format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				true ].