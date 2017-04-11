menu actions
inspectCaseAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | aCase inspect ] ];
		iconName: #glamorousInspect;
		title: 'See details'; 
		help: 'Browse case details';
		showTitle;
		yourself