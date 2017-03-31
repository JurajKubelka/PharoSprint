printing
printOn: aStream
	case 
		ifNil: [ super printOn: aStream ]
		ifNotNil: [ :aCase | 
			aCase printOn: aStream ] 
	