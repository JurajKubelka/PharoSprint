actions
copyCaseIdToClipboard: aCase
	Clipboard clipboardText: aCase id asString.
	self inform: 'The case id ', aCase id asString, ' has been pasted into your clipboard'.