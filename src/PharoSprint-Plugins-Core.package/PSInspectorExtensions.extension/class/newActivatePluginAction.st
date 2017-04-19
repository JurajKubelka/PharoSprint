*PharoSprint-Plugins-Core
newActivatePluginAction
	^ GLMGenericAction new 
		action: [ :presentation :object | | plugin |
			plugin := presentation selection.
			plugin ifNotNil: [ 
				plugin activate. 
				presentation update ] ];
		title: 'Activate Plugin';
		condition: [ :presentation :object | 
				presentation selection notNil and: [ 
					presentation selection isActive not ] ];
		yourself