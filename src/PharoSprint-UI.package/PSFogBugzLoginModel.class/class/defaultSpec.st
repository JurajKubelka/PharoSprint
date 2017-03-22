specs
defaultSpec
  <spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column
			newRow: [ :row |
				row 
	              add: #usernameLabel width: 80; 
	              add: #usernameField width: self inputTextWidth;
	              add: #passwordLabel width: 80; 
	              add: #passwordField width: self inputTextWidth ]
			height: self inputTextHeight;
			newRow: [ :row | row add: #infoLabel ] height: self inputTextHeight ]
		yourself