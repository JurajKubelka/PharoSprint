specs
defaultSpec
	<spec: #default>
	^ SpecColumnLayout composed
		newRow: [ :row | 
			row 
				add: #infoModel;
				add: #updateButton width: self logoutButtonWidth;
				add: #logoutButton width: self logoutButtonWidth ] 
		height: self inputTextHeight.