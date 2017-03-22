examples
withLoginAndPassword
	<gtExample>
	| dialog |
	dialog := PSFogBugzLoginModel new.
	dialog usernameField text: 'My Login Name'.
	dialog passwordField text: 'My Secret Password'.
	dialog loginBlock: [ :login :password | self inform: login asString, ':', password asString ].
	^ dialog