running
setUp
	super setUp.
	fogbugz := FogBugzClient new.
	model := self newFogBugzInfoModel fogbugz: fogbugz