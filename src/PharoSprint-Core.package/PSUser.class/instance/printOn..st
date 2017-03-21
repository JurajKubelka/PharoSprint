printing
printOn: aStream
	aStream << 'User: '.
	name 
		ifNotNil: [ :aString | aStream << aString ]
		ifNil: [ aStream << 'nameless' ]