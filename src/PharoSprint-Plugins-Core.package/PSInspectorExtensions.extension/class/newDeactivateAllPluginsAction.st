*PharoSprint-Plugins-Core
newDeactivateAllPluginsAction
	^ GLMGenericAction new 
		action: [ :presentation :object | 
			object plugins do: #deactivate.
			presentation update ];
		title: 'Deactivate All Plugins' translated;
		yourself