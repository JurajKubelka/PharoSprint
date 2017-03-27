accessing
user
	^ user ifNil: [ user := self newUser ]