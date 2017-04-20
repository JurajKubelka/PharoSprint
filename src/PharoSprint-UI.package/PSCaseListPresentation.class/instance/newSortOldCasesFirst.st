menu actions
newSortOldCasesFirst
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | a dateOpened < b dateOpened ].
				list update ];
		iconNamed: #glamorousUp;
		title: 'Old cases first';
		help: 'Display old cases on the top of the list';
		category: 'Sort';
		showTitle;
		yourself
