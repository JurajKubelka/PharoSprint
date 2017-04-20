menu actions
newPutCaseBackToProposedAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase renounce: aSprint user ] ];
		title: 'Put it back to proposed';
		help: 'Put the case back to proposed list';
		iconName: #glamorousUndo;
		showTitle;
		yourself
