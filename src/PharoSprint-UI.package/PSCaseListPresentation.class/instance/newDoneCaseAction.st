menu actions
newDoneCaseAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase finish: aSprint user ] ];
		title: 'Mark as done';
		help: 'Mark the case as done';
		iconName: #glamorousAccept;
		showTitle;
		yourself