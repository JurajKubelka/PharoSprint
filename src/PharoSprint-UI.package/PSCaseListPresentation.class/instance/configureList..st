private - build ui
configureList: aList
	^ aList
		updateOn: PSCaseUpdatedAnnouncement from: [ :client | client announcer ];
		updateOn: PSCasesUpdatedAnnouncement from: [ :client | client announcer ];
		onChangeOfPort: #strongSelection "double click"
			act: [ :presentation :entity | 
				presentation strongSelection ifNotNil: [ :aCase | self openWebBrowserOnCase: aCase ] ];
		enableFilter: [ :case :pattern | self case: case match: pattern ];
		allowItemDrag: [ :item :list | true ];
		allowDropOnItem: [ :draggedObject :targetItem :list | true ];
		addSelectionAction: self newInspectCaseAction;
		addSelectionAction: self newCopyCaseIdToClipboardAction;
		addSelectionAction: self newOpenCaseInFogBugzWebpageAction;
		addSelectionAction: self newDiscussCaseOnDiscordAction;
		with: [ :theList | self otherExternalListActions: theList ];
		yourself