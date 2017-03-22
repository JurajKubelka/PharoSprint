private - build ui
configureList: aList
	^ aList
		updateOn: PSCaseUpdatedAnnouncement from: [ :client | client announcer ];
		updateOn: PSCasesUpdatedAnnouncement from: [ :client | client announcer ];
		allowItemDrag: [ :item :list | true ];
		allowDropOnItem: [ :draggedObject :targetItem :list | true ];
		selectionAct: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | aCase inspect ] ] 
			entitled: 'Inspect Case';
		yourself