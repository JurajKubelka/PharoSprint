accessing
pluginManager
	^ pluginManager ifNil: [ pluginManager := self newPluginManager client: self; yourself ]