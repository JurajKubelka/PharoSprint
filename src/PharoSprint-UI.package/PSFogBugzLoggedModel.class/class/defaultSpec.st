specs
defaultSpec
	<spec: #default>
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row 
				newColumn: [ :column | column ];
				add: #updateButton width: self logoutButtonWidth;
				add: #logoutButton width: self logoutButtonWidth ] 
		height: self inputTextHeight.