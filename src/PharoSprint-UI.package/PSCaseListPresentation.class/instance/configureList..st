private - build ui
configureList: aList
	^ aList
		updateOn: PSCaseUpdatedAnnouncement from: [ :client | client announcer ];
		updateOn: PSCasesUpdatedAnnouncement from: [ :client | client announcer ];
		enableFilter: [ :case :pattern | self case: case match: pattern ];
		allowItemDrag: [ :item :list | true ];
		allowDropOnItem: [ :draggedObject :targetItem :list | true ];
		addSelectionAction: self newInspectCaseAction;
		addSelectionAction: self newCopyCaseIdToClipboardAction;
		addSelectionAction: self newOpenCaseInFogBugzWebpageAction;
		addSelectionAction: self newDiscussCaseOnDiscordAction;
		yourself