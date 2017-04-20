menu actions
newProposeCaseAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase propose: aSprint user ] ];
		title: 'Propose case';
		help: 'Propose case to other developers';
		iconName: #glamorousAdd;
		showTitle;
		yourself