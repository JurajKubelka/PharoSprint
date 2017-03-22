private
setDynamicModel
	fogbugz
		ifNil: [ dynamicModel := labelModel
				label: 'Initialize FogBugz Client';
				yourself ]
		ifNotNil: [ dynamicModel := fogbugz isLoggedIn
				ifTrue: [ loggedModel ]
				ifFalse: [ loginModel ] ]