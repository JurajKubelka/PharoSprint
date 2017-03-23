as yet unclassified
gtInspectorInfoIn: composite 
	<gtInspectorPresentationOrder: 0>
	^ composite morph 
		title: [ 'Info' translated ];
		when: [ self case notNil ];
		display: [
			(FogBugzCaseSpecModel on: self case) buildWithSpec ];
		yourself