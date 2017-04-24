accessing
text
	^ String streamContents: [ :stream |
		stream 
			<< 'Case #'
			<< (self caseId ifNil: [ '<no id>' ])
			<< ' '
			<< (self stateId ifNil: [ '<no state>' ] ifNotNil: #asString)
			<< ' by '
			<< (self user ifNil: [ '<no user>' ] ifNotNil: #name ) ]