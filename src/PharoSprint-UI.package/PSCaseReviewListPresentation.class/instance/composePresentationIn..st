building
composePresentationIn: browser
	^ browser fastList 
			display: [ :aSprint | | col | 
				col := aSprint reviewNeededAndOpen.
				col ];
			format: [ :aCase :aSprint | self twoLineRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
			enableFilter;
			selectionAct: [ :list :sprint | 
					list selection ifNotNil: [ :aCase | | aSprint |
						aSprint := list entity.
						aCase take: aSprint user ] ] 
				entitled: 'Review case';
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint user.
				true ].