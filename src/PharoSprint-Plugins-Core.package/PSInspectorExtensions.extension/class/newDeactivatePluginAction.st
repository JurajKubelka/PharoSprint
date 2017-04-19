*PharoSprint-Plugins-Core
newDeactivatePluginAction
	^ GLMGenericAction new 
		action: [ :presentation :object | | plugin |
			plugin := presentation selection.
			plugin ifNotNil: [ 
				plugin deactivate. 
				presentation update ] ];
		title: 'Deactivate Plugin' translated;
		condition: [ :presentation :object | 
				presentation selection notNil and: [ 
					presentation selection isActive ] ];
		yourself