*PharoSprint-Plugins-Core
newActivateAllPluginsAction
	^ GLMGenericAction new 
		action: [ :presentation :object | 
			object plugins do: #activate.
			presentation update ];
		title: 'Activate All Plugins' translated;
		yourself