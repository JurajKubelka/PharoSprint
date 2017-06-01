menu actions
newAllCaseAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase all: aSprint user ] ];
		title: 'Put back to all';
		help: 'Put the case back to the all list';
		iconName: #glamorousRemove;
		showTitle;
		yourself