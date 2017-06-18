execution
preExecution: aDSMessageCommand 
	| label list cases |
	label := LabelModel new label: 'Related Case: '; yourself.
	cases := self client takenAndOpen, self client proposedAndOpen, self client undefinedAndOpen.
	list := DropListModel new items: cases; yourself.
	aDSMessageCommand
		addSpecModel: label to: #pharoSprintCaseLabel;
		addSpecModel: list to: #pharoSprintCaseList;
		extendLayout: [ :specLayout :model :command | 
			specLayout 
				newRow: [ :row | 
					row add: #pharoSprintCaseLabel width: 70; add: #pharoSprintCaseList ]
				height: model class inputTextHeight ].