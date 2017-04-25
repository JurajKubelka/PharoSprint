specs
defaultSpec
  <spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column
			newRow: [ :row |
				row 
					add: #messageModel;
					add: #buttonModel width: self buttonModelTextWidth ]
			height: self inputTextHeight ];
		yourself