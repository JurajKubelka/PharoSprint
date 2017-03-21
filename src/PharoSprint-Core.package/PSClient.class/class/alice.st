examples
alice
	<gtExample>
	^ self new 
		user: PSUser alice;
		fogbugz: FogBugzClient threeCases;
		yourself