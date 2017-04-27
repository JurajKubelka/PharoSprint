menu actions
newCopyCaseIdToClipboardAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
			list selection
				ifNotNil: [ :aCase | 
					self copyCaseIdToClipboard: aCase ] ];
		iconName: #smallCopy;
		title: 'Copy case ID' translated;
		help: 'Copy case ID to the clipboard';
		showTitle;
		yourself