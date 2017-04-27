menu actions
newCopyCaseIdToClipboardAction
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list selection ifNotNil: [ :aCase | 
					Clipboard clipboardText: aCase id asString.
					self inform: 'The case id ', aCase id asString, ' has been pasted into your clipboard' ] ];
		iconName: #smallCopy;
		title: 'Copy case ID'; 
		help: 'Copy case ID to the clipboard';
		showTitle;
		yourself