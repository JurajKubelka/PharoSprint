private - build ui
addSortActions: aList
	"All actions should be in 'Sort' category."
	^ aList
		addSelectionAction: self newSortNewCasesFirst;
		addSelectionAction: self newSortOldCasesFirst;
		addSelectionAction: self newSortInvolvedCasesFirstAction;
		addSelectionAction: self newSortRecentlyEditedCasesFirstAction;
		addSelectionAction: self newSortReviewNeededFirstAction;
		addSelectionAction: self newSortByTitleAction;
		yourself