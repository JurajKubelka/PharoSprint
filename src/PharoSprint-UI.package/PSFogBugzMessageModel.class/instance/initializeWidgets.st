initialization
initializeWidgets
	messageModel := self newTextInput enabled: false; yourself.
	buttonModel := self newButton label: 'OK'; iconName: #ok; yourself.
	self focusOrder add: buttonModel.