menu actions
newSortByTitleAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | a title asLowercase < b title asLowercase ].
				list update ];
		iconNamed: #glamorousUp;
		title: 'Sort by title';
		help: 'Sort cases by title';
		category: 'Sort';
		showTitle;
		yourself
