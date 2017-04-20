reflective operations
doesNotUnderstand: aMessage 
	^ self case 
		ifNotNil: [ :aCase | aMessage sendTo: aCase ]
		ifNil: [ super doesNotUnderstand: aMessage ]