menu actions
newSortReviewNeededFirstAction
	"Display Review Needed first, then the others"
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | 
					(a isReviewNeeded not and: [ b isReviewNeeded not ]) 
						ifTrue: [ a status < b status ]
						ifFalse: [ a isReviewNeeded or: [ b isReviewNeeded not ] ] ].
				list update ];
		iconNamed: #glamorousUp;
		title: 'Review needed cases first';
		help: 'Display review needed cases on the top of the list';
		category: 'Sort';
		showTitle;
		yourself
