private - build ui
configureList: aList
	^ aList
		allowItemDrag: [ :item :list | item isGCFogBugCase ];
		allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | aCase inspect ] ] 
			entitled: 'Inspect Case';
		yourself