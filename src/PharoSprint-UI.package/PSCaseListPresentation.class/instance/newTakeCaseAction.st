menu actions
newTakeCaseAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | | aSprint |
					aSprint := list entity.
					aCase take: aSprint user ] ];
		title: 'Take case';
		help: 'Let''s take the case and find out solution!';
		iconName: #glamorousRight;
		showTitle;
		yourself
