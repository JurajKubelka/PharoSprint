menu actions
newSortNewCasesFirst
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | a dateOpened > b dateOpened ].
				list update ];
		iconNamed: #glamorousUp;
		title: 'New cases first';
		help: 'Display recently opened cases on the top of the list';
		category: 'Sort';
		showTitle;
		yourself
