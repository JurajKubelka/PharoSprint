accessing
plugins
	^ plugins ifNil: [ plugins := self allAvailablePlugins ]