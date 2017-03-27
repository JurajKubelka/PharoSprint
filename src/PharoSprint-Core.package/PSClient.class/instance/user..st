accessing
user: aPSUser 
	user := aPSUser.
	chat ifNotNil: [ :instance | instance user: aPSUser ].
	