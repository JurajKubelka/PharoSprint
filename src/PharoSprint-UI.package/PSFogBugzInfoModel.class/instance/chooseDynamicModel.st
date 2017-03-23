private
chooseDynamicModel
	^ fogbugz
		ifNil: [ 
			labelModel
				label: self labelInitializeFogBugzClient;
				yourself ]
		ifNotNil: [ 
			fogbugz isLoggedIn
				ifTrue: [ loggedModel ]
				ifFalse: [ loginModel ] ]