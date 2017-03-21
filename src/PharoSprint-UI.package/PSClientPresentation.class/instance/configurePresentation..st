building
configurePresentation: browser
	browser 
		title: [ :sprint | sprint username asString, '''s Pharo Sprint Dashboard' ];
		act: [ :presentation | presentation update ] iconName: #glamorousRefresh entitled: 'Update';
		act: [ :presentation :client | client inspect ] iconName: #glamorousInspect entitled: 'Inspect';
		yourself