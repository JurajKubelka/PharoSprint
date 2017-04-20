menu actions
newSortRecentlyEditedCasesFirstAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | a lastModification > b lastModification ].
				list update ];
		iconNamed: #glamorousUp;
		title: 'Recently modified cases first';
		help: 'Display recently opened cases on the top of the list';
		category: 'Sort';
		showTitle;
		yourself
