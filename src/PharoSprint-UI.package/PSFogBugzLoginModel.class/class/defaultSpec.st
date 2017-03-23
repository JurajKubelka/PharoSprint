specs
defaultSpec
  <spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column
			newRow: [ :row |
				row 
					add: #infoLabel;
					add: #usernameLabel width: self labelTextWidth; 
					add: #usernameField width: self inputTextWidth;
					add: #passwordLabel width: self labelTextWidth; 
					add: #passwordField width: self inputTextWidth ]
			height: self inputTextHeight ];
		yourself