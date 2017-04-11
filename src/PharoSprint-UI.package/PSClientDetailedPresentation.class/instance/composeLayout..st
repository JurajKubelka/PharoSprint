private - building
composeLayout: aGLMTabulator 
	^ aGLMTabulator
		row: #fogbugz size: PSFogBugzInfoModel extentHeight;
		row: [ :row | row column: #proposedAndAll; column: #taken; column: #done ];
		row: #details;
		yourself