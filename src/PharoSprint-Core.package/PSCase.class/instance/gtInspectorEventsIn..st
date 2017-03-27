gt-inspector-extension
gtInspectorEventsIn: composite 
	<gtInspectorPresentationOrder: 1>
	^ (FogBugzInspectorExtensions gtInspectorEventsIn: composite)
			display: [ self events ];
			when: [ self events notEmpty ]
			yourself