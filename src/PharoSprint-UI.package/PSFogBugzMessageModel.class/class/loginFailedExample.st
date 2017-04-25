examples
loginFailedExample
	<gtExample>
	| dialog |
	dialog := PSFogBugzMessageModel new.
	dialog info: 'The login failed.'.
	dialog acceptBlock: [ self inform: 'Button action!' ].
	^ dialog