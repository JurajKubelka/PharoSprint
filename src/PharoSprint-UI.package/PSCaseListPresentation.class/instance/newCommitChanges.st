menu actions
newCommitChanges
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase |
					self openCommitToolsFor: aCase ] ];
		title: 'Commit changes';
		help: 'Commit changes by producing SLICE';
		iconName: #komitter;
		showTitle;
		yourself